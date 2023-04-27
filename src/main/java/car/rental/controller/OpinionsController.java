package car.rental.controller;

import car.rental.model.CarMark;
import car.rental.model.Opinions;
import car.rental.model.User;
import car.rental.repository.CarRepository;
import car.rental.repository.OpinionsRepository;
import car.rental.repository.RatingRepository;
import car.rental.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/opinions")
public class OpinionsController {
    OpinionsRepository opinionsRepository;
    RatingRepository ratingRepository;
    CarRepository carRepository;
    UserRepository userRepository;

    public OpinionsController(OpinionsRepository opinionsRepository, RatingRepository ratingRepository, CarRepository carRepository, UserRepository userRepository) {
        this.opinionsRepository = opinionsRepository;
        this.ratingRepository = ratingRepository;
        this.carRepository = carRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/all")
    public String showOpinions(Model model) {
        model.addAttribute("opinions", opinionsRepository.findAll());
        return "opinions/opinions";
    }

    @GetMapping("/add/{userId}")
    public String showAddForm(@PathVariable long userId, Model model) {
        Opinions opinion = new Opinions();
        model.addAttribute("opinion", opinion);
        model.addAttribute("rating", ratingRepository.findAll());
        model.addAttribute("cars", carRepository.findAll());

        return "opinions/add";
    }

    @PostMapping("/add/{userId}")
    public String save(Opinions opinion, @PathVariable Long userId) {
        opinion.setUser(userRepository.findById(userId).get());
        opinionsRepository.save(opinion);
        return "redirect:/opinions/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteOpinions(@PathVariable long id) {
        opinionsRepository.deleteById(id);
        return "redirect:/opinions/all";
    }
}
