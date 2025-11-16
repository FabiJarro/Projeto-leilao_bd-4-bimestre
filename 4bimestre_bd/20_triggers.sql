-- 20- triggers

USE leilao_bd;

-- 1. Impedir lance menor que o último
DELIMITER //
CREATE TRIGGER trg_valida_lance
BEFORE INSERT ON lances
FOR EACH ROW
BEGIN
    DECLARE ultimo DECIMAL(10,2);

    SELECT valor_lance INTO ultimo
    FROM lances
    WHERE id_produto = NEW.id_produto
    ORDER BY horario_lance DESC
    LIMIT 1;

    IF ultimo IS NOT NULL AND NEW.valor_lance <= ultimo THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Lance deve ser maior que o anterior';
    END IF;

END //
DELIMITER ;

-- 2. Impedir que o dono do produto dê lance no próprio produto
DELIMITER //
CREATE TRIGGER trg_bloqueia_dono
BEFORE INSERT ON lances
FOR EACH ROW
BEGIN
    DECLARE dono INT;

    SELECT id_usuario INTO dono FROM produtos WHERE id_produto = NEW.id_produto;

    IF NEW.id_usuario = dono THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O dono do produto não pode dar lance nele';
    END IF;
END //
DELIMITER ;
