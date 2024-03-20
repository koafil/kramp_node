SELECT

`t`.`id_kramp` AS `id_kramp`,

( SELECT lead( `t_cnt`.`val` )  OVER ( ORDER BY `t_cnt`.`date` DESC ) FROM `log_tovars_tovar_count` as t_cnt  WHERE( `t`.`id_kramp` = `t_cnt`.`id_kramp` ) LIMIT 1 ) AS `tovar_count_old`,

`t`.`tovar_count` AS `tovar_count`,

( SELECT lead( `t_cnt`.`date` ) OVER ( ORDER BY `t_cnt`.`date` DESC ) FROM `log_tovars_tovar_count` as t_cnt  WHERE( `t`.`id_kramp` = `t_cnt`.`id_kramp` ) LIMIT 1 ) AS `tovar_count_date_old`,

( SELECT `t_cnt`.`date` FROM `log_tovars_tovar_count` as t_cnt  WHERE( `t`.`id_kramp` = `t_cnt`.`id_kramp` ) ORDER BY `t_cnt`.`date` DESC LIMIT 1 ) AS `tovar_count_date`,

( SELECT count( `t_cnt`.`id` ) FROM `log_tovars_tovar_count` as t_cnt  WHERE( `t`.`id_kramp` = `t_cnt`.`id_kramp` ) ) AS `updates_count` 

FROM `tovars` AS t
