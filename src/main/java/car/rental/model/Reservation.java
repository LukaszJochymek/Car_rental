package car.rental.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

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
    private LocalDateTime dateOfBooking;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime dateStartRental;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime dateOfReturn;
    private BigDecimal cost;
    private String status;


    @PrePersist
    public void prePersist() {
        dateOfBooking = LocalDateTime.now();
        status = "reservation made";
    }
}
