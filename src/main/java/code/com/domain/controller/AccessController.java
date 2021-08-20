package code.com.domain.controller;

import code.com.domain.model.User;
import code.com.domain.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AccessController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/")
    public String loginForm() {
        return "login";
    }

    @PostMapping(value = "/login")
    public String login(Model model, @RequestParam String email, @RequestParam String password) {

        User user = userService.validate(email, password);

        if (user != null) {
            return "index";
        } else {
            model.addAttribute("message", "Invalid authentication for email and password!");

            return "login";
        }
    }
}
