package car.rental.repository;

import car.rental.model.User;
import org.springframework.data.jpa.repository.Query;

public interface UserService {
    User findByUserName(String name);


    void saveUser(User user);
}
