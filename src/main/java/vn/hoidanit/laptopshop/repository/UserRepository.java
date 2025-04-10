package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.hoidanit.laptopshop.domain.User;
import java.util.List;

// crud create, read, update, delete
@Repository
// lONG TU DONG TAO ID
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User ngocanh); // LENH LUU USER NHE ....

    List<User> findAllByEmail(String email);

    List<User> findAll();

    User findOneById(long id);

    void deleteById(long id);
}
