package com.hendisantika.springbootoauth2demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-oauth2-demo
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 05/05/20
 * Time: 06.43
 */
@Entity
@Table(name = "oauth_client_details")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OauthClientDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", columnDefinition = "bigint unsigned")
    private Integer id;

    @Column(name = "client_id")
    private String clientId;

    @Column(name = "client_name")
    private String clientName;

    @Column(name = "resource_ids")
    private String resourceIds;

    @Column(name = "client_secret")
    private String clientSecret;

    @Column(name = "scope")
    private String scope;

    @Column(name = "authorized_grant_types")
    private String authorizedGrantTypes;

    @Column(name = "web_server_redirect_uri")
    private String webServerRedirectUri;

    @Column(name = "authorities")
    private String authorities;

    @Column(name = "access_token_validity", length = 11)
    private Integer accessTokenValidity;

    @Column(name = "refresh_token_validity", length = 11)
    private Integer refreshTokenValidity;

    @Column(name = "additional_information", length = 4096)
    private String additionalInformation;

    @Column(name = "autoapprove", columnDefinition = "TINYINT(4)")
    private Integer autoapprove;

    @Column(name = "uuid")
    private String uuid;

    @Column
    private Date created;

    @Column(columnDefinition = "boolean default true")
    private Boolean enabled;

    @Transient
    private String[] scopes;

    @Transient
    private String[] grantTypes;

    @Transient
    private String ownerEmail;
}
