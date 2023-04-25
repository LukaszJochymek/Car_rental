package car.rental.repository;

import car.rental.model.CarClass;
import car.rental.model.ImageCar;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ImageCarRepository extends JpaRepository<ImageCar, Long> {
}