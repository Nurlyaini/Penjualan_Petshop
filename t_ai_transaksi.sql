DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `dbpetshop_klp6`.`t_ai_transaksi` AFTER INSERT
    ON `dbpetshop_klp6`.`transaksi`
    FOR EACH ROW BEGIN
	UPDATE barang SET barangstok = barangstok-new.qty WHERE barangid=new.t_idbarang;
    END$$

DELIMITER ;