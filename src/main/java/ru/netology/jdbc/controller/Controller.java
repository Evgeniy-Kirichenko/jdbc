package ru.netology.jdbc.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.jdbc.service.Service;

import java.util.ArrayList;
import java.util.List;

@RestController
@AllArgsConstructor
public class Controller {
    private Service service;

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam("name") String name) {
        return service.getProductName(name);
    }
}
