package com.spring.toyproject.Repository;

import com.spring.toyproject.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

// DAO
// 자동으로 bean등록이 된다
// @Repository 생략 가능
public interface UserRepository extends JpaRepository<User, Integer> {

    // SELECT * FROM user WHERE username = ?;
    Optional<User> findByUsername(String username);

    // JPA Naming 쿼리
    // SELECT * FROM user WHERE username = ? AND password = ?;
    // User findByUsernameAndPassword(String username, String password);
/*
    @Query(value = "SELECT * FROM user WHERE username = ?1 AND password = ?2;",nativeQuery = true )
    User login(String username, String password);
*/

}