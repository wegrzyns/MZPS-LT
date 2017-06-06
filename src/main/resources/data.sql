INSERT INTO Categories (Name) VALUES
  ('Mlodzik'),
  ('Mlodziczka'),
  ('Kadet'),
  ('Kadetka');

INSERT INTO teams (id, Coach, Name, Phone, TotalSeasonPoints, Category_ID, League_ID) VALUES (1000, 'Pomykalski', 'Proxima Kraków', 6564513515, 0, 'Kadetka', NULL);
INSERT INTO teams (id, Coach, Name, Phone, TotalSeasonPoints, Category_ID, League_ID) VALUES (1002, 'Pomykalski', 'Proxima Kraków', 541684351, 0, 'Mlodziczka', NULL);
INSERT INTO teams (id, Coach, Name, Phone, TotalSeasonPoints, Category_ID, League_ID) VALUES (1003, 'Gebera Marian', 'Wawel Kraków', 4535435210, 0, 'Mlodzik', NULL);
INSERT INTO teams (id, Coach, Name, Phone, TotalSeasonPoints, Category_ID, League_ID) VALUES (1004, 'Stereńczak Dariusz', 'LKS Bobowa', 5463251354, 0, 'Mlodzik', NULL);
INSERT INTO teams (id, Coach, Name, Phone, TotalSeasonPoints, Category_ID, League_ID) VALUES (1005, 'Nurzyński S', 'Sparta Kraków', 5465351321, 0, 'Mlodzik', NULL);

INSERT INTO addresses(id, CityName, StreetName, HallName) VALUES (999999, 'Miasto', 'Ulica', 'Hala');
INSERT INTO tourneys (id, Name, Date, Category_ID, Address_ID) VALUES (999999, 'Turniej', '2017-06-13 00:00:00', 'Mlodzik', 999999);