package letung.com.laptopshop.controller;


import letung.com.laptopshop.domain.User;
import letung.com.laptopshop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController<UserService> {
//     DI: dependency injection
//    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model){
        String test = this.userService.handleHello();
        model.addAttribute("letung", test); // cặp key-value
        model.addAttribute("hoidanit", "from controller with model"); // cặp key-value
        return "hello";
    }
    @RequestMapping( "/admin/user")  // mặc định là method là GET
    public String getUserPage(Model model ){
        model.addAttribute("newUser", new User());
    return "admin/user/create";
    }


    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String getCreatePage(Model model, @ModelAttribute("newUser") User hoidanit){
        System.out.println("Thông tin user vừa tạo là:" + hoidanit);
        return "hello";
    }
}

