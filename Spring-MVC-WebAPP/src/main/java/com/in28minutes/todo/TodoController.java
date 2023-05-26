package com.in28minutes.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomBooleanEditor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    private TodoService service;
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String listTodos(@RequestParam String name, ModelMap model) {
       model.addAttribute("name", name);
        model.addAttribute("todos", service.retrieveTodos(retrieveLoggedinUserName()));
        return "list-todos";
    }

    private static String retrieveLoggedinUserName() {
        return "joao";
    }

    @RequestMapping(value = "/add-todos", method = RequestMethod.GET)
    public String showTodoPage(ModelMap model) {
        model.addAttribute("todo", new Todo(0, retrieveLoggedinUserName(),"your todo", new Date(), false));
        return "todo";
    }

    @RequestMapping(value = "/add-todos", method = RequestMethod.POST)
    public String addTodo(@ModelAttribute("todo") @Valid Todo todo, BindingResult result) {
        if(result.hasErrors()){
            return "todo";
        }
        service.addTodo(retrieveLoggedinUserName(), todo.getDesc(), todo.getTargetDate(), false);
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(@RequestParam int id) {
        service.deleteTodo(id);
        return "redirect:list-todos";
    }
    @RequestMapping(value = "/edit-todo", method = RequestMethod.GET)
    public String showUpdateTodoPage(ModelMap model, @RequestParam int id) {
        model.addAttribute("todo", service.retrieveTodo(id));
        return "edit-todo";
    }

    @RequestMapping(value = "/edit-todo", method = RequestMethod.POST)
    public String updateTodo(ModelMap model, @Valid Todo todo,
                             BindingResult result) {
        if (result.hasErrors())
            return "edit-todo";

        todo.setUser(retrieveLoggedinUserName()); //TODO:Remove Hardcoding Later
        service.updateTodo(todo);

        return "redirect:list-todos";
    }



}