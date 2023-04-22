package car.rental.repository;

import car.rental.model.FuelType;
import car.rental.model.Opinions;
import org.springframework.data.jpa.repository.JpaRepository;


public interface OpinionsRepository extends JpaRepository<Opinions, Long> {
}