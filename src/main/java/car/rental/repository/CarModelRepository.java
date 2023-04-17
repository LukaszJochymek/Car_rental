package car.rental.repository;

import car.rental.model.CarMark;
import car.rental.model.CarModel;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarModelRepository extends JpaRepository<CarModel, Long> {
}
