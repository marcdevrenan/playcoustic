package code.com.domain.repository;

import code.com.domain.model.User;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    @Query("from User u where u.email = :email and u.password = :password")
    public User authentication(String email, String password);

    public List<User> findAll(Sort sort);
}
