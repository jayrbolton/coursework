
// seats_mutex prevents deadlock
// prevents starvation
// 

void barber() {
  while(true) {
    sem_wait(customer_waiting);
    sem_wait(seats_mutex);
    free_seats++;
    cut_hair();
    sem_signal(barber_sleeping);
    sem_signal(seats_mutex);
  }
}

void customer() {
  sem_wait(seats_mutex);
  if(free_seats > 0) {
    free_seats--;     
    sem_signal(customer_waiting);
    sem_signal(seats_mutex);
    sem_wait(barber_sleeping);
    get_haircut();
  }
  else {
    sem_signal(seats_mutex);
    leave();
  }
}

int main() {
  semaphore customer_waiting = 0;
  binary_semaphore barber_sleeping=1, seats_mutex=1;
  int free_seats = 5;
  // bombard barber with customers
  parbegin
    barber();
    while(true) customer();
  parend;
  return 0;
}
