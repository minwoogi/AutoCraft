package com.jun.car;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;

@Service
@Slf4j
public class CarService {

    private final double basicYunbi = 12.7; // 기본 차량 연비


    //2676000*(12.8 / 14.4(최종연비)) = 1,701,698원*8년 적용 = 19,029,333원
    public int getCostValue(CarModel carModel, double finalYunbi, String year) { // 유류비 절약금액 계산

        int basicCostValue = 2676000 * Integer.parseInt(year);
        log.info("기본 유류 비 -->" + basicCostValue);

        BigDecimal finalCostValue = BigDecimal.valueOf(2676000 * (12.8 / finalYunbi) * Integer.parseInt(year));
        log.info("견적 유류 비 -->" + finalCostValue.setScale(0, RoundingMode.FLOOR));

        int finalCost = Integer.parseInt(String.valueOf(finalCostValue.setScale(0, RoundingMode.FLOOR)));


        log.info("유류비 차이 -->" + (basicCostValue - finalCost));

        return (basicCostValue - finalCost);
    }


    public int getCo2Value(CarModel carModel, double finalYunbi, String year) { // CO2절감 계산

        int basicCo2Value = 1860040 * Integer.parseInt(year);
        log.info("기본 유류 비 -->" + basicCo2Value);

        BigDecimal finalCo2Value = BigDecimal.valueOf(1860040 * (12.8 / finalYunbi) * Integer.parseInt(year));
        log.info("견적 CO2 저감 -->" + finalCo2Value.setScale(0, RoundingMode.FLOOR));

        int finalCo2 = Integer.parseInt(String.valueOf(finalCo2Value.setScale(0, RoundingMode.FLOOR)));

        log.info("Co2 저감  -->" + (finalCo2 - basicCo2Value));

        return (basicCo2Value - finalCo2);
    }

    public double getFinalyunbi(CarModel carModel) { //최종연비

        double value = 12.7;

        if (carModel.getIsg().equals("isgO")) {
            value *= 1.04;
        }

        if (carModel.getCarb().equals("al")) {
            value *= 1.02;
        }

        if (carModel.getTire().equals("tiren")) {
            value *= 1.07;
        }

        if (carModel.getWheel().equals("13")) {
            value *= 1.05;
        } else if (carModel.getWheel().equals("14")) {
            value *= 1.02;
        }


        return Math.round(value * 10) / 10.0;
    }


}
