/* �������� ������, ������������ ������ ���� (������ firstname) ������������� ��� ���������� � ���������� �������*/

select distinct firstname from users order by firstname;

/* �������� ������, ���������� ������������������ ������������� ��� ���������� (���� is_active = false). 
   �������������� �������� ����� ���� � ������� profiles �� ��������� �� ��������� = true (��� 1)*/

  
UPDATE profiles set is_active=0 WHERE   (
    (YEAR(CURRENT_DATE) - YEAR(birthday)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d')) /
  )<18;
  
 /*�������� ������, ��������� ��������� ��� �������� (���� ������ �����������)*/
 
 DELETE FROM `messages` WHERE( 
    (YEAR(CURRENT_DATE) - YEAR(created_at)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(created_at, '%m%d')) 
  )<0;