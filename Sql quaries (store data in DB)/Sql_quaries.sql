use heart_disease;
select * FROM heart_new2;

SELECT COUNT(*) FROM heart_new2;

SELECT COUNT(*) AS total_patients
FROM heart_new2;

SELECT Sex, COUNT(*) AS heart_disease_cases
FROM heart_new2
WHERE HeartDisease = 'Yes'
GROUP BY Sex;

SELECT AgeCategory, COUNT(*) AS cases
FROM heart_new2
WHERE HeartDisease = 'Yes'
GROUP BY AgeCategory
ORDER BY cases DESC;

SELECT Smoking, COUNT(*) AS heart_cases
FROM heart_new2
WHERE HeartDisease = 'Yes'
GROUP BY Smoking;

SELECT AVG(BMI) AS avg_bmi
FROM heart_new2
WHERE HeartDisease = 'Yes';

SELECT PhysicalActivity, COUNT(*) AS cases
FROM heart_new2
WHERE HeartDisease = 'Yes'
GROUP BY PhysicalActivity;

SELECT GenHealth, COUNT(*) AS heart_cases
FROM heart_new2
WHERE HeartDisease = 'Yes'
GROUP BY GenHealth
ORDER BY heart_cases DESC;