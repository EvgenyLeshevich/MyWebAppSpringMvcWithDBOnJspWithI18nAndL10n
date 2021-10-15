package com.evgeniy.spring.mvc.db.crud.controllers;

import com.evgeniy.spring.mvc.db.crud.models.User;
import com.evgeniy.spring.mvc.db.crud.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/{id}") // Введённый id в аргумент этого метода и с помощью PathVariable мы извлёчем этот id
    // и получим доступ к нему внутри этого метода
    public String searchById(@PathVariable("id") Long id, Model model){
        // Получим одного человека из DAO и передадим на представление
        model.addAttribute("user", userService.searchById(id));
        return "users/searchById";
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

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable("id") Long id) {
        userService.deleteById(id);
        return "redirect:/users";
    }

//    @GetMapping("/{id}/edit")
//    public String edit(Model model, @PathVariable("id") Long id){
//        model.addAttribute("user", userService.searchById(id));
//        return "users/edit";
//    }
//
//    @PatchMapping("/{id}")
//    public String update(@ModelAttribute("user") User user, @PathVariable("id") Long id){
//        userService.update(user);
//        return "redirect:/users";
//    }
//
//    @DeleteMapping("/{id}")
//    public String delete(@PathVariable("id") Long id){
//        userService.deleteById(id);
//        return "redirect:/users";
//    }
}
