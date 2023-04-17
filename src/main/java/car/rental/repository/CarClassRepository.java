package car.rental.repository;

import car.rental.model.CarClass;
import car.rental.model.CarMark;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarClassRepository extends JpaRepository<CarClass, Long> {
}