package car.rental.controller;

import car.rental.CurrentUser;
import car.rental.model.Car;
import car.rental.model.User;
import car.rental.repository.UserRepository;
import car.rental.repository.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;


@Controller
@RequestMapping("/user")
public class UserController {
    UserRepository userRepository;
    private final UserService userService;

    public UserController(UserRepository userRepository, UserService userService) {
        this.userRepository = userRepository;
        this.userService = userService;
    }


    @GetMapping("/all")
    public String showUser(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "user/users";
    }
    @GetMapping("/details/{id}")
    public String showUserDetailsAdmin(@PathVariable long id, Model model) {
        User user = userRepository.findById(id).get();
        model.addAttribute("user", user);
        return "user/userDetails";
    }

    @GetMapping("/admin")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getUsername();
    }



    @GetMapping("/registration")
    public String showAddFormRegistration(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user/addUserClient";
    }

    @PostMapping("/registration")
    public String saveRegistration(@Valid User user,BindingResult result, Model model){
        if(result.hasErrors()) {
            model.addAttribute("users", userRepository.findAll());
            return "user/addUserClient";
        }
        userRepository.save(user);
        return "redirect:/user/all";
    }
    @GetMapping("/panel/registration")
    public String showAddFormRegistrationPanel(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user/registration";
    }

    @PostMapping("/panel/registration")
    public String saveRegistrationPanel(@Valid User user,BindingResult result, Model model){
        if(result.hasErrors()) {
            model.addAttribute("users", userRepository.findAll());
            return "user/registration";
        }
        userRepository.save(user);
        return "redirect:/login";
    }
    @GetMapping("/edit/{userId}")
    public String showAddFormEditUser(@PathVariable Long userId,Model model) {
        User user = userRepository.findById(userId).get();
        model.addAttribute("user", user);
        return "user/clientEditUser";
    }

    @PostMapping("/edit/{userId}")
    public String saveEditUser(@PathVariable Long userId,@Valid User user,BindingResult result, Model model){
        if(result.hasErrors()) {
            model.addAttribute("users", userRepository.findAll());
            return "/user/clientEditUser";
        }

            userRepository.save(user);

        return "redirect:/user/all";
    }
    @GetMapping("/addAdmin")
    public String showAddFormAdmin(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user/addAdmin";
    }

    @PostMapping("/addAdmin")
    public String saveAdmin(@Valid User user,BindingResult result, Model model){
        if(result.hasErrors()) {
            model.addAttribute("users", userRepository.findAll());
            return "user/addAdmin";
        }
        userRepository.save(user);
        return "redirect:/user/all";
    }


}