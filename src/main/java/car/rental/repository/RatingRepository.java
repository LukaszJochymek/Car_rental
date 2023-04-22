package car.rental.repository;

import car.rental.model.CarType;
import car.rental.model.Rating;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RatingRepository extends JpaRepository<Rating, Long> {
}