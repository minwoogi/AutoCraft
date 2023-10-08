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
        session.setAttribute("costValue", carService.getCostValue(finalYunbi, carModel.getYear())); // 유류비 절감금액
        session.setAttribute("co2Value", carService.getCo2Value(finalYunbi, carModel.getYear())); // co2 절감금액


        int[] co2Vals = carService.getCo2ValueAllYear(finalYunbi);
        for (int i = 1; i <= 10; i++) {
            session.setAttribute("cor" + i, co2Vals[i - 1]); // 기간별co2그래프
        }

        int[] costVals = carService.getCostValueAllYear(finalYunbi);
        for (int i = 1; i <= 10; i++) {
            session.setAttribute("cosr" + i, costVals[i - 1]); // 기간별 유류비 그래프
        }

        session.setAttribute("resultValue", carService.getResultValue(carModel)); //차량 견적금액
        session.setAttribute("increase", carService.getIncrease(finalYunbi)); // 연비상승 %

        session.setAttribute("composition", carService.getComposition(carModel)); //연비 구성

        session.setAttribute("myCost", carService.getMyCost(finalYunbi, carModel)); //절약 금액

        return "redirect:/result";

    }
}
