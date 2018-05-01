-- --------------------------------------------------
-- TABLE IDN_OAUTH2_ACCESS_TOKEN
-- --------------------------------------------------
DELIMITER //

DROP TABLE IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SYNC//

CREATE TABLE `IDN_OAUTH2_ACCESS_TOKEN_SYNC` (
`SYC_ID` INT NOT NULL AUTO_INCREMENT,
 `TOKEN_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`SYC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1//


DROP TRIGGER IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SYNC_INSERT_TRIGGER//
DROP TRIGGER IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SYNC_UPDATE_TRIGGER//


CREATE
	TRIGGER IDN_OAUTH2_ACCESS_TOKEN_SYNC_INSERT_TRIGGER BEFORE INSERT
		ON
		IDN_OAUTH2_ACCESS_TOKEN FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_ACCESS_TOKEN_SYNC(TOKEN_ID)
			VALUES(NEW.TOKEN_ID);
		END//

CREATE
	TRIGGER IDN_OAUTH2_ACCESS_TOKEN_SYNC_UPDATE_TRIGGER BEFORE UPDATE
		ON
		IDN_OAUTH2_ACCESS_TOKEN FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_ACCESS_TOKEN_SYNC(TOKEN_ID)
			VALUES(NEW.TOKEN_ID);
		END//


-- --------------------------------------------------
-- TABLE IDN_OAUTH2_ACCESS_TOKEN_SCOPE
-- --------------------------------------------------

DROP TABLE IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC//

CREATE TABLE `IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC` (
`SYC_ID` INT NOT NULL AUTO_INCREMENT,
 `TOKEN_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`SYC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1//


DROP TRIGGER IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC_INSERT_TRIGGER//
DROP TRIGGER IF EXISTS IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC_UPDATE_TRIGGER//


CREATE
	TRIGGER IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC_INSERT_TRIGGER BEFORE INSERT
		ON
		IDN_OAUTH2_ACCESS_TOKEN_SCOPE FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC(TOKEN_ID)
			VALUES(
				NEW.TOKEN_ID
			);
END//

CREATE
	TRIGGER IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC_UPDATE_TRIGGER BEFORE UPDATE
		ON
		IDN_OAUTH2_ACCESS_TOKEN_SCOPE FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_ACCESS_TOKEN_SCOPE_SYNC(TOKEN_ID)
			VALUES(NEW.TOKEN_ID);
END//


-- --------------------------------------------------
-- TABLE IDN_OAUTH2_AUTHORIZATION_CODE
-- --------------------------------------------------

DROP TABLE IF EXISTS IDN_OAUTH2_AUTHORIZATION_CODE_SYNC//

CREATE TABLE `IDN_OAUTH2_AUTHORIZATION_CODE_SYNC` (
`SYC_ID` INT NOT NULL AUTO_INCREMENT,
 `TOKEN_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`SYC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1//


DROP TRIGGER IF EXISTS IDN_OAUTH2_AUTHORIZATION_CODE_SYNC_INSERT_TRIGGER//
DROP TRIGGER IF EXISTS IDN_OAUTH2_AUTHORIZATION_CODE_SYNC_UPDATE_TRIGGER//


CREATE
	TRIGGER IDN_OAUTH2_AUTHORIZATION_CODE_SYNC_INSERT_TRIGGER BEFORE INSERT
		ON
		IDN_OAUTH2_AUTHORIZATION_CODE FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_AUTHORIZATION_CODE_SYNC(TOKEN_ID)
			VALUES(
				NEW.TOKEN_ID
			);
END//

CREATE
	TRIGGER IDN_OAUTH2_AUTHORIZATION_CODE_SYNC_UPDATE_TRIGGER BEFORE UPDATE
		ON
		IDN_OAUTH2_AUTHORIZATION_CODE FOR EACH ROW BEGIN INSERT
			INTO
				IDN_OAUTH2_AUTHORIZATION_CODE_SYNC(TOKEN_ID)
			VALUES(NEW.TOKEN_ID);
END//

DELIMITER ;


