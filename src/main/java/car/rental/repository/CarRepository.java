package car.rental.repository;

import car.rental.model.Car;
import car.rental.model.CarModel;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarRepository extends JpaRepository<Car, Long> {
}
