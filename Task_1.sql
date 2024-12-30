USE StudentManagement ;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) NOT NULL CHECK (Gender IN ('M', 'F')),
    Age INT NOT NULL,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);
desc Students ;
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Aarav', 'M', 15, 'A', 95, 89, 92),
('Ananya', 'F', 16, 'B', 85, 80, 78),
('Ishita', 'F', 14, 'A', 88, 90, 91),
('Rohan', 'M', 17, 'C', 70, 65, 72),
('Priya', 'F', 15, 'B', 82, 87, 85),
('Arjun', 'M', 16, 'A', 94, 93, 90),
('Kavya', 'F', 14, 'A', 89, 88, 92),
('Vikram', 'M', 17, 'C', 75, 70, 68),
('Sneha', 'F', 15, 'B', 84, 86, 83),
('Rahul', 'M', 16, 'B', 81, 79, 77);

SELECT * FROM Students;

SELECT 
    AVG(MathScore) AS AverageMathScore,
    AVG(ScienceScore) AS AverageScienceScore,
    AVG(EnglishScore) AS AverageEnglishScore
FROM Students;

SELECT 
    Name, 
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;