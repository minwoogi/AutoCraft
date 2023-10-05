package com.jun.car;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class PageController {

    private final CarService carService;

    @GetMapping("/")
    public String getIndex() {
        return "index";
    }

    @GetMapping("/chart")
    public String getChart() {
        return "indexChart";
    }

    @GetMapping("/result")
    public String getResultPage() {

        return "result";
    }




}
