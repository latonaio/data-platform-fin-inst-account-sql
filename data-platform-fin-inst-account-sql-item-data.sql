CREATE TABLE `data_platform_fin_inst_account_item_data`
(
    `FinInstCountry`            varchar(3) NOT NULL, 
    `FinInstCode`               varchar(10) NOT NULL,
    `FinInstBranchCode`         varchar(10) NOT NULL,
    `FinInstFullCode`           varchar(15) NOT NULL,
    `InternalFinInstCustomerID` int(12) NOT NULL,
    `InternalFinInstAccountID`  int(12) NOT NULL,
    `ValidityEndDate`           date NOT NULL,
    `ValidityStartDate`         date NOT NULL,
    `FinInstControlKey`         varchar(2) DEFAULT NULL,
    `FinInstAccountName`        varchar(40) DEFAULT NULL,
    `FinInstAccount`            varchar(18) DEFAULT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `ValidityEndDate`, `ValidityStartDate`),
    
    CONSTRAINT `DataPlatformFinInstAccountItemData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `InternalFinInstCustomerID`) REFERENCES `data_platform_fin_inst_account_header_data` (`FinInstCountry`, `FinInstCode`, `InternalFinInstCustomerID`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
