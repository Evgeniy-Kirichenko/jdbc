package ru.netology.jdbc.service;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import ru.netology.jdbc.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    @Autowired
    private Repository repository;

    public List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}
