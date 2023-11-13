CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `loja_1`.`view_consulta` AS
    SELECT 
        `loja_1`.`contareceber`.`ID` AS `ID`,
        `loja_1`.`cliente`.`Nome` AS `Nome`,
        `loja_1`.`cliente`.`CPF` AS `CPF`,
        `loja_1`.`contareceber`.`DataVencimento` AS `DataVencimento`,
        `loja_1`.`contareceber`.`Valor` AS `Valor`
    FROM
        (`loja_1`.`contareceber`
        JOIN `loja_1`.`cliente` ON ((`loja_1`.`contareceber`.`ID` = `loja_1`.`cliente`.`ID`)))
    WHERE
        (`loja_1`.`contareceber`.Situação = 1)