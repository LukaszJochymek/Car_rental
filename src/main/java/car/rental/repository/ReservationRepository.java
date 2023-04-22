package car.rental.repository;

import car.rental.model.Opinions;
import car.rental.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}