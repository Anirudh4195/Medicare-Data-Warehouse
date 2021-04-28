Objective:

•	To brief about the requirements to be fulfilled by the data warehouse housing Medicare provider beneficiary and monetary data collected from Centers for Medicare & Medicaid Services (CMS) website using Kimball architecture thereby utilizing update-driven approach. 

•	To explain the design to be followed for below parts within Data warehouse:
o	Data flow from Data sources (SOR) till the destination data mart
o	Relational model subject to 3-NF normalization for EDW Integration schema
o	Dimension model for Destination Data mart


Data Description:

1.	Dataset containing the provider information, who are legally eligible to order and refer in the Medicare program and who possess enrolment record in Provider Enrolment and Chain Ownership System (PECOS). This data set will act as lookup to table to filter only eligible providers, who can order and refer.
https://data.cms.gov/Medicare-Enrollment/Order-and-Referring/qcn7-gc3g
2.	Dataset containing the provider information who are actively approved to bill Medicare and  who possess enrolment record in Provider Enrolment and Chain Ownership System (PECOS). This data set will act as lookup to table to filter only approved providers.
https://data.cms.gov/public-provider-enrollment

3.	One dataset category (containing individual datasets from year 2012 to 2017) totalling to 6 datasets containing information about the provider basic details, beneficiary count, services offered to beneficiaries, special service indicators, specific beneficiary information based on factors like age, affected disease and race and monetary information comprising of Amount charged by Provider, Amount allowed by Medicare and Final Amount paid by Medicare.
https://data.cms.gov/utilization-and-payment/related-data


Requirement to be addressed by the data warehouse: 

The built data warehouse will be able to answer the below sample questions, when queried through SQL Server:
•	Top eligible and approved Providers for a particular age group
•	Top eligible and approved Providers for a particular disease type
•	Top eligible and approved Providers based on number of services offered
•	Top eligible and approved Providers in particular city, state and Zip code
•	Top eligible and approved Providers based on amount sanctions by Medicare

