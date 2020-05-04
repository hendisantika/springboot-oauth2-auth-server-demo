package com.hendisantika.springbootoauth2demo.repository;

import com.hendisantika.springbootoauth2demo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-oauth2-demo
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 05/05/20
 * Time: 06.52
 */
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("SELECT DISTINCT u FROM User u WHERE u.userName = :username")
    User findByUsername(@Param("username") String username);
}
