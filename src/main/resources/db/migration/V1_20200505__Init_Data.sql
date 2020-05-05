--
-- Table structure for table `authority`
--

CREATE TABLE ` authority `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` NAME ` VARCHAR
(
    20
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE KEY ` AUTHORITY_UNIQUE_NAME `
(
    `NAME`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `oauth_access_token`
--

CREATE TABLE ` oauth_access_token `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` authentication ` mediumblob DEFAULT NULL,
    ` authentication_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` client_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` refresh_token ` VARCHAR
(
    255
) DEFAULT NULL,
    ` token ` mediumblob DEFAULT NULL,
    ` token_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` user_name ` VARCHAR
(
    255
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `oauth_client_details`
--

CREATE TABLE ` oauth_client_details `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` access_token_validity ` INT
(
    11
) DEFAULT NULL,
    ` additional_information ` VARCHAR
(
    4096
) DEFAULT NULL,
    ` authorities ` VARCHAR
(
    255
) DEFAULT NULL,
    ` authorized_grant_types ` VARCHAR
(
    255
) DEFAULT NULL,
    ` autoapprove ` tinyint
(
    4
) DEFAULT NULL,
    ` client_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` client_name ` VARCHAR
(
    255
) DEFAULT NULL,
    ` client_secret ` VARCHAR
(
    255
) DEFAULT NULL,
    ` created ` datetime
(
    6
) DEFAULT NULL,
    ` ENABLED ` TINYINT DEFAULT 1,
    ` refresh_token_validity ` INT
(
    11
) DEFAULT NULL,
    ` resource_ids ` VARCHAR
(
    255
) DEFAULT NULL,
    ` scope ` VARCHAR
(
    255
) DEFAULT NULL,
    ` uuid ` VARCHAR
(
    255
) DEFAULT NULL,
    ` web_server_redirect_uri ` VARCHAR
(
    255
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `oauth_client_token`
--

CREATE TABLE ` oauth_client_token `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` authentication_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` client_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` token ` mediumblob DEFAULT NULL,
    ` token_id ` VARCHAR
(
    255
) DEFAULT NULL,
    ` user_name ` VARCHAR
(
    255
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `oauth_code`
--

CREATE TABLE ` oauth_code `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` authentication ` mediumblob DEFAULT NULL,
    ` code ` VARCHAR
(
    255
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `oauth_refresh_token`
--

CREATE TABLE ` oauth_refresh_token `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` authentication ` mediumblob DEFAULT NULL,
    ` token ` mediumblob DEFAULT NULL,
    ` token_id ` VARCHAR
(
    255
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `user`
--

CREATE TABLE ` USER `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` account_expired ` BIT
(
    1
) DEFAULT NULL,
    ` account_locked ` BIT
(
    1
) DEFAULT NULL,
    ` credentials_expired ` BIT
(
    1
) DEFAULT NULL,
    ` ENABLED ` TINYINT DEFAULT 1,
    ` PASSWORD ` VARCHAR
(
    255
) DEFAULT NULL,
    ` user_name ` VARCHAR
(
    50
) DEFAULT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE KEY ` USER_UNIQUE_USERNAME `
(
    `user_name`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `user_authority`
--

CREATE TABLE ` user_authority `
(
    `id` BIGINT
(
    20
) unsigned NOT NULL AUTO_INCREMENT,
    ` authority_id ` BIGINT
(
    20
) unsigned DEFAULT NULL,
    ` user_id ` BIGINT
(
    20
) unsigned DEFAULT NULL,
    PRIMARY KEY
(
    `id`
),
    UNIQUE KEY ` USER_AUTHORITY_UNIQUE_USER_ID_AND_AUTHORITY_ID `
(
    `
    user_id
    `,
    `
    authority_id
    `
),
    KEY ` FK_USER_AUTHORITY_AUTHORITY_ID `
(
    `authority_id`
),
    CONSTRAINT ` FK_USER_AUTHORITY_AUTHORITY_ID ` FOREIGN KEY
(
    `authority_id`
) REFERENCES ` authority `
(
    `id`
),
    CONSTRAINT ` FK_USER_AUTHORITY_USER_ID ` FOREIGN KEY
(
    `user_id`
) REFERENCES ` USER `
(
    `id`
)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
