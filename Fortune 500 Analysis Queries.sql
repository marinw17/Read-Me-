--Project #2: Fortune 500 Analysis


select *
from fortune_companies;


--Which companies in the Technology or Financials industries offer healthcare benefits and have more than 50,000 employees?

select company_name, industry, healthcare_benefits
from fortune_companies
where industry = 'Technology'
or industry = 'Financials'
and employees > 50000
and healthcare_benefits	= 1;


--What are the top 3 companies that generate the highest total revenue, and how many employees do they have?

select company_name, revenue, employees
from fortune_companies 
order by revenue desc
limit 3;

--How can you categorize companies into “Generous,” “Standard,” or “Limited” based on their paid time off days?

select company_name, 
Case when paid_time_off_days  > 20 Then "Generous" 
when paid_time_off_days >= 14 Then "Standard"
else "Limited"
end as Benefits_tier
from fortune_companies;

--Which industries have an average employee tenure of 5 years or more?

select industry, avg(avg_employee_tenure) as AVG_TENURE
from fortune_companies
group by industry
having avg(avg_employee_tenure) >= 5
order by avg_employee_tenure asc;

--Which industries provide maternity leave of 10 weeks or more on average?

select industry, avg(maternity_leave_weeks) as Maternity_AVG
from fortune_companies
group by industry
having avg(maternity_leave_weeks) >= 10
order by Maternity_AVG desc;
