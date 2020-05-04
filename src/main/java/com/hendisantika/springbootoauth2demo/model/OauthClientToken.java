package com.hendisantika.springbootoauth2demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-oauth2-demo
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 05/05/20
 * Time: 06.45
 */
@Entity
@Table(name = "oauth_client_token")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OauthClientToken {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", columnDefinition = "bigint unsigned")
    private Integer id;

    @Column(name = "token_id")
    private String tokenId;

    @Lob
    @Column(name = "token", columnDefinition = "mediumblob")
    private byte[] token;

    @Column(name = "authentication_id")
    private String authenticationId;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "client_id")
    private String clientId;

}
