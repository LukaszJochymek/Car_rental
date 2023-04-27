package car.rental.controller;

import car.rental.model.Car;
import car.rental.model.Reservation;
import car.rental.model.User;
import car.rental.repository.CarRepository;
import car.rental.repository.ReservationRepository;
import car.rental.repository.UserRepository;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
    ReservationRepository reservationRepository;
    CarRepository carRepository;
    UserRepository userRepository;

    public ReservationController(ReservationRepository reservationRepository, CarRepository carRepository, UserRepository userRepository) {
        this.reservationRepository = reservationRepository;
        this.carRepository = carRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("/all")
    public String showReservation(Model model) {
        model.addAttribute("reservations", reservationRepository.findAllStatusOtherFinished());
        return "reservation/reservation";
    }

    @GetMapping("/history/all")
    public String showReservationHistory(Model model) {
        model.addAttribute("reservations", reservationRepository.findAllStatusIsFinished());
        return "reservation/adminHistory";
    }

    @GetMapping("/client/all/{userId}")
    public String showReservationClient(@PathVariable Long userId, Model model) {
        model.addAttribute("reservations", reservationRepository.findAllWhereUserId(userId));
        return "reservation/reservationClient";
    }

    @GetMapping("/client/history/{userId}")
    public String showReservationClientHistory(@PathVariable Long userId, Model model) {
        model.addAttribute("reservations", reservationRepository.findAllWhereUserIdStatusFinish(userId));
        return "reservation/clientHistory";
    }


    @GetMapping("/addUserClient/{userId}")
    public String showAddForm(Model model) {
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("cars", carRepository.findAll());
        return "reservation/add";
    }

    @PostMapping("/addUserClient/{userId}")
    public String save(@PathVariable Long userId, Reservation reservation) {
        User userClient = userRepository.findById(userId).get();
        reservation.setUserClient(userClient);
        reservationRepository.save(reservation);
        return "redirect:/car/client/all";

    }

    @GetMapping("/addUserClientCar/{userId}/{carId}")
    public String showAddFormClientCar(@PathVariable Long userId, @PathVariable Long carId, Model model) {
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("car", carRepository.findById(carId).get());
        return "reservation/addClientCar";
    }

    @PostMapping("/addUserClientCar/{userId}/{carId}")
    public String save(@PathVariable Long userId, @PathVariable Long carId, Reservation reservation) {
        User userClient = userRepository.findById(userId).get();
        reservation.setUserClient(userClient);
        Car car = carRepository.findById(carId).get();
        reservation.setCar(car);
        reservationRepository.save(reservation);
        return "redirect:/car/client/all";

    }

    @GetMapping("/addUserAdmin/{userId}")
    public String showAddFormAdmin(Model model) {
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("users", userRepository.findAll());
        model.addAttribute("cars", carRepository.findAll());
        return "reservation/addAdmin";
    }

    @PostMapping("/addUserAdmin/{userId}")
    public String saveAdmin(@PathVariable Long userId, Reservation reservation) {
        reservation.setUserAdmin(userRepository.findById(userId).get());
        reservationRepository.save(reservation);
        return "redirect:/reservation/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteReservation(@PathVariable long id) {
        reservationRepository.deleteById(id);
        return "redirect:/reservation/all";
    }

    @RequestMapping("/changeStatus/released/{id}")
    public String changeStatusCarReleased(@PathVariable long id) {
        Reservation reservation = reservationRepository.findById(id).get();
        reservation.setStatus("in progress");
        reservationRepository.save(reservation);
        Long idCar = reservation.getCar().getId();
        Car car = carRepository.findById(idCar).get();
        car.setAvailability(false);
        carRepository.save(car);
        return "redirect:/reservation/all";
    }

    @RequestMapping("/changeStatus/returned/{id}")
    public String changeStatusCarReturned(@PathVariable long id) {
        Reservation reservation = reservationRepository.findById(id).get();
        reservation.setStatus("finished");
        reservationRepository.save(reservation);
        Long idCar = reservation.getCar().getId();
        Car car = carRepository.findById(idCar).get();
        car.setAvailability(true);
        carRepository.save(car);
        return "redirect:/reservation/all";
    }

}
