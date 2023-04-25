package car.rental.controller;

import car.rental.model.Car;
import car.rental.model.ImageCar;
import car.rental.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.awt.*;
import java.awt.print.Book;
import java.io.IOException;

@Controller

@RequestMapping("/car")
public class CarController {
        CarRepository carRepository ;
        CarModelRepository carModelRepository;
        CarMarkRepository carMarkRepository;
        CarClassRepository carClassRepository;
        CarTypeRepository carTypeRepository;
        FuelTypeRepository fuelTypeRepository;
         ImageCarRepository imageCarRepository;

    public CarController(CarRepository carRepository, CarModelRepository carModelRepository, CarMarkRepository carMarkRepository, CarClassRepository carClassRepository, CarTypeRepository carTypeRepository, FuelTypeRepository fuelTypeRepository, ImageCarRepository imageCarRepository) {
        this.carRepository = carRepository;
        this.carModelRepository = carModelRepository;
        this.carMarkRepository = carMarkRepository;
        this.carClassRepository = carClassRepository;
        this.carTypeRepository = carTypeRepository;
        this.fuelTypeRepository = fuelTypeRepository;
        this.imageCarRepository = imageCarRepository;
    }
//    @PostMapping("/upload")
//    public String uploadImage(@RequestParam("file") MultipartFile file) {
//        try {
//            ImageCar image = new ImageCar();
//            image.setName(file.getOriginalFilename());
//            image.setType(file.getContentType());
//            image.setData(file.getBytes());
//
//            imageCarRepository.save(image);
//
//            return "Image uploaded successfully";
//        } catch (IOException e) {
//            return "Failed to upload image";
//        }
//    }
//    @GetMapping("/image/{id}")
//    public void showImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
//        ImageCar image = imageCarRepository.findById(id).get();
//        response.setContentType("image/jpg");
//        response.getOutputStream().write(image.getData());
//        response.getOutputStream().close();
//    }

    @GetMapping("/all")
    public String showCar(Model model) {
        model.addAttribute("cars", carRepository.findAll());
        return "car/car";
    }
    @GetMapping("/details/{id}")
    public String showCarDetailsClient (@PathVariable long id, Model model) {
        Car car = carRepository.findById(id).get();
        model.addAttribute("car", car);
        return "car/carDetails";
    }
    @GetMapping("/client/all")
    public String showCarClientClass(Model model) {
        model.addAttribute("cars", carRepository.findAllWhereAvailabilityIsTrue());
        return "car/carClient";
    }
    @GetMapping("/all/price")
    public String showCarGroupPrice(Model model) {
        model.addAttribute("carsPrice", carRepository.findAllGroupByPriceOfDay());
        return "car/carsPrice";
    }
    @GetMapping("/all/price/desc")
    public String showCarGroupPriceDesc(Model model) {
        model.addAttribute("carsPrice", carRepository.findAllGroupByPriceOfDayDesc());
        return "car/carPriceDesc";
    }
    @GetMapping("/add")
    public String showAddForm(Model model) {
        Car car = new Car();
        model.addAttribute("car", car);
        model.addAttribute("carModel", carModelRepository.findAll());
        model.addAttribute("carClass", carClassRepository.findAll());
        model.addAttribute("carType", carTypeRepository.findAll());
        model.addAttribute("fuelType", fuelTypeRepository.findAll());

        return "car/carAdd";
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
    @GetMapping("/edit/{id}")
    public String showEditForm(Model model,@PathVariable Long id)
    {   Car car = carRepository.findById(id).get();
        model.addAttribute("car", car);
        return "car/edit";
    }
    @PostMapping("/edit")
    public String saveEdit(@Valid Car car, Model model){
       carRepository.save(car);
        return "redirect:/car/all";
    }
}
