DROP TABLE IF EXISTS 'temperatures'

CREATE TABLE 'temperatures'(
	'city' varchar(256) DEFAULT NULL,
	'state' varchar(128) DEFAULT NULL,
	'year' int(11) DEFAULT NULL,
	'month' int(11) DEFAULT NULL,
  	'value' int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

