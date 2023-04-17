package car.rental.repository;

import car.rental.model.CarMark;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarMarkRepository extends JpaRepository<CarMark, Long> {
}
