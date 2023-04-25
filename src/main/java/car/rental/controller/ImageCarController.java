package car.rental.controller;

import car.rental.model.ImageCar;
import car.rental.repository.ImageCarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.BitSet;

public class ImageCarController {

    private ImageCarRepository imageCarRepository;

    public ImageCarController(ImageCarRepository imageCarRepository) {
        this.imageCarRepository = imageCarRepository;
    }

    @PostMapping("/upload")
    public String uploadImage(@RequestParam("file") MultipartFile file) {
        try {
            ImageCar image = new ImageCar();
            image.setName(file.getOriginalFilename());
            image.setType(file.getContentType());
            image.setData(file.getBytes());

            imageCarRepository.save(image);

            return "Image uploaded successfully";
        } catch (IOException e) {
            return "Failed to upload image";
        }
    }

    @GetMapping("/image/{id}")
    public void showImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        ImageCar image = imageCarRepository.findById(id).get();
        response.setContentType("image/jpg");
        response.getOutputStream().write(image.getData());
        response.getOutputStream().close();
    }

}
