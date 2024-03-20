SELECT

`t`.`id_kramp` AS `id_kramp`,
`t`.`vendor_code` AS `vendor_code`,
`t`.`name` AS `name`,
`t`.`sale` AS `sale`,

-- tovar_count
( SELECT lead( `t_par`.`val` )  OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_tovar_count` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `tovar_count_old`,
`t`.`tovar_count` AS `tovar_count`,
( SELECT lead( `t_par`.`date` ) OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_tovar_count` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `tovar_count_date_old`,
( SELECT `t_par`.`date` FROM `log_tovars_tovar_count` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ORDER BY `t_par`.`date` DESC LIMIT 1 ) AS `tovar_count_date`,
( SELECT count( `t_par`.`id` ) FROM `log_tovars_tovar_count` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ) AS `tovar_count_upd`, 

-- price
( SELECT lead( `t_par`.`val` )  OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_price` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `price_old`,
`t`.`price` AS `price`,
( SELECT lead( `t_par`.`date` ) OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_price` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `price_date_old`,
( SELECT `t_par`.`date` FROM `log_tovars_price` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ORDER BY `t_par`.`date` DESC LIMIT 1 ) AS `price_date`,
( SELECT count( `t_par`.`id` ) FROM `log_tovars_price` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ) AS `price_upd`, 

-- price_base
( SELECT lead( `t_par`.`val` )  OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_price_base` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `price_base_old`,
`t`.`price_base` AS `price_base`,
( SELECT lead( `t_par`.`date` ) OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_price_base` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `price_base_date_old`,
( SELECT `t_par`.`date` FROM `log_tovars_price_base` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ORDER BY `t_par`.`date` DESC LIMIT 1 ) AS `price_base_date`,
( SELECT count( `t_par`.`id` ) FROM `log_tovars_price_base` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ) AS `price_base_upd`, 

-- site
( SELECT lead( `t_par`.`val` )  OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_site` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `site_old`,
`t`.`site` AS `site`,
( SELECT lead( `t_par`.`date` ) OVER ( ORDER BY `t_par`.`date` DESC ) FROM `log_tovars_site` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) LIMIT 1 ) AS `site_date_old`,
( SELECT `t_par`.`date` FROM `log_tovars_site` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ORDER BY `t_par`.`date` DESC LIMIT 1 ) AS `site_date`,
( SELECT count( `t_par`.`id` ) FROM `log_tovars_site` as t_par  WHERE( `t`.`id_kramp` = `t_par`.`id_kramp` ) ) AS `site_upd` 


FROM `tovars` AS t
