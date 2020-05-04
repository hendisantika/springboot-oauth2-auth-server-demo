package com.hendisantika.springbootoauth2demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.userdetails.User;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-oauth2-demo
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 05/05/20
 * Time: 06.47
 */
@Entity
@Table(name = "user_authority", uniqueConstraints = @UniqueConstraint(columnNames = {"user_id", "authority_id"},
        name = "USER_AUTHORITY_UNIQUE_USER_ID_AND_AUTHORITY_ID"))
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserAuthority {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", columnDefinition = "bigint unsigned")
    private Integer id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "USER_ID", foreignKey = @ForeignKey(name = "FK_USER_AUTHORITY_USER_ID"))
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "AUTHORITY_ID", foreignKey = @ForeignKey(name = "FK_USER_AUTHORITY_AUTHORITY_ID"))
    private Authority authority;
}
