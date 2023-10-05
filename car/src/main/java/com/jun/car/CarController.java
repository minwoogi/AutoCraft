package com.jun.car;


import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.io.IOException;

@RestController
@Slf4j
@RequiredArgsConstructor
@SessionAttributes("resultPage")
public class CarController {


    private final CarService carService;


    @PostMapping("/part")
    public String autoCraft(@RequestBody CarModel carModel, HttpSession session) throws IOException {

        log.info(carModel.toString());

        double finalYunbi = carService.getFinalyunbi(carModel);
        session.setAttribute("costValue", carService.getCostValue(carModel, finalYunbi, carModel.getYear())); // 유류비 절감금액
        session.setAttribute("co2Value", carService.getCo2Value(carModel, finalYunbi, carModel.getYear())); // 유류비 절감금액

        System.out.println(session.getAttribute("costValue"));
        System.out.println(session.getAttribute("co2Value"));

        return "redirect:/result";

    }
}
