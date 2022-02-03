CREATE DATABASE car_dealership_mvc_db;

USE car_dealership_mvc_db;

#Drop all tables
drop table vehicle;
drop table customer;
drop table sale;

CREATE TABLE vehicle (
vin VARCHAR(25) NOT NULL,
manufacturer_name VARCHAR(25),
model VARCHAR(40),
car_description VARCHAR(500),
odometer INT,
dop_dealer DATE,
price DOUBLE,
img BLOB (4), -- max size 4GB, auto to null
PRIMARY KEY (vin)
);

CREATE TABLE customer (
customer_id int NOT NULL AUTO_INCREMENT,
purchase_price DOUBLE,
first_name VARCHAR(30),
last_name VARCHAR(30),
phone_number VARCHAR(12),
PRIMARY KEY (customer_id)
);


CREATE TABLE sale (
time_of_sale VARCHAR (15) NOT NULL,
dop_buyer DATE,
amount DOUBLE,
isDiscounted BOOL,
customer_ID INT NOT NULL,
vehicle_ID VARCHAR (30),
PRIMARY KEY (time_of_sale),
FOREIGN KEY (customer_ID) REFERENCES customer (customer_ID),
FOREIGN KEY(vehicle_ID) REFERENCES vehicle (vin)
);

-- Delete test vehicle from db
DELETE FROM vehicle
WHERE vehicle.vin = '5FNYF5H3XMB014413';

-- Chevrolet Silverado
INSERT INTO vehicle
VALUE
('5FNYF5H3XMB014413', 
'Chevrolet', 
'2018 Silverado 1500 LT', 
'CARFAX One-Owner. Deep Ocean Blue Metallic 2018 Chevrolet Silverado 1500 LT 
LT2 4WD 1Speed Automatic Electronic with Overdrive EcoTec3 454 Cubic Inch V8 *Navigation* (NAVI/ GPS)*,
Bluetooth, Dealer Maintained, Heated Seats, Leather Seats, Local Trade, Non-Rental, Non-Smoker,
Rear Camera, Side Steps, USB iPod, 6-Speed Automatic Electronic with Overdrive, 4WD, Dark Ash With
Jet Black Interior Accents Cloth.',
58115, 
'31-01-2022',
40008,
NULL
);

-- Honda Civic
INSERT INTO vehicle
VALUE
('1G1FF3D7XH0212927', 
'Honda', 
'2020 Civic EX', 
'Honda Certified, Excellent Condition, CARFAX 1-Owner. EX trim, 
Cosmic Blue Metallic exterior and Gray interior. JUST REPRICED FROM $29,995.
Heated Seats, Sunroof, Satellite Radio, BACK UP CAMERA, Alloy Wheels, Turbo,
Serviced here',
9924, 
'31-01-2022',
29388,
NULL
);

-- Dodge Challenger
INSERT INTO vehicle
VALUE
('JM1NC2PF0D0227374', 
'Dodge', 
'2021 Challenger R/T Scat Pack', 
'CARFAX 1-Owner, ONLY 1,479 Miles! Go Mango exterior, R/T Scat Pack trim.
Heated Seats, Premium Sound System, Satellite Radio, iPod/MP3 Input, 
ENGINE: 6.4L V8 SRT HEMI, TRANSMISSION: 6-SPEED MANUAL TREMEC, 
Back-Up Camera, Alloy Wheels.',
1479, 
'31-01-2022',
50888,
NULL
);

-- Delorean Time Machine
INSERT INTO vehicle
VALUE
('AMS25522', 
'Delorean', 
'1985 Delorean Time Travel Unit', 
'Would you like to own the precise Delorean Time Machine built be Doc? This one-of-a-kind Delorean comes with Haz Mat suit and JVC camcorder. This Delorean is said to be the first car to break the time barrier.  This Delorean is loaded with cruise control and much more.
0, 
'31-01-2022',
1,
NULL
);

-- Chevrolet Corvette
INSERT INTO vehicle
VALUE
('WP0CB2A82HS240853', 
'Chevrolet', 
'2019 Corvette Grand Sport aka The Panty Dropper', 
'Excellent Condition, CARFAX 1-Owner, LOW MILES - 21,122! 
PRICED TO MOVE $3,600 below Black Book! Heated/Cooled Leather Seats,
WHEELS, GRAND SPORT BLACK-PAINTED ALU. Back-Up Camera, Premium 
Sound System, REMOTE VEHICLE STARTER SYSTEM.',
21122, 
'31-01-2022',
64888,
NULL
);

-- Hyundai Sonata
INSERT INTO vehicle
VALUE
('WDDPK3JA9LF168289', 
'Hyundai', 
'2020 Hyundai Sonata SE', 
'CARFAX 1-Owner, Excellent Condition, ONLY 12,341 Miles! 
EPA 38 MPG Hwy/28 MPG City! SE trim. Apple CarPlay, 
Smart Device Integration, Lane Keeping Assist, Bluetooth, 
Alloy Wheels, Back-Up Camera, iPod/MP3 Input, Serviced here.',
12341, 
'31-01-2022',
26595,
NULL
);

-- Mercedes-Benz GLE (new)
INSERT INTO vehicle
VALUE
('1G1YB3D40N5108925', 
'Mercedes-Benz', 
'2022 Mercedes-Benz GLE', 
'Style: SUV; Exterior Color: Black; Interior color: Unknown;
MPG: 21 city/25 hwy; Engine: 3.0L Inline-6 Hybrid Turbocharged; 
Drive Type: AWD; Fuel Type: Hybrid; Transmission: Automatic.',
0, 
'31-01-2022',
90968,
NULL
);

-- Honda Santa Fe (new)
INSERT INTO vehicle
VALUE
('SAJDD5EV9JCK49647', 
'Hyundai', 
'2022 Santa Fe', 
'Style: SUV; Exterior Color: Quartz White; Interior color: Beige;
MPG: 22 city/28 hwy; Engine: 2.5L Inline-4 Gas Turbocharged; 
Drive Type: FWD; Fuel Type: Gas; Transmission: Automatic.',
0, 
'31-01-2022',
41225,
NULL
);

-- Hyundai Santa Cruz (new)
INSERT INTO vehicle
VALUE
('JN1CV6FE8EM902516', 
'Hyundai', 
'2022 Santa Cruz', 
'Style: Pickup Truck; Exterior Color: Phantom Black; Interior color: Gray;
MPG: 21 city/27 hwy; Engine: 2.5L Inline-4 Gas; Drive Type: AWD; Fuel Type: Gas;
Transmission: Automatic; Cab Type: Crew Cab; Bed length: Short bed.',
0, 
'31-01-2022',
34587,
NULL
);

-- Ford Bronco (new)
INSERT INTO vehicle
VALUE
('1FATP8UH9L5133151', 
'Ford', 
'2021 Bronco', 
'Style: SUV; Exterior Color:Rapid Red Metallic Tinted Clearcoat; 
Interior color: Black Onyx; MPG: 16 city/18 hwy; Engine: 1.3L Inline-4 Gas Turbocharged; 
Drive Type: 4WD; Fuel Type: Gas; Transmission: Manual.',
0, 
'31-01-2022',
79546,
NULL
);

-- Toyota Prius (new)
INSERT INTO vehicle
VALUE
('4T1FA38P67U134648', 
'Toyota', 
'2022 Prius', 
'Style: Hatchback; Exterior Color: Blue; Interior color: Moonstone; 
MPG: 54 city/50 hwy; Engine: 1.8L Inline-4 Hybrid; Drive Type: FWD; 
Fuel Type: Hybrid (Battery and 3 squirles); Transmission: Automatic.',
0, 
'31-01-2022',
36628,
NULL
);


UPDATE vehicle
SET dop_dealer = '25-10-2021'
WHERE vin = 'WDDPK3JA9LF168289';


UPDATE vehicle
SET dop_dealer = '14-10-2021'
WHERE vin = 'WP0CB2A82HS240853';

UPDATE vehicle
SET dop_dealer = '02-10-2021'
WHERE vin = 'WDDJK7DA8KF055845';

UPDATE vehicle
SET dop_dealer = '30-01-2022'
WHERE vin = 'WBA3B5G55ENS10316';

-- All 'idle' vehicles with discount > $5,000
SELECT *
FROM vehicle
WHERE dop_dealer < '31-01-2022' AND price * 0.1 > 5000;

-- All 'idle' vehicles with oldest first
SELECT * 
FROM car_dealership_mvc_db.vehicle
WHERE car_dealership_mvc_db.vehicle.dop_dealer < '31-01-2022'
ORDER BY dop_dealer ASC;

-- Search by model
SELECT * 
FROM car_dealership_mvc_db.vehicle
WHERE car_dealership_mvc_db.vehicle.model = '2021 Bronco';


-- Using alias
SELECT vin,
	manufacturer_name,
    model,
    price,
    dop_dealer,
    price * 0.1 AS 'discount',
    price - (price * 0.1) AS 'discounted price'
FROM car_dealership_mvc_db.vehicle;

-- Modify vehicle to store image pathname
ALTER TABLE vehicle ADD img_url varchar(80);

-- Delete test vehicle from db
DELETE FROM vehicle
WHERE vehicle.vin = 'ACA3B5G55ENS10315';

Select * from vehicle;