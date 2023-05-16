package com.in28minutes.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.in28minutes.todo.TodoService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    private TodoService service;

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String showLoginPage(@RequestParam String name, ModelMap model) {
       model.addAttribute("name", name);
        model.addAttribute("todos", service.retrieveTodos("joao"));
        return "list-todos";
    }
}