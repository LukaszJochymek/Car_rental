package car.rental.repository;

import car.rental.model.Car;
import car.rental.model.Opinions;
import car.rental.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    @Query("SELECT r FROM Reservation r WHERE r.userClient.id = :userId")
    List<Reservation> findAllWhereUserId(@Param("userId") Long userId);

}