package car.rental.model;

import car.rental.repository.UserRepository;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Opinions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private User user;
    @OneToOne
    private Car car;
    @OneToOne
    private Rating rating;
    private String description;

    @PrePersist
    public void prePersist() {
        user = getUser();
    }
}

