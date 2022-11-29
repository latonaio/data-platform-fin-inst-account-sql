CREATE TABLE `data_platform_fin_inst_account_header_data` 
(
    `FinInstCountry`                  varchar(3) NOT NULL,
    `FinInstCode`                     varchar(10) NOT NULL,
    `FinInstBusinessPartner`          int(12) NOT NULL,
    `InternalFinInstCustomerID`       int(12) NOT NULL,
    `AccountBusinessPartner`          int(12) NOT NULL,
    `ValidityEndDate`                 date NOT NULL,
    `ValidityStartDate`               date NOT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
        
    PRIMARY KEY (`FinInstCountry`, `FinInstNumber`, `FinInstBusinessPartner`, `InternalFinInstCustomerID`, `AccountBusinessPartner`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformFinInstAccountHeaderData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`) REFERENCES `data_platform_fin_inst_master_general_data` (`FinInstCountry`, `FinInstCode`),
  CONSTRAINT `DataPlatformFinInstAccountHeaderDataFinInstBusinessPartner_fk` FOREIGN KEY (`FinInstBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformFinInstAccountHeaderDataAccountBusinessPartner_fk` FOREIGN KEY (`AccountBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
