package com.evgeniy.spring.mvc.db.crud.controllers;

import com.evgeniy.spring.mvc.db.crud.models.User;
import com.evgeniy.spring.mvc.db.crud.service.Services;
import com.evgeniy.spring.mvc.db.crud.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private Services userService;

    @GetMapping
    public String all(Model model) {
        // Получим всех людей из DAO и передадим их на представление(на страницу)
        model.addAttribute("users", userService.searchAll());
        return "users/all";
    }

    @GetMapping("/new")
    public String newPerson(@ModelAttribute("user") User user) {
        // Возвращаем страницу с формой для заполениня данных нового человека
        return "users/new";
    }

    @PostMapping
    public String create(@ModelAttribute("user") User user) { // ModelAttribute - используется для создания нового объекта класса Person
        // и добавления в него данных из формы где мы заполняем данные
        // Создание и добавление в бд нового человека
        userService.add(user);
        // После того как мы добавили нашего человека в бд мы должны вернуть какую-то страницу для пользователя
        // Можем создать какую-то сраницу где будем показывать успешность операции. А так же пожем использовать
        // redirect  - который говорит браузеру перейти на какую-то другую страницу
        // В данном случае когда человек будет добавлен в бд мы отправим браузеру "redirect:/people" он перейдёт на страницу /people
        return "redirect:/users";
    }
}
