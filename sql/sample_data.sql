-- INSERT OWNERS
INSERT INTO OWNERS (FullName, Email, Phone) VALUES ('Jane Doe', 'jane.doe@email.com', '201-555-0123');
INSERT INTO OWNERS (FullName, Email, Phone) VALUES ('Bob Miller', 'bob.m@email.com', '201-555-4455');

-- INSERT TENANTS
INSERT INTO TENANTS (FullName, Email, Phone) VALUES ('Mark Smith', 'm.smith@email.com', '201-555-9876');
INSERT INTO TENANTS (FullName, Email, Phone) VALUES ('Sarah Connor', 's.connor@email.com', '201-555-2233');

-- INSERT PROPERTIES (Uses OwnerIDs 1 and 2)
INSERT INTO PROPERTIES (OwnerID, Address, PropertyType, RentAmount) 
VALUES (1, '789 Anderson Ave, Cliffside Park', 'Apartment', 2500.00);
INSERT INTO PROPERTIES (OwnerID, Address, PropertyType, RentAmount) 
VALUES (2, '456 Palisades Blvd, Fort Lee', 'House', 3800.00);

-- INSERT LEASES (Uses PropertyIDs 1, 2 and TenantIDs 1, 2)
INSERT INTO LEASES (PropertyID, TenantID, StartDate, EndDate, MonthlyRent, DepositAmount)
VALUES (1, 1, TO_DATE('2026-05-01', 'YYYY-MM-DD'), TO_DATE('2027-04-30', 'YYYY-MM-DD'), 2500.00, 3750.00);
INSERT INTO LEASES (PropertyID, TenantID, StartDate, EndDate, MonthlyRent, DepositAmount)
VALUES (2, 2, TO_DATE('2026-06-01', 'YYYY-MM-DD'), TO_DATE('2027-05-31', 'YYYY-MM-DD'), 3800.00, 5000.00);

-- INSERT PAYMENTS (Linked to LeaseIDs 1 and 2)
INSERT INTO PAYMENTS (LeaseID, AmountPaid, PaymentStatus, PaymentMethod)
VALUES (1, 2500.00, 'Paid', 'Electronic Transfer');
INSERT INTO PAYMENTS (LeaseID, AmountPaid, PaymentStatus, PaymentMethod)
VALUES (2, 3800.00, 'Pending', 'Check');

-- Commit ensures the data is saved in Oracle
COMMIT;
