select * from telco3

-->Churn Rate Distribution
select "Churn", COUNT(*)/ SUM(Count(*)) over () *100 as Overall_ChurnRate
from telco3 group by "Churn"

--> Total Charges by Churn status
select "Churn", cast(avg("TotalCharges") as DECIMAL(10,2)) as AVG_TOTAL_CHARGE
from telco3 group by "Churn"

--> Churn Rate by Contract
select "Contract", Count("Churn") as ChurnRate 
from telco3
Where "Churn" = 1
group by "Contract"
order by ChurnRate desc

-->Churn rate by Gender
select gender, Count("Churn") from telco3
where "Churn" = 1
group by gender

-->Churn Rate by Payment method
select "PaymentMethod", Count("Churn") as ChurnRate 
from telco3
Where "Churn" = 1
group by "PaymentMethod"
order by ChurnRate desc


-->AVERAGE REVENUE PER user based on tenure
select tenure_group, cast(sum("TotalCharges")/Count(*) as DECIMAL(10,2)) as AVERAGE_REVENUE_PER_USER
from telco3
group by tenure_group order by average_revenue_per_user DESC


--> Average Revenue per user
select AVG("TotalCharges")as ARPU from telco3


--> Customer Lifetime Value
select "customerID", "TotalCharges" as CLV  from telco3


-->Average Customer Lifetime Value by tenure
select "tenure_group", Floor(Avg("TotalCharges")) as CLV  from telco3
group by "tenure_group"
order by CLV desc

-->Average Customer Lifetime Value by Churn status
select "Churn", Floor(Avg("TotalCharges")) as CLV  from telco3
group by "Churn"
order by CLV desc

---> High risk Customers %
with base as (
	select "Segment", "customerID" from telco3
	group by "customerID", "Segment"),
base2 as (
	select "Segment", Count("customerID") as total_customer
	from base
	group by "Segment" order by total_customer)
	
select "Segment", total_customer, Concat(cast(total_customer *100/ Sum(total_customer) over () as Decimal(10,2)), '%') as Churn_percenatge 
from base2









