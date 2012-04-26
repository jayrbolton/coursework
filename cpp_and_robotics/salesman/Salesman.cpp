//// j bolton
// traveling salesman problem (variation)


/*Problem:

* There are N cities in the salesman's region and roads connecting them, but not
every pair has a separate road.  

* He starts from home (C0) on a given day and wants to cover every road at least
once.

* However, he can take up to K toll roads which are faster and connect any two 
cities. 

* The length of a toll road is a fixed number L.

* The lengths of each of the roads are read from a file, which consists of 
triples: C1 C2 distance

* Compute the length of the shortest tour */


#include <vector>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
using namespace std;

/* Data Structure:
 * Cities are simply ints
 * Roads contain most of the information, such as where they begin and end,
 * whether it's a toll road, and whether it's been travelled.
 * Countries are simply vectors of cities and roads.
 *
 * Alternatively, Cities could hold vectors of other cities that they are
 * connected to. But this would create redundant data.
 */
class City {

	
	private:

		int label;

	public:

		// null constructor of a city called 0
		City() { 
			label = 0;
		}

		// constructor that lets you specify the label
		City(int l) {
			label = l;
		}

		std::string toString() {
			std::string s;
			std::stringstream out;
			out << label;
			s = out.str();
			return s;
		}
};

class Road {
	
	private:
		
		City begin;
		City end;
		int distance;
		bool toll;
		bool traveled;
	
	public:

		// null constructor where begin and end default to 0
		Road() { }

		Road (City b, City e, int d, bool t) {
			begin = b;
			end = e;
			distance = d;
			toll = t;
		}

		string toString() {
			std::string s = begin.toString() + " " + end.toString() + " ";
			std::stringstream out;
			out << distance;
			s += out.str() + " ";
			if (toll) s+= "true";
			else s+= "false";
			return s;
		}

		bool isToll() { return toll; }
		int getDistance() { return distance; }
};

class Country {
	
	private:

		std::vector<City> cities;
		std::vector<Road> roads;
		int K; // the number of toll roads the salesman is allowed to cross

	public: 

		// null constructor of two empty vectors
		Country() { K = 0; }

		// make a list of cities up to n without any roads
		Country(int n) {
			for (int i = 0; i < n; i++)
				cities.push_back(City(i));
			K = 0;
		}
	
		/*
			Constructor based on external file.

			File format:

			[number of cities]
			[number of toll roads allowed to cross (K)]
			[road begin, road end, weight, toll(0/1)]
			(all separated by spaces and linebreaks)

			For example:

			9
			1
			0 1 100 1
			3 4 600 0
			2 6 800 0
			3 5 550 0
			8 4 100 1
			4 5 150 1
			5 7 700 0
			...
		*/
		Country (std::string filename) {
			std::ifstream infile(filename.c_str());
			// first get number of cities and initialize vector of cities
			int totalCities;
			infile >> totalCities;
			for (int i = 0; i < totalCities; i++)
				cities.push_back(City(i));
			// then get number of allowed toll roads
			infile >> K;
			// then get each road, one at a time
			int begin, end, weight; bool toll;
			int tolltotal = 0; // this will guarantee that K <= total toll roads
			while (infile >> begin && infile >> end
					&& infile >> weight && infile >> toll) {
				if (toll) tolltotal++;
				roads.push_back(Road(begin, end, weight, toll));
			}
			if (K > tolltotal) K = tolltotal; 
		}


		std::string toString() {
			std::string s = "Total cities: ";
			std::stringstream ssout;
			ssout << cities.size();
			s += ssout.get();
			s += "\nMax toll roads allowed to travel: ";
			ssout << K;
			s += ssout.get();
			s += "\nRoads:\n";
			for (std::vector<Road>::iterator i = roads.begin();
					i != roads.end(); i++) {
				s += (*i).toString() + "\n";
			}
			return s;
		}

	// Generates a random country from 2 - 30 cities:
	// Country generate

	// Path solving function
	// Inspired by fleury's algorithm:
	// Before entering the loop, find K toll roads with the least distance
	// Mark the other toll roads as travelled so that they get low priority
	// Loop:
	//  * Find the adjacent road of least weight that does not disconnect
	//  * If it's a toll, check against K
	//  * If all roads disconnnect or have already been travelled
	//    -  then choose the one with least distance
	//  * Mark chosen road as travelled and change salesman's current city
	//  * If it was a toll, decrement K
	//  * Check roads travelled against total roads
	//
	// (This function returns a string showing the solution)

	std::string solve() {
		// Find the Kth least distant toll road 
		// and mark all others greater than it as travelled
		int KthLeast;
		std::vector<Road>::iterator i = roads.begin();
		// put the first K toll roads into leastTolls
	
		while (leastTolls.size() < K) {
			if ((*i).isToll()) {
				leastTolls.push_back(*i);
			}
			i++;
		}
		while (i != roads.end()) {
			if ((*i).isToll()) {
				for (std::vector<Road>::iterator j = leastTolls.begin();
					j != leastTolls.end(); j++) {
					if ((*i).getDistance() < (*j).getDistance()) {
						(*j).traveled = true;
						leastTolls.erase(j);
						leastTolls.insert(i, --j, j);
						break;
					}
					else if ((*i).getDistance() > (*j).getDistance()) {
						(*i).traveled = true;
					// (if they are equal, then leave it)
				}
			}
			i++;
		}
		// now that we have the minimum-distance toll roads,
		// let's mark all the others as travelled
		
		return "yay";
	}
	
};


int main(int argc, char *argv[]) {
	//filename of your country is the first command-line arg
	Country mycountry(argv[1]);
	std::cout << mycountry.toString() << std::endl;
	std::cout << "Solution: " << mycountry.solve() << std::endl;
	return 0;
}
