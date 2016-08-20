CREATE PROCEDURE `Screen_Bank_Data`()
BEGIN
	IF ( SELECT count(*) <> 0 AS MissingID
	FROM bank_data
	WHERE bank_data.id	IS NULL) THEN
		INSERT error_events (screenid, errortimestamp) VALUES (1, current_timestamp() );
    END IF;

	IF (EXISTS(SELECT age AS NegativeAge
	FROM bank_data
	WHERE age < 0)) THEN
		INSERT error_events (screenid, errortimestamp) VALUES (2,CURRENT_TIMESTAMP());
	END IF;

	IF (EXISTS (SELECT age AS OutOfRangeAge
	FROM bank_data
	WHERE NOT(age BETWEEN 0 AND 150))) THEN
		INSERT error_events (screenid, errortimestamp) VALUES (3, CURRENT_TIMESTAMP());
	END IF;
END