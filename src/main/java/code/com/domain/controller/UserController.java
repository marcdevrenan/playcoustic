package code.com.domain.controller;

import code.com.domain.model.User;
import code.com.domain.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/user")
    public String registrationScreen() {
        return "user/register";
    }

    @GetMapping(value = "/goBack")
    public String goBack() {
        return "redirect:/user/list";
    }

    @PostMapping(value = "/user/order")
    public String order(Model model, @RequestParam String sortBy) {

        model.addAttribute("users", userService.getList(sortBy));

        return "user/list";
    }

    @GetMapping(value = "/user/{id}/details")
    public String getSong(Model model, @PathVariable Integer id) {

        User user = userService.getUserById(id);

        model.addAttribute("user", user);

        return "user/register";
    }

    @PostMapping(value = "/user/add")
    public String addUser(Model model, User user) {
        userService.include(user);

        model.addAttribute("message", "The user " + user.getFirstName() + " successfully added!");

        return getList(model);
    }

    @GetMapping(value = "/user/{id}/delete")
    public String deleteUser(Model model, @PathVariable Integer id) {
        User userDeleted = userService.getUserById(id);

        userService.delete(id);

        model.addAttribute("message", "User " + userDeleted.getFirstName() + " successfully deleted!");

        return getList(model);
    }

    @GetMapping(value = "/user/list")
    public String getList(Model model) {

        model.addAttribute("users", userService.getList());

        return "user/list";
    }
}
