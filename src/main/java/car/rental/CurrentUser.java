package car.rental;


import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;
import org.springframework.security.core.userdetails.User;
public class CurrentUser extends User {
    private final car.rental.model.User user;
    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       car.rental.model.User user) {
        super(username, password, authorities);
        this.user = user;
    }
    public car.rental.model.User getUser() {return user;}

}
