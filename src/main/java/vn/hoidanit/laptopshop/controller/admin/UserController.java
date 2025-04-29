package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UploadService;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import jakarta.validation.Valid;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    // @GetMapping("/") // auto la lay data tu model sang view
    // public String getHomePage(Model model) {
    // String test = this.userService.handleHello();
    // List<User> arrUsers =
    // this.userService.getAllUsersByEmail("tnanhh@gmail.com");
    // System.out.println(arrUsers);
    // model.addAttribute("eric", test);
    // model.addAttribute("ngocanh", "from ngoc anh value");
    // String users = " danh sach users";
    // model.addAttribute("users", users);
    // return "hello";
    // }

    @GetMapping("/admin/user/create") // doi sang post de lay data tu view sang model
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());

        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create") // doi sang post de lay data tu view
                                               // sang
    // model
    public String createUserPage(Model model, @Valid @ModelAttribute("newUser") User ngocanh,
            BindingResult newUserBindingResult,
            @RequestParam("ngocAnhFile") MultipartFile file) {
        // relative path: absolute path
        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }
        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/create";
        }
        String name = this.uploadService.handleUploadFile(file, "avatar");
        String hashPassWord = this.passwordEncoder.encode(ngocanh.getPassword());
        ngocanh.setAvatar(name);
        ngocanh.setPassword(hashPassWord);
        ngocanh.setRole(this.userService.findRolebyName(ngocanh.getRole().getName()));

        this.userService.handleSaveUser(ngocanh);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user") // doi sang post de lay data tu view sang model
    public String getUserPage(Model model) {
        // List<User> users = this.userService.getAllUsers();
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        System.out.println("check users" + users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}") // doi sang post de lay data tu view sang model
    public String getUserDetailPage(Model model, @PathVariable long id) {
        System.out.println(id);
        User user = this.userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/update/{id}") // doi sang post de lay data tu view sang model
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        // List<User> users = this.userService.getAllUsers();\
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);

        // model.addAttribute("id", id);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model, @ModelAttribute("user") User ngocanh,
            @RequestParam("ngocAnhFile") MultipartFile file) {
        User user = this.userService.getUserById(ngocanh.getId());
        String avatar = this.uploadService.handleUploadFile(file, "avatar");

        if (user != null) {
            user.setAvatar(avatar);
            user.setRole(this.userService.findRolebyName(ngocanh.getRole().getName()));
            user.setPhone(ngocanh.getPhone());
            user.setAddress((ngocanh.getAddress()));
            user.setFullName(ngocanh.getFullName());
            this.userService.handleSaveUser(user);
        }
        // model.addAttribute("id", id);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")

    public String getDeleteUserPage(Model model, @PathVariable long id) {
        System.out.println(id);
        User user = this.userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("user", user);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("user") User ngocanh) {
        // List<User> users = this.userService.getAllUsers();\
        this.userService.deleteAUser(ngocanh.getId());
        return "redirect:/admin/user";
    }

}
// @RestController
// public class UserController {
// // dependency injection
// private UserService userService;

// public UserController(UserService userService) {
// this.userService = userService;
// }

// @GetMapping("")
// public String getHomePage() {
// return this.userService.handleHello();
// }
// }
