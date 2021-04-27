/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [National Provider Identifier]
      ,[Last Name Organization Name of the Provider]
      ,[First Name of the Provider]
      ,[Middle Initial of the Provider]
      ,[Credentials of the Provider]
      ,[Gender of the Provider]
      ,[Entity Type of the Provider]
      ,[Street Address 1 of the Provider]
      ,[Street Address 2 of the Provider]
      ,[City of the Provider]
      ,[Zip Code of the Provider]
      ,[State Code of the Provider]
      ,[Country Code of the Provider]
      ,[Provider Type of the Provider]
      ,[Medicare Participation Indicator]
      ,[Number of HCPCS]
      ,[Number of Services]
      ,[Number of Medicare Beneficiaries]
      ,[Total Submitted Charge Amount]
      ,[Total Medicare Allowed Amount]
      ,[Total Medicare Payment Amount]
      ,[Drug Suppress Indicator]
      ,[Number of HCPCS Associated With Drug Services]
      ,[Number of Drug Services]
      ,[Number of Medicare Beneficiaries With Drug Services]
      ,[Total Drug Submitted Charge Amount]
      ,[Total Drug Medicare Allowed Amount]
      ,[Total Drug Medicare Payment Amount]
      ,[Medical Suppress Indicator]
      ,[Number of HCPCS Associated With Medical Services]
      ,[Number of Medical Services]
      ,[Number of Medicare Beneficiaries With Medical Services]
      ,[Total Medical Submitted Charge Amount]
      ,[Total Medical Medicare Allowed Amount]
      ,[Total Medical Medicare Payment Amount]
      ,[Average Age of Beneficiaries]
      ,[Number of Beneficiaries Age 65 to 74]
      ,[Number of Beneficiaries Age 75 to 84]
      ,[Number of Beneficiaries Age Greater 84]
      ,[Number of Female Beneficiaries]
      ,[Number of Black or African American Beneficiaries]
      ,[Number of Asian Pacific Islander Beneficiaries]
      ,[Number of Hispanic Beneficiaries]
      ,[Number of American Indian Alaska Native Beneficiaries]
      ,[Number of Beneficiaries With Race Not Elsewhere Classified]
      ,[Number of Beneficiaries With Medicare Only Entitlement]
      ,[Number of Beneficiaries With Medicare & Medicaid Entitlement]
      ,[Percent (%) of Beneficiaries Identified With Atrial Fibrillation]
      ,[Percent (%) of Beneficiaries Identified With Asthma]
      ,[Percent (%) of Beneficiaries Identified With Cancer]
      ,[Percent (%) of Beneficiaries Identified With Heart Failure]
      ,[Percent (%) of Beneficiaries Identified With Chronic Kidney Disease]
      ,[Percent (%) of Beneficiaries Identified With Chronic Obstructive Pulmonary Disease]
      ,[Percent (%) of Beneficiaries Identified With Depression]
      ,[Percent (%) of Beneficiaries Identified With Diabetes]
      ,[Percent (%) of Beneficiaries Identified With Hyperlipidemia]
      ,[Percent (%) of Beneficiaries Identified With Hypertension]
      ,[Percent (%) of Beneficiaries Identified With Ischemic Heart Disease]
      ,[Percent (%) of Beneficiaries Identified With Osteoporosis]
      ,[Percent (%) of Beneficiaries Identified With Rheumatoid Arthritis   Osteoarthritis]
      ,[Percent (%) of Beneficiaries Identified With Schizophrenia   Other Psychotic Disorders]
      ,[Percent (%) of Beneficiaries Identified With Stroke]
      ,[Number of Beneficiaries Age Less than 65]
      ,[Number of Male Beneficiaries]
      ,[Number of Non-Hispanic White Beneficiaries]
      ,[Percent (%) of Beneficiaries Identified With Alzheimer’s Disease or Dementia]
      ,[Year]
	  into STG_EligibleAndEnrolled_MedicarePhyscialAndSupplier
  FROM [Medicare].[dbo].[STG_MedicarePhyscianAndSupplier]