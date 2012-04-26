// seats_mutex prevents deadlock
// prevents starvation
// 

void barber() {
  while(true) {
    sem_wait(customer_waiting);
    cut_hair();
    sem_signal(barber_sleeping);
  }
}

void customer() {
  sem_signal(customer_waiting);
  sem_wait(barber_sleeping);
  get_haircut();
  leave();
}

int main() {
  semaphore customer_waiting = 0;
  binary_semaphore barber_sleeping=1;
  parbegin
    barber();
    while(true) customer();
  parend;
  return 0;
}
