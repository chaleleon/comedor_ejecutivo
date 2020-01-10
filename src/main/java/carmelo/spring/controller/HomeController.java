package carmelo.spring.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = {"/", "/home"})
    public String home(Model model) {
  
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        
        model.addAttribute("nombre_usuario", auth.getName());
        model.addAttribute("auth_usuario", auth.getAuthorities());

        return "home";
    }

    @RequestMapping("/ventas")
    public String user(Model model) {
        return "ventas";
    }
}
