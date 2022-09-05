CREATE TABLE trigger_text (
	message VARCHAR(100)
);

DROP TABLE trigger_text;

DELIMITER $$
CREATE
	TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_text VALUES('added new employee');
	END$$
DELIMITER ;

INSERT INTO employee VALUES(1021, 'Oscar', 'Martinez1', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_text;

DELIMITER $$
CREATE 
	TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_text VALUES(NEW.first_name);
	END$$
DELIMITER ;

INSERT INTO employee
VALUES(10, 'kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);


DELIMITER $$
CREATE 
	TRIGGER my_trigger AFTER DELETE
    ON employee
    FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN
				INSERT INTO trigger_text VALUES('added male employee');
		ELSEIF NEW.sex = 'F' THEN 
				INSERT INTO trigger_text VALUES('added female');
		ELSE
				INSERT INTO trigger_text VALUES('added other employee');
		END IF;
	END$$;
DELIMITER ;

SELECT * FROM trigger_text;
