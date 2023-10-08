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
    public int getCostValue(double finalYunbi, String year) { // 유류비 절약금액 계산


        log.info("----------getCostValue----------");
        int basicCostValue = 2676000 * Integer.parseInt(year);
        log.info("기본 유류 비 -->" + basicCostValue);

        BigDecimal finalCostValue = BigDecimal.valueOf(2676000 * (12.8 / finalYunbi) * Integer.parseInt(year));
        log.info("견적 유류 비 -->" + finalCostValue.setScale(0, RoundingMode.FLOOR));

        int finalCost = Integer.parseInt(String.valueOf(finalCostValue.setScale(0, RoundingMode.FLOOR)));


        log.info("유류비 차이 -->" + (basicCostValue - finalCost));

        return (basicCostValue - finalCost);
    }

    public int[] getCostValueAllYear(double finalYunbi) {

        log.info("----------getCostValueAllYear----------");

        int[] allValue = new int[10];

        for (int i = 1; i <= 10; i++) {
            int basicCostValue = 2676000 * i;
            log.info("기본 유류 비" + i + "년 -->" + +basicCostValue);

            BigDecimal finalCostValue = BigDecimal.valueOf(2676000 * (12.8 / finalYunbi) * i);
            log.info("견적 유류 비" + i + "년 -->" + finalCostValue.setScale(0, RoundingMode.FLOOR));

            int finalCost = Integer.parseInt(String.valueOf(finalCostValue.setScale(0, RoundingMode.FLOOR)));
            log.info("유류비 차이 -->" + (basicCostValue - finalCost));

            allValue[i - 1] = finalCost;
        }

        return allValue;

    }


    public int getCo2Value(double finalYunbi, String year) { // CO2절감 계산


        log.info("----------getCo2Value----------");
        int basicCo2Value = 1860040 * Integer.parseInt(year);
        log.info("기본 CO2 비 -->" + basicCo2Value);

        BigDecimal finalCo2Value = BigDecimal.valueOf(1860040 * (12.8 / finalYunbi) * Integer.parseInt(year));
        log.info("견적 CO2 저감 -->" + finalCo2Value.setScale(0, RoundingMode.FLOOR));

        int finalCo2 = Integer.parseInt(String.valueOf(finalCo2Value.setScale(0, RoundingMode.FLOOR)));

        log.info("Co2 저감  -->" + (basicCo2Value - finalCo2));

        return (basicCo2Value - finalCo2);
    }


    public int[] getCo2ValueAllYear(double finalYunbi) { // CO2절감 계산


        log.info("----------getCo2ValueAllYear----------");
        int[] allValue = new int[10];

        for (int i = 1; i <= 10; i++) {
            int basicCo2Value = 1860040 * i;
            log.info("기본 CO2 비 " + i + "년 -->" + basicCo2Value);

            BigDecimal finalCo2Value = BigDecimal.valueOf(1860040 * (12.8 / finalYunbi) * i);
            log.info("견적 CO2 저감 " + i + "년 -->" + finalCo2Value.setScale(0, RoundingMode.FLOOR));

            int finalCo2 = Integer.parseInt(String.valueOf(finalCo2Value.setScale(0, RoundingMode.FLOOR)));
            log.info("Co2 저감 " + i + "년 -->" + (basicCo2Value - finalCo2));

            allValue[i - 1] = finalCo2;
        }

        return allValue;
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


    public int getResultValue(CarModel carModel) { //차량 견적금액

        int value = 1560;

        if (carModel.getIsg().equals("isgO")) {
            value += 60;
        }

        if (carModel.getCarb().equals("al")) {
            value += 200;
        }

        if (carModel.getTire().equals("tiren")) {
            value += 40;
        }

        if (carModel.getWheel().equals("13")) {
            value -= 30;
        } else if (carModel.getWheel().equals("14")) {
            value -= 15;
        }


        return value;
    }

    public int getIncrease(double finalYunbi) {

        BigDecimal val = BigDecimal.valueOf(((finalYunbi - 12.7) / 12.7) * 100);
        int value = Integer.parseInt(String.valueOf(val.setScale(0, RoundingMode.FLOOR)));

        return value;
    }

    public Composition getComposition(CarModel carModel) { //연비 구성정보

        Composition composition = new Composition(0, 0, 0, 0);

        BigDecimal per = BigDecimal.ZERO;

        if ("isgO".equals(carModel.getIsg())) {
            per = per.add(new BigDecimal("1.04"));
        }

        if ("al".equals(carModel.getCarb())) {
            per = per.add(new BigDecimal("1.2"));
        }

        if ("tiren".equals(carModel.getTire())) {
            per = per.add(new BigDecimal("1.07"));
        }

        if ("13".equals(carModel.getWheel())) {
            per = per.add(new BigDecimal("1.05"));
        } else if ("14".equals(carModel.getWheel())) {
            per = per.add(new BigDecimal("1.02"));
        }


        if ("isgO".equals(carModel.getIsg())) {
            int isgValue = new BigDecimal("1.04").divide(per, 2, BigDecimal.ROUND_DOWN).multiply(new BigDecimal("100")).intValue();
            composition.setIsg(isgValue);
        }

        if ("al".equals(carModel.getCarb())) {
            int carbValue = new BigDecimal("1.2").divide(per, 2, BigDecimal.ROUND_DOWN).multiply(new BigDecimal("100")).intValue();
            composition.setCarb(carbValue);
        }

        if ("tiren".equals(carModel.getTire())) {
            int tireValue = new BigDecimal("1.07").divide(per, 2, BigDecimal.ROUND_DOWN).multiply(new BigDecimal("100")).intValue();
            composition.setTire(tireValue);
        }

        if ("13".equals(carModel.getWheel())) {
            int wheelValue = new BigDecimal("1.05").divide(per, 2, BigDecimal.ROUND_DOWN).multiply(new BigDecimal("100")).intValue();
            ;
            composition.setWheel(wheelValue);
        } else if ("14".equals(carModel.getWheel())) {
            int wheelValue = new BigDecimal("1.02").divide(per, 2, BigDecimal.ROUND_DOWN).multiply(new BigDecimal("100")).intValue();
            ;
            composition.setWheel(wheelValue);
        }
        log.info(composition.toString());

        return composition;
    }

    public int getMyCost(double finalYunbi, CarModel carModel) {


        BigDecimal resultValue = new BigDecimal(getResultValue(carModel) * 1000);


//        BigDecimal costDecimal = new BigDecimal("2676000.0")
//                .subtract(new BigDecimal("2676000.0")
//                        .multiply(new BigDecimal("12.8")
//                                .divide(new BigDecimal(String.valueOf(finalYunbi)), 2, BigDecimal.ROUND_DOWN)))
//                .multiply(new BigDecimal("12.0"))
//                .subtract(resultValue.subtract(new BigDecimal(15600000)));


        BigDecimal costDecimal = new BigDecimal("2676000.0")
                .subtract(new BigDecimal("2676000.0").multiply(new BigDecimal("12.8").divide(new BigDecimal(String.valueOf(finalYunbi)), 2, BigDecimal.ROUND_DOWN)))
                .multiply(new BigDecimal("12.0"))
                .subtract(resultValue.subtract(new BigDecimal("15600000.0")));


        log.info("cost:" + costDecimal);

        // 정수로 변환
        int cost = costDecimal.intValue();

        return cost;
    }


}
