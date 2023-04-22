package car.rental.controller;

import car.rental.model.Car;
import car.rental.model.Reservation;
import car.rental.repository.CarRepository;
import car.rental.repository.ReservationRepository;
import car.rental.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String showOpinions(Model model) {
        model.addAttribute("reservations", reservationRepository.findAll());
        return "reservation/reservation";
    }
    @GetMapping("/addUserClient/{userId}")
    public String showAddForm(Model model) {
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("cars", carRepository.findAll());
        return "reservation/add";
    }

    @PostMapping("/addUserClient/{userId}")
    public String save(@PathVariable Long userId, Reservation reservation){
        reservation.setUserClient(userRepository.findById(userId).get());
        reservationRepository.save(reservation);
        return "redirect:/reservation/all";

    }  @GetMapping("/addUserAdmin/{userId}")
    public String showAddFormAdmin(Model model) {
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("cars", carRepository.findAll());
        return "reservation/addAdmin";
    }

    @PostMapping("/addUserAdmin/{userId}")
    public String saveAdmin(@PathVariable Long userId, Reservation reservation){
        reservation.setUserAdmin(userRepository.findById(userId).get());
        reservationRepository.save(reservation);
        return "redirect:/reservation/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteReservation(@PathVariable long id) {
        reservationRepository.deleteById(id);
        return "redirect:/reservation/all";
    }

}
