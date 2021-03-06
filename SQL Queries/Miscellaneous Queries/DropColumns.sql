USE [Medicare]
GO

/****** Object:  Table [dbo].[STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V2B]    Script Date: 4/22/2020 9:15:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B](
	[NPI] [int] NULL,
	[LastName] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](50) NULL,
	[CredentialType] [varchar](50) NULL,
	[Gender] [varchar](100) NULL,
	[EntityType] [varchar](100) NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[CityName] [varchar](100) NULL,
	[ZIPCode] [varchar](100) NULL,
	[StateCode] [varchar](100) NULL,
	[CountryCode] [varchar](100) NULL,
	[ProviderTypeDescription] [varchar](70) NULL,
	[MedicareParticipationIndicator] [varchar](1000) NULL,
	[NumberOfHCPCS] [varchar](1000) NULL,
	[NumberOfServices] [varchar](1000) NULL,
	[NumberOfMedicareBeneficiaries] [varchar](1000) NULL,
	[TotalSubmittedChargeAmount] [varchar](1000) NULL,
	[TotalMedicareAllowedAmount] [varchar](1000) NULL,
	[TotalMedicarePaymentAmount] [varchar](1000) NULL,
	[DrugSupressIndicator] [varchar](1000) NULL,
	[NumberOfHCPCSAssociatedWithDrugServices] [varchar](1000) NULL,
	[NumberOfDrugServices] [int] NULL,
	[NumberOfMedicareBeneficiariesWithDrugServices] [int] NULL,
	[TotalDrugSubmittedChargeAmount] [decimal](18, 2) NULL,
	[TotalDrugMedicareAllowedAmount] [decimal](18, 2) NULL,
	[TotalDrugMedicarePaymentAmount] [decimal](18, 2) NULL,
	[MedicalSuppressIndicator] [varchar](1000) NULL,
	[NumberOfHCPCSAssociatedWithMedicalServices] [varchar](1000) NULL,
	[NumberofMedical Services] [int] NULL,
	[NumberOfMedicareBeneficiariesWithMedicalServices] [int] NULL,
	[TotalMedicalSubmittedChargeAmount] [varchar](1000) NULL,
	[TotalMedicalMedicareAllowedAmount] [decimal](18, 2) NULL,
	[TotaMedicalMedicarePaymentAmount] [decimal](18, 2) NULL,
	[AverageAgeOfBeneficiaries] [varchar](1000) NULL,
	[NumberOfBeneficiaries_Age_65_To_74] [int] NULL,
	[NumberOfBeneficiaries_Age_75_ To_84] [int] NULL,
	[NumberOfBeneficiaries_Age_ Greater_84] [int] NULL,
	[NumberOfFemaleBeneficiaries] [int] NULL,
	[NumberOfBlackOrAfricanAmerican_Beneficiaries] [int] NULL,
	[NumberOfAsianPacificIslander_ Beneficiaries] [int] NULL,
	[NumberOfHispanic_Beneficiaries] [int] NULL,
	[NumberOfAmerican Indian_AlaskaNative_Beneficiaries] [int] NULL,
	[NumberOfBeneficiaries_WithRaceNotElsewhereClassified] [int] NULL,
	[NumberOfBeneficiaries_WithMedicareOnlyEntitlement] [varchar](1000) NULL,
	[NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithAsthma] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithCancer] [varchar](1000) NULL,
	[Percent_Of_Beneficiaries IdentifiedWithHeartFailure] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithChronicObstructivePulmonaryDisease] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithDepression] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithDiabetes] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithHyperlipidemia] [varchar](1000) NULL,
	[BeneficiariesIdentifiedWithHypertension] [varchar](1000) NULL,
	[BeneficiariesIdentifiedWithIschemicHeartDisease] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithOsteoporosis] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithSchizophreniaOtherPsychoticDisorders] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithStroke] [varchar](1000) NULL,
	[NumberOfBeneficiaries_AgeLess_ 65] [int] NULL,
	[NumberOfMaleBeneficiaries] [int] NULL,
	[NumberOfNon-HispanicWhite_Beneficiaries] [varchar](1000) NULL,
	[Percent_Of_BeneficiariesIdentifiedWithAlzheimersDisease_Or_Dementia] [varchar](1000) NULL,
	[RecordedYear] [nvarchar](4) NULL,
	[Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithChronicKidneyDisease] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithHeartFailure] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithCancer] [int] NULL,
	[Number_Of_BeneficiariesIdentifiedWithDiabetes] [int] NULL,
	[EnrollmentID] [int] NULL,
	[DMEPOSClaim_IND] [varchar](2) NULL,
	[HHAClaim_IND] [varchar](2) NULL,
	[ProviderTypeCode] [varchar](50) NULL,
	[NameID] [int] NULL,
	[ProviderNameID] [int] NULL,
	[ProviderAddressID] [bigint] NULL
) ON [PRIMARY]
GO





select count(*)
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B;

select * into STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V5
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B;


--Columns to be dropped:
--CredentialType,Gender,EntityType,ProviderTypeDescription,MedicareParticipationIndicator,NumberOfHCPCS,
--NumberOfServices,NumberOfMedicareBeneficiaries,TotalSubmittedChargeAmount,TotalMedicareAllowedAmount,
--TotalMedicarePaymentAmount,DrugSupressIndicator,NumberOfHCPCSAssociatedWithDrugServices,MedicalSuppressIndicator, 
--NumberOfHCPCSAssociatedWithMedicalServices,TotalMedicalSubmittedChargeAmount,AverageAgeOfBeneficiaries,
--NumberOfBeneficiaries_WithMedicareOnlyEntitlement,NumberOfBeneficiaries_WithMedicare_MedicaidEntitlement,
--AllPercentfields
--NumberOfNon-HispanicWhite_Beneficiaries,


select top 100 TotalMedical_SubmittedChargeAmount
from STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B;

ALter Table STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B
ADD TotalMedical_SubmittedChargeAmount DECIMAL(18,2);


--TotalMedical_SubmittedChargeAmount
UPDATE STG_MedicarePhysicianAndSupplier_LookedUp_Transformation_V4B
SET TotalMedical_SubmittedChargeAmount = CAST(ISNULL(NULLIF(TotalMedicalSubmittedChargeAmount, ''),0) AS DECIMAL(18,2));