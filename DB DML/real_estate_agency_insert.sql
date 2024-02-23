-- Inserting records into the 'agents' table
INSERT INTO agents (first_name, last_name, commission, contacts)
VALUES
  ('John', 'Doe', 5, 'john.doe@example.com, +1534567810'),
  ('Jane', 'Smith', 7, 'jane.smith@example.com, +1187654351'),
  ('Bob', 'Johnson', 6, 'bob.johnson@example.com, +1654351810'),
  ('Alice', 'Williams', 8, 'alice.williams@example.com, +1435187650'),
  ('Charlie', 'Brown', 5, 'charlie.brown@example.com, +1765435181'),
  ('Eva', 'Davis', 7, 'eva.davis@example.com, +1543511870'),
  ('David', 'Wilson', 6, 'david.wilson@example.com, +1354187657'),
  ('Sophia', 'Miller', 8, 'sophia.miller@example.com, +1876543510'),
  ('Daniel', 'Moore', 5, 'daniel.moore@example.com, +1543658710'),
  ('Emma', 'Taylor', 7, 'emma.taylor@example.com, +1187654351'),
  ('Michael', 'Anderson', 1, 'michael.anderson@example.com, +1408356278'),
  ('Olivia', 'Johnson', 9, 'olivia.johnson@example.com, +1408658295'),
  ('William', 'Brown', 9, 'william.brown@example.com, +1408583053'),
  ('Ava', 'Smith', 2, 'ava.smith@example.com, +1408498243'),
  ('James', 'Williams', 3, 'james.williams@example.com, +1408473928'),
  ('Sophia', 'Davis', 3, 'sophia.davis@example.com, +1408348205'),
  ('Alexander', 'Wilson', 4, 'alexander.wilson@example.com, +1408394729'),
  ('Emma', 'Miller', 7, 'emma.miller@example.com, +1408285719'),
  ('Daniel', 'Moore', 2, 'daniel.moore@example.com, +1408359234'),
  ('Grace', 'Taylor', 5, 'grace.taylor@example.com, +1408342789');

-- Inserting records into the 'real_estates' table
INSERT INTO real_estates (area, type, number_of_rooms, floor, number_of_floors, living_space, cost, status, agent_id)
VALUES
  (120, 'Apartment', 3, 2, 5, 90, 150000, 'Available', 1),
  (80, 'House', 4, 1, 2, 120, 200000, 'Sold', 2),
  (150, 'Condo', 5, 5, 10, 110, 180000, 'Available', 3),
  (100, 'Apartment', 2, 3, 6, 80, 120000, 'Available', 4),
  (200, 'House', 6, 2, 3, 180, 250000, 'Sold', 5),
  (90, 'Condo', 3, 4, 8, 75, 130000, 'Available', 6),
  (110, 'Apartment', 4, 6, 9, 100, 160000, 'Sold', 7),
  (130, 'House', 5, 1, 2, 150, 220000, 'Available', 8),
  (95, 'Condo', 3, 3, 7, 85, 140000, 'Sold', 9),
  (180, 'House', 7, 4, 5, 160, 270000, 'Available', 10),
  (100, 'Apartment', 4, 3, 6, 90, 170000, 'Available', 11),
  (90, 'House', 4, 4, 2, 80, 210000, 'Sold', 12),
  (130, 'Condo', 4, 5, 1, 110, 250000, 'Available', 13),
  (120, 'Apartment', 3, 3, 6, 90, 160000, 'Available', 14),
  (190, 'House', 3, 2, 7, 180, 200000, 'Sold', 15),
  (105, 'Condo', 3, 1, 8, 95, 100000, 'Available', 16),
  (200, 'Apartment', 3, 5, 6, 170, 180000, 'Sold', 17),
  (165, 'House', 5, 2, 2, 150, 100000, 'Available', 18),
  (115, 'Condo', 5, 3, 7, 105, 100000, 'Sold', 19),
  (170, 'House', 5, 4, 5, 160, 250000, 'Available', 20);

-- Inserting records into the 'owners' table
INSERT INTO owners (first_name, last_name, address, contacts, real_estate_id)
VALUES
  ('Michael', 'Johnson', '123 Oak St.', 'michael.johnson@example.com, +1234567890', 1),
  ('Samantha', 'Clark', '456 Pine St.', 'samantha.clark@example.com, +1987654321', 2),
  ('Oliver', 'Martin', '789 Cedar St.', 'oliver.martin@example.com, +1654321890', 3),
  ('Emily', 'Davis', '234 Elm St.', 'emily.davis@example.com, +1432987650', 4),
  ('Aiden', 'Miller', '567 Maple St.', 'aiden.miller@example.com, +1765432189', 5),
  ('Grace', 'Harris', '890 Birch St.', 'grace.harris@example.com, +1543219870', 6),
  ('Logan', 'Lee', '345 Walnut St.', 'logan.lee@example.com, +1324987657', 7),
  ('Zoe', 'Cooper', '678 Sycamore St.', 'zoe.cooper@example.com, +1876543210', 8),
  ('Lucas', 'Wright', '901 Redwood St.', 'lucas.wright@example.com, +1243658790', 9),
  ('Lily', 'Hill', '432 Cedar St.', 'lily.hill@example.com, +1987654321', 10),
  ('Bob', 'Gan', '25 Maple St.', 'bob.gan@example.com, +1408356324', 11),
  ('Fin', 'Ford', '3 Cedar St.', 'fin.ford@example.com, +1408653267', 12),
  ('Wili', 'Brown', '90 Cedar St.', 'wili.brown@example.com, +1408245332',13),
  ('Alan', 'Jone', '63 Sycamore St', 'alan.jone@example.com, +1408435279', 14),
  ('James', 'Gardin', '24 Oak St.', 'james.gardin@example.com, +1408435728', 15),
  ('Sophia', 'Tailor', '284 Sycamore St.', 'sophia.tailor@example.com, +1408249525', 16),
  ('Joe', 'Brauny', '81 Birch St.', 'joe.brauny@example.com, +1408648421', 17),
  ('Emma', 'Fog', '4 Radwood St.', 'emma.fog@example.com, +1408546853', 18),
  ('Daniel', 'Red', '78 Radwood St.', 'daniel.red@example.com, +1408457965', 19),
  ('Taylor', 'Crik', '426 Pine St.', 'taylor.crik@example.com, +1408157934', 20);

-- Inserting records into the 'clients' table
INSERT INTO clients (first_name, last_name, preferences, contacts, real_estate_id)
VALUES
  ('Ethan', 'Allen', 'Apartment', 'ethan.allen@example.com, +1734567290', 1),
  ('Olivia', 'Young', 'House', 'olivia.young@example.com, +1927654371', 2),
  ('Mason', 'Moore', 'Condo', 'mason.moore@example.com, +1654371290', 3),
  ('Emma', 'Williams', 'Apartment', 'emma.williams@example.com, +1437927650', 4),
  ('Noah', 'Brown', 'House', 'noah.brown@example.com, +1765437129', 5),
  ('Sophia', 'Anderson', 'Condo', 'sophia.anderson@example.com, +1543719270', 6),
  ('Liam', 'Evans', 'Apartment', 'liam.evans@example.com, +1374927657', 7),
  ('Ava', 'Baker', 'House', 'ava.baker@example.com, +1276543710', 8),
  ('Jackson', 'Ward', 'Condo', 'jackson.ward@example.com, +1743652790', 9),
  ('Isabella', 'Taylor', 'House', 'isabella.taylor@example.com, +1927654371', 10),
  ('Fin', 'Boy', 'Apartment', 'fin.boy@example.com, +1408493853', 11),
  ('Olivia', 'Son', 'House', 'olivia.son@example.com, +1408205837', 12),
  ('Lio', 'Son', 'Condo', 'lio.son@example.com, +1408403854',13),
  ('Ava', 'Garsie', 'Apartment', 'ava.garsie@example.com, +1408150359', 14),
  ('Jony', 'Stone', 'House', 'jony.stone@example.com, +1408993421', 15),
  ('Niko', 'Cartman', 'Condo', 'niko.cartman@example.com, +1408142494', 16),
  ('Si', 'Yo', 'Apartment', 'si.yo@example.com, +1408394799', 17),
  ('Ernesto', 'Nikson', 'House', 'emma.miller@example.com, +1408224829', 18),
  ('Charls', 'Chemberlen', 'Condo', 'daniel.moore@example.com, +1408325834', 19),
  ('Huverd', 'Huver', 'House', 'grace.taylor@example.com, +1408439405', 20);

-- Inserting records into the 'contracts' table
INSERT INTO contracts (contract_number, contract_amount, signing_date, status, owner_id, client_id)
VALUES
  (1001, 160000, '2022-01-15', 'Active', 1, 1),
  (1002, 210000, '2022-02-20', 'Inactive', 2, 2),
  (1003, 180000, '2022-03-25', 'Inactive', 2, 1),
  (1004, 120000, '2022-03-29', 'Active', 3, 1),
  (1005, 250000, '2022-04-21', 'Inactive', 4, 2),
  (1006, 130000, '2022-04-25', 'Active', 4, 5),
  (1007, 160000, '2022-05-12', 'Active', 6, 2),
  (1008, 220000, '2022-05-11', 'Inactive', 7, 8),
  (1009, 140000, '2022-06-16', 'Active', 7, 9),
  (1010, 270000, '2022-06-24', 'Active', 9, 2),
  (1011, 180000, '2022-07-15', 'Active', 11, 11),
  (1012, 230000, '2022-08-20', 'Inactive', 12, 12),
  (1013, 200000, '2022-09-25', 'Inactive', 13, 11),
  (1014, 140000, '2022-10-29', 'Active', 14, 14),
  (1015, 270000, '2022-11-21', 'Inactive', 15, 12),
  (1016, 150000, '2022-11-25', 'Active', 16, 17),
  (1017, 180000, '2022-12-12', 'Active', 17, 14),
  (1018, 240000, '2022-12-11', 'Inactive', 18, 18),
  (1019, 160000, '2023-01-16', 'Active', 19, 19),
  (1020, 240000, '2023-01-24', 'Active', 20, 14);
 

  
