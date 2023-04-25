package car.rental.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "cars")
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private CarModel CarModel;

    private int yearOfProduction;
    @OneToOne
    private CarType CarType;
    @OneToOne
    private CarClass CarClass;
    @OneToOne
    private FuelType fuelType;
    private BigDecimal priceOfDay;
    private String engineCapacity;
    private Boolean availability;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate overviewDate;
    private String description;

    @OneToOne
    private ImageCar imageCar;

    @PrePersist
    public void prePersist() {
        availability = true;
    }
}



