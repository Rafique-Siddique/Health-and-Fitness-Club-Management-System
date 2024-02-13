CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    RegistrationDate DATE
);

CREATE TABLE Trainer (
    TrainerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Certification VARCHAR(255)
);

CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255),
    EventType VARCHAR(255),
    Date DATE,
    Time TIME,
    Location VARCHAR(255),
    MaxParticipants INT
);

CREATE TABLE MaintenanceLog (
    MaintenanceID INT PRIMARY KEY,
    EquipmentName VARCHAR(255),
    MaintenanceDate DATE,
    Description VARCHAR(255),
    MaintenanceCost DECIMAL(10, 2)
);

CREATE TABLE MembershipPackage (
    PackageID INT PRIMARY KEY,
    PackageName VARCHAR(255),
    PackageCost DECIMAL(10, 2),
    PackageDetails VARCHAR(255)
);

CREATE TABLE AdminStaff (
    StaffID INT PRIMARY KEY,
    Role VARCHAR(255),
    FirstName VARCHAR(255),
    LastName VARCHAR(255)
);

CREATE TABLE Dashboard (
    DashboardID INT PRIMARY KEY,
    MemberID INT,
    Statistics VARCHAR(255),
    Achievements VARCHAR(255),
    Goals VARCHAR(255),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

CREATE TABLE StaffSchedule (
    ScheduleID INT PRIMARY KEY,
    StaffID INT,
    DaysOfWeek VARCHAR(255),
    FOREIGN KEY (StaffID) REFERENCES AdminStaff(StaffID)
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    FeedbackText VARCHAR(255),
    FeedbackDate DATE,
    StaffID INT,
    FOREIGN KEY (StaffID) REFERENCES AdminStaff(StaffID)
);

CREATE TABLE NutritionPlan (
    PlanID INT PRIMARY KEY,
    PlanName VARCHAR(255),
    PlanDescription VARCHAR(255),
    PlanCost DECIMAL(10, 2)
);

CREATE TABLE InstructorAvailability (
    AvailabilityID INT PRIMARY KEY,
    TrainerID INT,
    DaysOfWeek VARCHAR(255),
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);

CREATE TABLE Billing (
    BillingID INT PRIMARY KEY,
    TransactionDate DATE,
    Amount DECIMAL(10, 2)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    BookingType VARCHAR(255),
    Time TIME,
    Date DATE
);

CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(255),
    ClassDescription VARCHAR(255)
);

CREATE TABLE ClassAttendance (
    AttendanceID INT PRIMARY KEY,
    ClassID INT,
    MemberID INT,
    AttendanceStatus VARCHAR(20),
    AttendanceDate DATE,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);



