-- Inserting a new member
INSERT INTO Member (FirstName, LastName, Email, PhoneNumber, Address, DateOfBirth, Gender, RegistrationDate)
VALUES ('Fahim', 'Ali', 'fahimali@example.com', '613-555-1234', '123 Main St', '2003-01-01', 'Male', '2023-01-15');

-- Delete a member with a specific MemberID
DELETE FROM Member
WHERE MemberID = 1;


-- Create a new AdminStaff
INSERT INTO AdminStaff (Role, FirstName, LastName)
VALUES ('Manager', 'Fahim', 'A');

-- Create a Feedback
INSERT INTO Feedback (FeedbackText, FeedbackDate, StaffID)
VALUES ('Excellent service!', '2023-03-05', 2);


-- Create a Dashboard
INSERT INTO Dashboard (MemberID, Statistics, Achievements, Goals)
VALUES (1, '50 workouts completed', 'Lost 5 pounds', 'Run a marathon'),
(2, '20 workouts completed', 'Gained muscle mass', 'Improve flexibility');


-- Create a new trainer
INSERT INTO Trainer (FirstName, LastName, Email, PhoneNumber, Specialization, Certification)
VALUES ('Jane', 'Doe', 'jane.doe@example.com', '555-5678', 'Yoga Instructor', 'Yoga Certification');

-- Creating a class
INSERT INTO Class (ClassID, ClassName, ClassDescription)
VALUES (1, 'Yoga Class', 'A relaxing yoga session for all levels of experience.');

-- Inserting members into the Yoga Class
INSERT INTO ClassAttendance (ClassID, MemberID, AttendanceStatus, AttendanceDate)
VALUES
    (1, 1, 'Present', '2023-04-01'),
    (1, 2, 'Present', '2023-04-01'),
    (1, 3, 'Absent', '2023-04-01');

-- Selecting classID, memberID and AttendanceStatus
Select classid, memberid, attendancestatus from ClassAttendance;

-- Retrieves the first name, last name, attendance status, and date of members who attended the "Yoga Class" on a specific date.
SELECT
    Member.FirstName,
    Member.LastName,
    ClassAttendance.AttendanceStatus,
    ClassAttendance.AttendanceDate
FROM
    Member
JOIN
    ClassAttendance ON Member.MemberID = ClassAttendance.MemberID
JOIN
    Class ON ClassAttendance.ClassID = Class.ClassID
WHERE
    Class.ClassName = 'Yoga Class'
AND ClassAttendance.AttendanceDate = '2023-04-01';


-- Inserting membership packages
INSERT INTO MembershipPackage (MemberID, PackageName, PackageCost, PackageDetails)
VALUES
    (1, 'Standard', 50.00, 'Basic package with access to gym facilities'),
    (2, 'Premium', 80.00, 'Includes additional fitness classes and personal trainer sessions');
