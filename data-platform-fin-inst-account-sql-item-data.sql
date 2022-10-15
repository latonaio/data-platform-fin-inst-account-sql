CREATE TABLE `data_platform_fin_inst_account_item_data`  -- 新規追加 
(
    `FinInstCountry`            varchar(3) NOT NULL,          -- 新規追加
    `FinInstNumber`             varchar(15) NOT NULL,         -- 新規追加
    `InternalFinInstCustomerID` int(10) NOT NULL,             -- 新規追加
    `InternalFinInstAccountID`  int(10) NOT NULL,             -- 新規追加
    `ValidityEndDate`           varchar(80) NOT NULL,         -- 新規追加
    `ValidityStartDate`         varchar(80) DEFAULT NULL,     -- 新規追加
    `FinInstControlKey`         varchar(2) DEFAULT NULL,      -- 新規追加
    `FinInstAccountName`        varchar(40) DEFAULT NULL,     -- 新規追加
    `FinInstAccount`            varchar(18) DEFAULT NULL,     -- 新規追加
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,      -- 新規追加
    PRIMARY KEY (`FinInstCountry`, `FinInstNumber`, InternalBankCustomerID`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`),
    CONSTRAINT `DataPlatformFinInstAccountItemData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstNumber`, InternalFinInstCustomerID`) REFERENCES `data_platform_fin_inst_account_header_data` (`FinInstCountry`, `FinInstNumber`, InternalFinInstCustomerID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
