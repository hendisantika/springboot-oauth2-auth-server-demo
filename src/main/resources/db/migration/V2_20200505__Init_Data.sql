INSERT INTO oauth_client_details (client_id, resource_ids, client_secret, scope,
                                  authorized_grant_types, web_server_redirect_uri, authorities,
                                  access_token_validity, refresh_token_validity,
                                  additional_information, autoapprove)
VALUES ('oauth2-jwt-client', 'resource-server-rest-api', '$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha',
        'read', 'password,authorization_code,refresh_token,client_credentials,implicit',
        'https://www.getpostman.com/oauth2/callback', 'USER', 10800, 2592000, NULL, NULL);

INSERT INTO authority (NAME)
VALUES ('ADMIN');

INSERT INTO user (account_expired, account_locked, credentials_expired, ENABLED, PASSWORD,
                  user_name)
VALUES (0, 0, 0, 1, '$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', 'admin');

INSERT INTO user_authority (authority_id, user_id)
VALUES (1, 1);
