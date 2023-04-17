package car.rental.controller;

import car.rental.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import java.util.Set;

@Controller
public class ValidationController {

    private final Validator validator;

    public ValidationController(Validator validator) {
        this.validator = validator;
    }

    @GetMapping("/validateUser")

    public String checkBook(Model model) {

        User user = new User();

        Set<ConstraintViolation<User>> constraintViolationsUser = validator.validate(user);
        if (constraintViolationsUser.isEmpty()) {
            return "ok";
        } else {
            model.addAttribute("userValidations", constraintViolationsUser);

        }
        return "user/validateUser";

    }


}
