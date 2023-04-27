package car.rental.controller;

import car.rental.model.CarMark;
import car.rental.model.CarModel;
import car.rental.repository.CarMarkRepository;
import car.rental.repository.CarModelRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/car/model")
public class CarModelController {
    CarModelRepository carModelRepository;
    CarMarkRepository carMarkRepository;

    public CarModelController(CarModelRepository carModelRepository, CarMarkRepository carMarkRepository) {
        this.carModelRepository = carModelRepository;
        this.carMarkRepository = carMarkRepository;
    }

    @GetMapping("/all")
    public String showCarMark(Model model) {
        model.addAttribute("carModels", carModelRepository.findAll());
        return "car/carModel";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        CarModel carModel = new CarModel();
        model.addAttribute("carModel", carModel);
        model.addAttribute("carMarks", carMarkRepository.findAll());
        return "car/carModelAdd";
    }

    @PostMapping("/add")
    public String save(CarModel carModel) {
        carModelRepository.save(carModel);
        return "redirect:/car/model/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCarModel(@PathVariable long id) {
        carModelRepository.deleteById(id);
        return "redirect:/car/model/all";
    }
}
