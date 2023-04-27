package car.rental.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.pl.PESEL;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

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
    @Size(min = 2)
    private String lastName;
    @Column(nullable = false, unique = true, length = 60)
    private String username;
    @NotEmpty
    @Email

    private String mail;
    private int enabled;
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;
    @Size(min = 9, max = 9)
    private String mobileNumber;
    @Size(min = 7)
    private String drivingLicense;
    //    @PESEL
    private String pesel;
    @Size(min = 3)
    private String City;
    @Size(min = 5)
    private String zipCode;
    @Size(min = 3)
    private String street;
    @Size(min = 1)
    private String houseNumber;
    @NotEmpty
    @Size(min = 10)
    private String password;
    private String employeeNumber;


}
