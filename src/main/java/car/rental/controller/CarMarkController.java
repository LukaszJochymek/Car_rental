package car.rental.controller;

import car.rental.model.CarMark;
import car.rental.repository.CarMarkRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/car/mark")
public class CarMarkController {
    CarMarkRepository carMarkRepository;

    public CarMarkController(CarMarkRepository carMarkRepository) {
        this.carMarkRepository = carMarkRepository;
    }

    @GetMapping("/all")
    public String showCarMark(Model model) {
        model.addAttribute("carMark", carMarkRepository.findAll());
        return "car/carMark";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        CarMark carMark = new CarMark();
        model.addAttribute("carMark", carMark);
        return "car/carMarkAdd";
    }

    @PostMapping("/add")
    public String save(CarMark carMark) {
        carMarkRepository.save(carMark);
        return "redirect:/car/mark/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCarMark(@PathVariable long id) {
        carMarkRepository.deleteById(id);
        return "redirect:/car/mark/all";
    }
}

