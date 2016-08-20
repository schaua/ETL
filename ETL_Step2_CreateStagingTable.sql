CREATE TABLE `bank_data` (
  `id` text,
  `age` int(11) DEFAULT NULL,
  `sex` text,
  `region` text,
  `income` double DEFAULT NULL,
  `married` text,
  `children` int(11) DEFAULT NULL,
  `car` text,
  `save_act` text,
  `current_act` text,
  `mortgage` text,
  `pep` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
