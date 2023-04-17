package car.rental.model;

import lombok.Getter;
import lombok.Setter;

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
    private LocalDate overviewDate;
    private String description;

    @PrePersist
    public void prePersist() {
        availability = true;
    }
}



