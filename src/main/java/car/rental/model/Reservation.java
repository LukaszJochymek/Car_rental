package car.rental.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter

public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private User userClient;
    @OneToOne
    private User userAdmin;
    @OneToOne
    private Car car;
    private String carPickupLocation;
    private LocalDateTime rentalDate;
    private LocalDateTime dateOfReturn;
    private BigDecimal cost;
    private String status;


    @PrePersist
    public void prePersist() {
        rentalDate = LocalDateTime.now();
    }
}
