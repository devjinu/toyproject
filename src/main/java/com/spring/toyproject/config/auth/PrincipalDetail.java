package com.spring.toyproject.config.auth;

import com.spring.toyproject.model.User;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;

@Getter
public class PrincipalDetail implements UserDetails {
    private User user; // 객체를 품고있음 -> 컴포지션

    public PrincipalDetail(User user){
        this.user = user;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    // 계정의 만료 여부(true: 만료x)
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    // 계정의 잠금 여부(true: 잠금x)
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    // 비밀번호의 만료 여부(true: 만료x)
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    // 계정의 활성화 여부(true: 활성)
    @Override
    public boolean isEnabled() {
        return true;
    }

    // 계정의 권한 목록 여부(여러개인 경우 for)
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        Collection<GrantedAuthority> collertors = new ArrayList<>();
        collertors.add(()-> {
            return "ROLE_"+user.getRole();
        });
        return collertors;
    }

}
