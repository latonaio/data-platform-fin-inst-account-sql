CREATE TABLE `data_platform_fin_inst_account_header_data` 
(
    `FinInstCountry`                  varchar(3) NOT NULL, 
    `FinInstCode`                     varchar(10) NOT NULL,
    `FinInstBranchCode`               varchar(10) NOT NULL,
    `FinInstFullCode`                 varchar(15) NOT NULL,
    `InternalFinInstCustomerID`       int(12) NOT NULL,
    `ValidityEndDate`                 date NOT NULL,
    `ValidityStartDate`               date NOT NULL,
    `AccountBusinessPartner`          int(12) DEFAULT NULL,
    `FinInstBusinessPartner`          int(12) DEFAULT NULL,
    `FinInstBranchBusinessPartner`    int(12) DEFAULT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformFinInstAccountHeaderData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`) REFERENCES `data_platform_fin_inst_master_branch_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`),
  CONSTRAINT `DataPlatformFinInstAccountHeaderDataAccountBusinessPartner_fk` FOREIGN KEY (`AccountBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformFinInstAccountHeaderDataFinInstBusinessPartner_fk` FOREIGN KEY (`FinInstBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformFinInstAccountHeaderDataFinInstBranchBusinessPartner_fk` FOREIGN KEY (`FinInstBranchBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
