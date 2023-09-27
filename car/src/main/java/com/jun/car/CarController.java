package com.jun.car;


import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
public class CarController {


    @PostMapping("/part")
    public String autoCraft(@RequestBody CarModel carModel) {

        log.info(carModel.toString());


        return "/my-car";
    }
}
