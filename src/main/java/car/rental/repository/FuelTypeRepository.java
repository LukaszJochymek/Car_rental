package car.rental.repository;

import car.rental.model.CarMark;
import car.rental.model.FuelType;
import org.springframework.data.jpa.repository.JpaRepository;


public interface FuelTypeRepository extends JpaRepository<FuelType, Long> {
}