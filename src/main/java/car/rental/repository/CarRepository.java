package car.rental.repository;

import car.rental.model.Car;
import car.rental.model.CarModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface CarRepository extends JpaRepository<Car, Long> {
    @Query("SELECT c FROM Car c ORDER BY  c.priceOfDay")
    List<Car> findAllGroupByPriceOfDay();
    @Query("SELECT c FROM Car c ORDER BY  c.priceOfDay DESC")
    List<Car> findAllGroupByPriceOfDayDesc();

    @Query("SELECT c FROM Car c WHERE c.availability =  true")
    List<Car> findAllWhereAvailabilityIsTrue();


}
