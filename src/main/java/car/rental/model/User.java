package car.rental.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.pl.PESEL;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    @Size(min = 3)
    private String firstName;
    @NotEmpty
    @Size(min=2)
    private String lastName;
    @NotEmpty
    @Email
    private String mail;

    @Size(min = 9 ,max = 9)
    private String mobileNumber;
    @Size(min = 7)
    private String drivingLicense;
//    @PESEL
    private String pesel;
    @Size(min=3)
    private String City;
    @Size(min=5)
    private String zipCode;
    @Size(min=3)
    private String street;
    @Size(min=1)
    private String houseNumber;
    @NotEmpty
    @Size(min=10)
    private String password;
    private String  employeeNumber;

}
