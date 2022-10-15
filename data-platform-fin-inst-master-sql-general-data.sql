CREATE TABLE `data_platform_fin_inst_master_general_data`  -- 名称変更 
(
    `FinInstCountry`         varchar(3) NOT NULL,           -- 名称変更 
    `FinInstNumber`          varchar(15) NOT NULL,          -- 名称変更
    `FinInstName`            varchar(100) DEFAULT NULL,     -- 名称変更
    `FinInstBranchName`      varchar(100) DEFAULT NULL,     -- 名称変更
    `AddressID`              int(10) DEFAULT NULL,          -- 新規追加
    `SWIFTCode`              varchar(11) DEFAULT NULL,
    `IsMarkedForDeletion`    tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`FinInstCountry`, `FinInstNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
