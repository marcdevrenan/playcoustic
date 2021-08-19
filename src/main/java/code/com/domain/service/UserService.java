package code.com.domain.service;

import code.com.domain.model.User;
import code.com.domain.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> getList() {
        return (List<User>) userRepository.findAll(Sort.by(Sort.Direction.ASC, "firstName"));
    }

    public List<User> getList(String field) {
        return (List<User>) userRepository.findAll(Sort.by(Sort.Direction.ASC, field));
    }

    public User getUserById(Integer id) {
        return userRepository.findById(id).orElse(null);
    }

    public void include(User user) {
        userRepository.save(user);
    }

    public void delete(Integer id) {
        userRepository.deleteById(id);
    }
}
