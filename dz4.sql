/* Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке*/

select distinct firstname from users order by firstname;

/* Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). 
   Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)*/

  
UPDATE profiles set is_active=0 WHERE   (
    (YEAR(CURRENT_DATE) - YEAR(birthday)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d')) /
  )<18;
  
 /*Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)*/
 
 DELETE FROM `messages` WHERE( 
    (YEAR(CURRENT_DATE) - YEAR(created_at)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(created_at, '%m%d')) 
  )<0;