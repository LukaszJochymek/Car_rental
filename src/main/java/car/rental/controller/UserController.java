package car.rental.controller;

import car.rental.model.User;
import car.rental.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;


@Controller
@RequestMapping("/user")
public class UserController {
    UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/all")
    public String showUser(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "user/users";
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