package com.hendisantika.springbootoauth2demo.dto;

import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-oauth2-demo
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 05/05/20
 * Time: 06.51
 */
public class CustomGrantedAuthority implements GrantedAuthority, Serializable {

    private final String name;

    public CustomGrantedAuthority(String name) {
        this.name = name;
    }

    @Override
    public String getAuthority() {
        return name;
    }
}
