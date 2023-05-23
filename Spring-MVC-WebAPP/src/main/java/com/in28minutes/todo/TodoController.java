package com.in28minutes.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.in28minutes.todo.TodoService;

import java.util.Date;


@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    private TodoService service;

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String listTodos(@RequestParam String name, ModelMap model) {
       model.addAttribute("name", name);
        model.addAttribute("todos", service.retrieveTodos("joao"));
        return "list-todos";
    }

    @RequestMapping(value = "/add-todos", method = RequestMethod.GET)
    public String showTodoPage(ModelMap model) {
        model.addAttribute("todo", new Todo(0,"joao","your todo", new Date(), false));
        return "todo";
    }

    @RequestMapping(value = "/add-todos", method = RequestMethod.POST)
    public String addTodo(@ModelAttribute("todo") Todo todo) {
        service.addTodo("joao", todo.getDesc(), new Date(), false);
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(@RequestParam int id) {
        service.deleteTodo(id);
        return "redirect:list-todos";
    }
}