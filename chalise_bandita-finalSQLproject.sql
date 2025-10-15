-- Bandita Chalise | April 18, 2025
--2
SELECT * 
FROM Doctors;

-- Bandita Chalise | April 18, 2025
--3
SELECT * 
INTO DoctorsCopy 
FROM Doctors;
--  Add new doctors
INSERT INTO DoctorsCopy (Doctor_ID, first_Name,last_Name, speciality)
VALUES 
(2400, 'Selena Miller', 'Neurologist'),
(2130, 'Tracy Wolfe', 'Psychiatrist');
-- Display all records
SELECT * 
FROM DoctorsCopy;

-- Bandita Chalise | April 18, 2025
--4
SELECT * 
FROM Patients
WHERE last_Name LIKE '%e';

-- Bandita Chalise | April 18, 2025
--5
SELECT   first_Name,   last_Name, 
  LEFT(Phone, 5) AS AreaCode
FROM Patients;

-- Bandita Chalise | April 18, 2025
--6
UPDATE DoctorsCopy
SET Doctor_ID = 1
WHERE first_name = 'Michael' and last_name = 'Lewis';
--check
select*
from DoctorsCopy

-- Bandita Chalise | April 18, 2025
--7 
SELECT 
    Admissions.AdmitNo,
    Patients.PatId, Patients.first_Name, Patients.last_Name,
    Doctors.Doctor_Id, Doctors.first_Name, Doctors.last_Name, Doctors.speciality,
    Admissions.Admission_Date, Admissions.Discharge_Date
FROM Admissions
JOIN Patients ON Admissions.PatId = Patients.PatId
JOIN Doctors ON Admissions.Admit_Doct = Doctors.Doctor_Id;

-- Bandita Chalise | April 18, 2025
--8
SELECT DISTINCT Patients.PatId, Patients.first_Name, Patients.last_Name
FROM Patients
JOIN Admissions ON Patients.PatId = Admissions.PatId
JOIN Diagnostics ON Admissions.Diag_code = Diagnostics.DiagNo
WHERE Diagnostics.Description = 'Tuberculosis';


-- Bandita Chalise | April 18, 2025
--9
SELECT COUNT(DISTINCT DiagNo) AS NumberOfDiagnostics
FROM Diagnostics;

-- Bandita Chalise | April 18, 2025
--10
SELECT 
    Patients.PatId, Patients.first_Name, Patients.last_Name,
    Doctors.Doctor_Id, Doctors.first_Name, Doctors.last_Name, Doctors.speciality,
    Admissions.AdmitNo, Admissions.Admission_Date, Admissions.Discharge_Date,
    Diagnostics.Description, Diagnostics.Cost
FROM Patients
JOIN Admissions ON Patients.PatId = Admissions.PatId
JOIN Doctors ON Admissions.Admit_Doct = Doctors.Doctor_Id
JOIN Diagnostics ON Admissions.Diag_code = Diagnostics.DiagNo;
