CREATE TABLE `data_platform_fin_inst_master_business_partner_data`  -- 新規追加
(
    `FinInstCountry`           varchar(3) NOT NULL,          -- 新規追加 
    `FinInstNumber`            varchar(15) NOT NULL,         -- 新規追加
    `FinInstBusinessPartner`   int(10) NOT NULL,             -- 新規追加
    `ValidityEndDate`          varchar(80) NOT NULL,         -- 新規追加
    `ValidityStartDate`        varchar(80) DEFAULT NULL,     -- 新規追加
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,      -- 新規追加
    PRIMARY KEY (`FinInstCountry`, `FinInstNumber`, `FinInstBusinessPartner`, `ValidityEndDate`),
    CONSTRAINT `DataPlatformFinInstMasterBusinessPartnerData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstNumber`) REFERENCES `data_platform_fin_inst_master_general_data` (`FinInstCountry`, `FinInstNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
