package car.rental.controller;

import car.rental.model.Car;
import car.rental.model.CarMark;
import car.rental.model.CarModel;
import car.rental.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/car")
public class CarController {
        CarRepository carRepository ;
        CarModelRepository carModelRepository;
        CarMarkRepository carMarkRepository;
        CarClassRepository carClassRepository;
        CarTypeRepository carTypeRepository;
        FuelTypeRepository fuelTypeRepository;

    public CarController(CarRepository carRepository, CarModelRepository carModelRepository, CarMarkRepository carMarkRepository, CarClassRepository carClassRepository, CarTypeRepository carTypeRepository, FuelTypeRepository fuelTypeRepository) {
        this.carRepository = carRepository;
        this.carModelRepository = carModelRepository;
        this.carMarkRepository = carMarkRepository;
        this.carClassRepository = carClassRepository;
        this.carTypeRepository = carTypeRepository;
        this.fuelTypeRepository = fuelTypeRepository;
    }

    @GetMapping("/all")
    public String showCar(Model model) {
        model.addAttribute("cars", carRepository.findAll());
        return "car/car";
    }
    @GetMapping("/add")
    public String showAddForm(Model model) {
        Car car = new Car();
        model.addAttribute("car", car);
        model.addAttribute("carModel", carModelRepository.findAll());
        model.addAttribute("carClass", carClassRepository.findAll());
        model.addAttribute("carType", carTypeRepository.findAll());
        model.addAttribute("fuelType", fuelTypeRepository.findAll());

        return "car/carAdded";
    }

    @PostMapping("/add")
    public String save(Car car){
        carRepository.save(car);
        return "redirect:/car/all";
    }
    @RequestMapping("/delete/{id}")
    public String deleteCar(@PathVariable long id) {
        carRepository.deleteById(id);
        return "redirect:/car/all";
    }
}
