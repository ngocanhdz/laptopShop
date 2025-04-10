package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service

public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from service";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findAllByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findOneById(id);
    }

    public User handleSaveUser(User ngocanh) {
        return this.userRepository.save(ngocanh);
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }
}
