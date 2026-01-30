select gender, count(gender) as TotalCount,
count(gender) * 100.0/ (select count(*) from cd_Churn) as Percentage
from cd_Churn
group by gender


select Contract, count(Contract) as TotalCount,
count(Contract) * 100.0/ (select count(*) from cd_Churn) as Percentage
from cd_Churn
group by Contract


select Customer_Status, count(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (select sum(Total_Revenue) from cd_Churn) * 100.0 as Percentage
from cd_Churn
group by Customer_Status

select State,count(State) as TotalCount,
count(State) * 100.0/ (select count(*) from cd_Churn) as Percentage
from cd_Churn
group by State
order by TotalCount desc;


select  Internet_Type, count(Internet_Type) as TotalCount,
count(Internet_Type) * 100.0/ (select count(*) from cd_Churn) as Percentage
from cd_Churn
group by Internet_Type

