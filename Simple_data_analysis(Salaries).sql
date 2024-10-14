-- show all  column and rows in the table  

select * from data_new.salaries ;
-- select only employeename and jobtitle columns .
select EmployeeName,JobTitle from data_new.salaries;
-- show the number of employees in the table 
select count(*) from data_new.salaries;
-- show the unique job title in the table.	
select distinct JobTitle from data_new.salaries;
-- show the job title and overtime pay for all employees with overtime pay greater than 50000 .
select Jobtitle,OvertimePay from data_new.salaries
where OvertimePay > 50000 ;
-- show the average base pay for all employees . 
    
select avg(BasePay) as "Avg Baspay" from data_new.salaries ; 
-- show the top 10 highest paid employees .
select TotalPay,EmployeeName from data_new.salaries
order by TotalPay desc
limit 10 ;
-- show the average of basepay , overtimePay,and otherpay for each employee : 
select EmployeeName,(BasePay+OvertimePay+OtherPay)/3 as "Avg of bp and otp and op " from data_new.salaries ;
-- show all employees who have the word "Manager" in their job title . 
select EmployeeName,JobTitle from data_new.salaries
where JobTitle like '%Manager%';
-- shoe all employees with a job title not equal to "Manager" . 
 select EmployeeName,JobTitle from data_new.salaries
where JobTitle <> '%Manager%';
-- show all employees with a total pay between 50,000 and 75,000 ;
select * from data_new.salaries 
where TotalPay between 50000 and 75000 ; 
-- show all employees with a base pay less than 50,000 or a total pay greater than 100,000
select * from data_new.salaries
where BasePay < 50000 or TotalPay > 100000 ;
-- show all Employees with a total pay benefits value  between 125.000 and 150.000and a job title containing the word "Director"
select * from data_new.salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle Like "%Director%";
-- show all job title with a average base pay of at least 100.000 and order them by the average base pay in descending order .
select * from data_new.salaries
order by TotalPayBenefits desc ;
-- show all job titles with an average base pay of at least 100.000an order them by the average base pay in descinding order.
select JobTitle,avg(Basepay) as "Avgbasepay"  from data_new.salaries
group by JobTitle
having avg (basepay)  >= 100000 
order by Avgbasepay desc ;
-- Delete the column .
select * from data_new.salaries;
alter table data_new.salaries 
drop column Notes ;
select * from data_new.salaries;
-- 	Update the base pay of all employees withnthe job title containing "Manager" by increasing it by 10 % .
UPDATE data_new.salaries 
SET Basepay = Basepay * 1.1
WHERE JobTitle LIKE '%Manager%';
select * from data_new.salaries;
-- delete all employees hwho have no OvertimePay .
select count(*)  from data_new.salaries
where OvertimePay = 0 ;
delete FROM  data_new.salaries 
where OvertimePay =0 ;
select count(*)  from data_new.salaries
where OvertimePay = 0 ;




	