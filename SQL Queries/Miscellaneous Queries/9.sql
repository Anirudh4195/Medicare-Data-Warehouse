--TotaMedicalMedicarePaymentAmount
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET TotaMedicalMedicarePaymentAmount = CAST(ISNULL(NULLIF(TotaMedicalMedicarePaymentAmount, ''),0) AS DECIMAL(18,2));




--TotalMedicalMedicarePaymentAmount
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ALTER COLUMN TotaMedicalMedicarePaymentAmount decimal(18,2);


select top 100 [Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis]
from STG_MedicarePhyscianAndSupplier_Formatted
where LEN([Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis]) <2 and
LEN([Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis])!= '';



--Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD column Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis] int;


--Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET [Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation] = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);


select Percent_Of_BeneficiariesIdentifiedWithAtrialFibrillation
from STG_MedicarePhyscianAndSupplier_Formatted


select top 10 Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
from STG_MedicarePhyscianAndSupplier_Formatted;


--Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis
ALTER TABLE STG_MedicarePhyscianAndSupplier_Formatted
ADD Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis int;


--Number_Of_BeneficiariesIdentifiedWithAtrialFibrillation
UPDATE STG_MedicarePhyscianAndSupplier_Formatted
SET Number_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_Osteoarthritis = ISNULL(NULLIF(TRY_PARSE( Right([Percent_Of_BeneficiariesIdentifiedWithRheumatoidArthritis_ Osteoarthritis],2) as int), ''),0) * (NumberOfMedicareBeneficiariesWithMedicalServices + NumberOfMedicareBeneficiariesWithDrugServices);