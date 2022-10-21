-- SQLite
-- SELECT column_name FROM table_name
-- SELECT last_name FROM patients;


-- SELECT first_name, last_name FROM patients;

-- SELECT * FROM doctors;

-- SELECT * FROM patients
-- WHERE age < 40;
-- WHERE column_name = value

-- SELECT * FROM doctors
-- WHERE specialty = 'Psychology'
-- AND first_name = 'Carl';

-- SELECT * FROM doctors
-- ORDER BY last_name ASC;
-- ORDER BY column DESC

-- SELECT COUNT(*) FROM patients;
-- SELECT SUM(age) FROM patients;
-- SELECT AVG(age) FROM patients;
-- SELECT ROUND(AVG(age), 1) FROM patients;

-- SELECT COUNT(*) FROM doctors
-- WHERE specialty = 'Pediatrics';


-- SELECT COUNT(*) c, specialty FROM doctors
-- GROUP BY specialty
-- ORDER BY c DESC;


-- SELECT * FROM consultations
-- JOIN doctors ON doctors.id = consultations.doctor_id;
-- JOIN table_name ON primary_key = foreign_key

-- READ ALL PATIENTS FIRST & LAST NAMES ALONG WITH THEIR CONSULTATIONS DATES

-- SELECT first_name, last_name, occurs_on
-- FROM patients p
-- JOIN consultations c ON c.patient_id = p.id;

-- READ ROSALIND FRANKLIN'S CONSULTATIONS DATES ALONG WITH HER PATIENTS FIRST NAME & LAST NAME

-- SELECT p.first_name, p.last_name, c.occurs_on
-- FROM patients p
-- JOIN consultations c ON c.patient_id = p.id
-- JOIN doctors d ON d.id = c.doctor_id
-- WHERE d.first_name = 'Rosalind'
-- AND d.last_name = 'Franklin'
-- ORDER BY p.last_name DESC;

-- SELECT * FROM doctors
-- WHERE specialty LIKE 'P%';


SELECT * FROM doctors
WHERE first_name = 'carl';

doctors.select do |doctor|
  doctor.first_name == 'Carl'
end
