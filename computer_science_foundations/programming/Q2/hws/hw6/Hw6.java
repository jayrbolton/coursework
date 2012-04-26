public class Hw6 {

	// 3.3.1
	public static class Seconds {
		private int seconds;
		private static int secday = 8400;
		private static int secyear = 31556926;
		//the following is an average -- should be good enough for this exercise
		private static int secmonth = 2629744;

		public Seconds (int month, int day, int year) {
			seconds = (month-1)*secmonth + (day-1)*secday + (year-1970)*secyear;
		}

		public String toString () {
			return this.seconds + "";
		}
	}
	//it will hit a problem when seconds = 2^31-1 because ints are 32 bit
	//the solution is that this will be far enough in the future that
	//everything will be 64 bit, and we will all live inside space pods

	// 3.3.2
	public static class Location {
		private float latitude, longitude;
		public Location (float ilat, float ilong) {
			latitude = ilat; longitude = ilong;
		}
		public String toString() {
			return latitude + " N, " + longitude + " W";
		}
		public static Location parseLocation(String str) {
			String[] tokens = str.split("[ ]+");
			Location loc = new Location(Float.parseFloat(tokens[0]), Float.parseFloat(tokens[2]));
			return loc;
		}
	}

	// 3.3.6
	/*
	public Vector minus(Vector that) {
		if (this.N != that.N) throw new RuntimeException("Dimensions don't agree");
		Vector c = new Vector(N)
		for (int i = 0; i < N; i++)
			c.data[i] = this.data[i] - that.data[i];
		return c;
	}
	*/

	// 3.3.14
    public static class Rational {
        private int n, d; //numerator and denominator
        private static int imax = Integer.MAX_VALUE;

        public Rational(int numerator, int denominator) {
            if (numerator > imax || denominator > imax)
                throw new RuntimeException("Integer size is too large.");
            if (denominator == 0)
                throw new RuntimeException("Denominator is zero");
            int gcd = gcd(numerator, denominator);
            n = numerator/gcd; d = denominator/gcd;
        }

        public Rational add(Rational b) {
            int tn = this.n * b.d + b.n * this.d;
            int td = this.d * b.d;
            return new Rational(tn, td);
        }

        public Rational subtract(Rational b) {
            int tn = this.n * b.d - b.n * this.d;
            int td = this.d * b.d;
            return new Rational(tn, td);
        }

        public Rational multiply(Rational b) {
            return new Rational(this.n * b.n, this.d * b.d);
        }

        public Rational divide(Rational b) {
            return new Rational(this.n * b.d, this.d * b.n);
        }

        public String toString() {
            return this.n + "/" + this.d;
        }

        private static int gcd(int m, int n) {
            return (n == 0)?m:gcd(n, m % n);
        }

        public static void main(String[] args) {
            //test client
            Rational x, y, z;
            System.out.print("Enter first numerator: ");
            int a = StdIn.readInt();
            System.out.print("Enter first denominator: ");
            int b = StdIn.readInt();
            x = new Rational (a, b);
            System.out.print("Enter second numerator: ");
            int c = StdIn.readInt();
            System.out.println("Enter a second denominator: ");
            int d = StdIn.readInt();
            y = new Rational (c, d);
            z = x.add(y);
            System.out.print(x.toString() + " + " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.subtract(y);
            System.out.print(x.toString() + " - " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.multiply(y);
            System.out.print(x.toString() + " * " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.divide(y);
            System.out.print(x.toString() + " / " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
        }
    } //end Rational class

    //3.4.1
    public static class BouncingBall {

        private double rx, ry; // position
        private double vx, vy; // velocity
        private double radius; // radius

        public BouncingBall() {
            rx = Math.random(); ry = Math.random();
            vx = Math.random()/10; vy = Math.random()/10;
            radius = 0.05;
        }

        public void draw() {
            StdDraw.setXscale(-1.0, 1.0);
            StdDraw.setYscale(-1.0, 1.0);
            // main animation loop
            while (true)  {

                // bounce off wall according to law of elastic collision
                if (Math.abs(rx + vx) > 1.0 - radius) vx = -vx;
                if (Math.abs(ry + vy) > 1.0 - radius) vy = -vy;

                // update position
                rx = rx + vx;
                ry = ry + vy;

                // clear the background
                StdDraw.setPenColor(StdDraw.GRAY);
                StdDraw.filledSquare(0, 0, 1.0);

                // draw ball on the screen
                StdDraw.setPenColor(StdDraw.BLACK);
                StdDraw.filledCircle(rx, ry, radius);

                // display and pause for 20 ms
                StdDraw.show(20);
            }
        }

    }

    // 3.4.4

    public static class Body {
        private Vector r;      // position
        private Vector v;      // velocity
        private double mass;   // mass

        public Body(Vector r, Vector v, double mass) {
            this.r = r;
            this.v = v;
            this.mass = mass;
        }

        public void move(Vector f, double dt) {
            Vector a = f.times(1/mass);
            v = v.plus(a.times(dt));
            r = r.plus(v.times(dt));
        }

        public Vector forceFrom(Body b) {
            Body a = this;
            double G = 6.67e-11;
            Vector delta = b.r.minus(a.r);
            double dist = delta.magnitude();
            double F = (G * a.mass * b.mass) / (dist * dist);
            return delta.direction().times(F);
        }

        public void draw() {
            StdDraw.setPenRadius(0.025);
            StdDraw.point(r.cartesian(0), r.cartesian(1));
        }

    }


    public static class Universe {
        private final double radius; // radius of universe
        private final int N;         // number of bodies
        private final Body[] orbs;   // array of N bodies

        // read universe from standard input
        public Universe() {

            // number of bodies
            N = StdIn.readInt();

            // the set scale for drawing on screen
            radius = StdIn.readDouble();
            StdDraw.setXscale(-radius, +radius);
            StdDraw.setYscale(-radius, +radius);

            // read in the N bodies
            orbs = new Body[N];
            for (int i = 0; i < N; i++) {
                double rx   = StdIn.readDouble();
                double ry   = StdIn.readDouble();
                double vx   = StdIn.readDouble();
                double vy   = StdIn.readDouble();
                double rz   = StdIn.readDouble();
                double vz   = StdIn.readDouble();
                double mass = StdIn.readDouble();
                double[] position = { rx, ry, rz };
                double[] velocity = { vx, vy, vz };
                Vector r = new Vector(position);
                Vector v = new Vector(velocity);
                orbs[i] = new Body(r, v, mass);
            }
        }

        public void increaseTime(double dt) {

            // initialize the forces to zero
            Vector[] f = new Vector[N];
            for (int i = 0; i < N; i++) {
                f[i] = new Vector(new double[3]);
            }

            // compute the forces
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if (i != j) {
                        f[i] = f[i].plus(orbs[i].forceFrom(orbs[j]));
                    }
                }
            }

            // move the bodies
            for (int i = 0; i < N; i++) {
                orbs[i].move(f[i], dt);
            }
        }

        // draw the N bodies
        public void draw() {
            for (int i = 0; i < N; i++) {
                orbs[i].draw();
            }
        }

        // client to simulate a universe
        public static void main(String[] args) {
            Universe newton = new Universe();
            double dt = Double.parseDouble(args[0]);
            while (true) {
                StdDraw.clear();
                newton.increaseTime(dt);
                newton.draw();
                StdDraw.show(10);
            }
        }
    }
    
    //functions that allow us to move points visually in 3d
    private static double scaleZ(double y) { 
        return height * (ymax - y) / (ymax - ymin); 
    }



	public static void main(String[] args) {
	/*
		//3.3.1
		System.out.println(
		    "Enter a date in [M D YYYY] format (eg: 1 14 1999)");
		int userMonth = StdIn.readInt();
		int userDay = StdIn.readInt();
		int userYear = StdIn.readInt();
		Seconds userDate = new Seconds(userMonth, userDay, userYear);
		System.out.println(
		    "Your date in seconds from 1970 is: " + userDate.toString());
		//3.3.2
		System.out.println("Input a location in the form ['LAT N, LONG W']:");
		System.out.println("For example: 25.344 N, 63.5532 W");
		StdIn.readLine();
		String userLoc = StdIn.readLine();
		Location loc = Location.parseLocation(userLoc);
		System.out.println(
		    "Your location, parsed to a data type and then back to string:");
		System.out.println(loc.toString());
	    //3.4.1
	    BouncingBall ball = new BouncingBall();
	    ball.draw();
	*/
	    //3.4.5
	    Universe.main(args);

	}
}
