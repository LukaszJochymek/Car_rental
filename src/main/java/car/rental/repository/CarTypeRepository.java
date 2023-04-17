package car.rental.repository;

import car.rental.model.CarClass;
import car.rental.model.CarType;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarTypeRepository extends JpaRepository<CarType, Long> {
}