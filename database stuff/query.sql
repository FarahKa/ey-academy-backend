/*



INSERT INTO [Ey_Academy].[dbo].[AspNetRoles] (Id, Name, NormalizedName)
VALUES 
	('b65840b9-c745-465b-9ef8-7b536bc5627a', 'consultant', 'Consultant'),
	('b65840b9-c745-465b-9ef8-7b536bc5627b', 'trainer', 'Trainer'),
	('b65840b9-c745-465b-9ef8-7b536bc5627c', 'jury', 'Jury');


INSERT INTO [Ey_Academy].[dbo].[AspNetUserRoles] (RoleId, UserId)
VALUES
		('b65840b9-c745-465b-9ef8-7b536bc5627a', '5336787f-349e-4c71-815a-e9c1090a14bd'), --nawres 
	('b65840b9-c745-465b-9ef8-7b536bc5627a', '97ba7c94-1fb8-463d-9559-cf8b9bdd5b06'), --tom 
	('b65840b9-c745-465b-9ef8-7b536bc5627b', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --fatma FORMATRICE
	('b65840b9-c745-465b-9ef8-7b536bc5627a', '969630fa-a02a-4ee5-b471-65ce9a837416'), --malek
	('b65840b9-c745-465b-9ef8-7b536bc5627a', 'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4'), --bob 
	('b65840b9-c745-465b-9ef8-7b536bc5627a', 'bda78790-e1ff-42eb-9db1-a93298c6866d'), --fahd 
	('b65840b9-c745-465b-9ef8-7b536bc5627a', 'd33ae2d8-599c-4d3a-884f-b61badc9c77b'); --oumayma



INSERT INTO [Ey_Academy].[dbo].[TFAThemes] (TFAId, ThemeFId)
VALUES
	('8b22d5af-e303-4154-a746-c3af01c35114', '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('8b22d5af-e303-4154-a746-c3af01c35114', '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('8b22d5af-e303-4154-a746-c3af01c35114', '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('8b22d5af-e303-4154-a746-c3af01c35114', '1473186f-a2b9-4887-8122-771cfcb6d2a9');

INSERT INTO [Ey_Academy].[dbo].[ThemeFA] (Id, Title)
VALUES 
	('1473186f-a2b9-4887-8122-771cfcb6d276', 'General behaviour during the training'),
	('1473186f-a2b9-4887-8122-771cfcb6d277', 'Collective performance during the Business Case presentation'),
	('1473186f-a2b9-4887-8122-771cfcb6d2a8', 'Collective performance during the Q&A session'),
	('1473186f-a2b9-4887-8122-771cfcb6d2a9', 'General appreciation');

INSERT INTO [Ey_Academy].[dbo].[CriterionFA] (Id, CriterionField, Mark, ThemeFAId)
VALUES 
	('1473186f-a2b9-4887-8122-771cfcb6d216', 'Assiduity and Punctuality', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('1473186f-a2b9-4887-8122-771cfcb6d226', 'Motivation and dynamism during training', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('1473186f-a2b9-4887-8122-771cfcb6d236', 'Integration into the team and teamwork', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('1473186f-a2b9-4887-8122-771cfcb6d217', 'Understanding of the problematics and stakes', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d227', 'Presentation structure', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d237', 'Clarity and relevance of the message', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d247', 'Time management', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d257', 'Oral communication fluency', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d267', 'Achieving training objectives', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d218', 'Mastery of technical skills', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d228', 'Responsiveness and analytical skills', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d238', 'Stress management', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d2b9', 'General appreciation', 5,  '1473186f-a2b9-4887-8122-771cfcb6d2a9');

INSERT INTO TemplateFormerAssessments (Id) VALUES ('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d');

INSERT INTO TFAThemes (TFAId, ThemeFId)
VALUES
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d2a9');


INSERT INTO [Ey_Academy].[dbo].[LFormerAssigned] (UserId, TrainingId, Date)
VALUES
	('3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', 'a5b90560-5365-422f-830c-3ed64e8af1d2', GETDATE()),
	('3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', 'a5b90560-5365-422f-830c-3ed64e8af1d3', GETDATE()),
	('3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', 'a5b90560-5365-422f-830c-3ed64e8af1d4', GETDATE()); --fatma trainer lel trainings lkol

	

INSERT INTO [Ey_Academy].[dbo].[Trainings] (Id, TrainingDate, TrainingName, duration, Description, EndDate )
VALUES
    ('a5b90560-5365-422f-830c-3ed64e8af1d2', '2020-05-02T19:58:47.1234567', 
	'ARP beginner training', 3, 'For beginners', '2020-05-05T19:58:47.1234567'  ),
    ('a5b90560-5365-422f-830c-3ed64e8af1d3', '2020-06-02T19:58:47.1234567', 
	'ARP intermediate training', 3, 'For intermediates', '2020-06-05T19:58:47.1234567'  ),
    ('a5b90560-5365-422f-830c-3ed64e8af1d4', '2020-07-08T19:58:47.1234567', 
	'ARP advanced training', 3, 'For advanced learners', '2020-07-11T19:58:47.1234567'  );

INSERT INTO [Ey_Academy].[dbo].[Groups] (Id, CreationDate, Name )
VALUES
    ('9e727b1c-6e06-4dd9-bb12-558199158651', '2020-02-02T19:58:47.1234567', 'group1_training1' ),
    ('9e727b1c-6e06-4dd9-bb12-558199158652', '2020-02-02T19:58:47.1234567', 'group2_training1'   ),
    ('9e727b1c-6e06-4dd9-bb12-558199158653', '2020-02-02T19:58:47.1234567',  'group3_training1'   ),
	('9e727b1c-6e06-4dd9-bb12-558199158654', '2020-02-02T19:58:47.1234567', 'group1_training2' ),
    ('9e727b1c-6e06-4dd9-bb12-558199158655', '2020-02-02T19:58:47.1234567', 'group2_training2'   ),
    ('9e727b1c-6e06-4dd9-bb12-558199158659', '2020-02-02T19:58:47.1234567',  'group3_training2'   ),
		('9e727b1c-6e06-4dd9-bb12-558199158656', '2020-02-02T19:58:47.1234567', 'group1_training3' ),
    ('9e727b1c-6e06-4dd9-bb12-558199158657', '2020-02-02T19:58:47.1234567', 'group2_training3'   ),
    ('9e727b1c-6e06-4dd9-bb12-558199158658', '2020-02-02T19:58:47.1234567',  'group3_training3'   );



INSERT INTO [Ey_Academy].[dbo].[GroupByTrainings] (Id, GroupId, TrainingId)
VALUES
('50f33216-51db-446d-abb7-3c015d7aab0b', '9e727b1c-6e06-4dd9-bb12-558199158651', 'a5b90560-5365-422f-830c-3ed64e8af1d2'),
('50f33216-51db-446d-abb7-3c015d7aab0c', '9e727b1c-6e06-4dd9-bb12-558199158652', 'a5b90560-5365-422f-830c-3ed64e8af1d2'),
('50f33216-51db-446d-abb7-3c015d7aab0d', '9e727b1c-6e06-4dd9-bb12-558199158653', 'a5b90560-5365-422f-830c-3ed64e8af1d2'),
('50f33216-51db-446d-abb7-3c015d7aab0e', '9e727b1c-6e06-4dd9-bb12-558199158654', 'a5b90560-5365-422f-830c-3ed64e8af1d3'),
('50f33216-51db-446d-abb7-3c015d7aab0f','9e727b1c-6e06-4dd9-bb12-558199158655', 'a5b90560-5365-422f-830c-3ed64e8af1d3'),
('50f33216-51db-446d-abb7-3c015d7aab01','9e727b1c-6e06-4dd9-bb12-558199158659', 'a5b90560-5365-422f-830c-3ed64e8af1d3'),
('50f33216-51db-446d-abb7-3c015d7aab02','9e727b1c-6e06-4dd9-bb12-558199158656', 'a5b90560-5365-422f-830c-3ed64e8af1d4'),
('50f33216-51db-446d-abb7-3c015d7aab03','9e727b1c-6e06-4dd9-bb12-558199158657', 'a5b90560-5365-422f-830c-3ed64e8af1d4'),
('50f33216-51db-446d-abb7-3c015d7aab04','9e727b1c-6e06-4dd9-bb12-558199158658', 'a5b90560-5365-422f-830c-3ed64e8af1d4');



INSERT INTO [Ey_Academy].[dbo].[GroupConsultants] (GroupId, UserId)
VALUES 
	('9E727B1C-6E06-4DD9-BB12-558199158651', '5336787f-349e-4c71-815a-e9c1090a14bd'), --nawres in group1_training1
	('9E727B1C-6E06-4DD9-BB12-558199158651', '97ba7c94-1fb8-463d-9559-cf8b9bdd5b06'), --tom in group1_training1
	('9E727B1C-6E06-4DD9-BB12-558199158651', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --fatma same
	('9E727B1C-6E06-4DD9-BB12-558199158651', '617bb4b2-a41f-425a-8b42-7e2c176600b4'), --zaineb same
	('9E727B1C-6E06-4DD9-BB12-558199158652', '969630fa-a02a-4ee5-b471-65ce9a837416'), --malek in group2_training1
	('9E727B1C-6E06-4DD9-BB12-558199158652', 'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4'), --bob in group2_training1
	('9E727B1C-6E06-4DD9-BB12-558199158653', 'bda78790-e1ff-42eb-9db1-a93298c6866d'), --fahd 3 1
	('9E727B1C-6E06-4DD9-BB12-558199158653', 'd33ae2d8-599c-4d3a-884f-b61badc9c77b'), --oumayma 3 1

	('9E727B1C-6E06-4DD9-BB12-558199158654', '5336787f-349e-4c71-815a-e9c1090a14bd'), --nawres in group1_training2
	('9E727B1C-6E06-4DD9-BB12-558199158654', '97ba7c94-1fb8-463d-9559-cf8b9bdd5b06'), --tom in group1_training2
	/*('9E727B1C-6E06-4DD9-BB12-558199158654', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --fatma same
	('9E727B1C-6E06-4DD9-BB12-558199158654', '617bb4b2-a41f-425a-8b42-7e2c176600b4'), --zaineb same*/
	('9E727B1C-6E06-4DD9-BB12-558199158655', '969630fa-a02a-4ee5-b471-65ce9a837416'), --malek in group2_training2
	('9E727B1C-6E06-4DD9-BB12-558199158655', 'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4'), --bob in group2_training2
	('9E727B1C-6E06-4DD9-BB12-558199158659', 'bda78790-e1ff-42eb-9db1-a93298c6866d'), --fahd 3 2
	('9E727B1C-6E06-4DD9-BB12-558199158659', 'd33ae2d8-599c-4d3a-884f-b61badc9c77b'), --oumayma 3 2

	('9E727B1C-6E06-4DD9-BB12-558199158656', '5336787f-349e-4c71-815a-e9c1090a14bd'), --nawres in group1_training3
	('9E727B1C-6E06-4DD9-BB12-558199158656', '97ba7c94-1fb8-463d-9559-cf8b9bdd5b06'), --tom in group1_training3
	/*('9E727B1C-6E06-4DD9-BB12-558199158656', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --fatma same
	('9E727B1C-6E06-4DD9-BB12-558199158656', '617bb4b2-a41f-425a-8b42-7e2c176600b4'), --zaineb same*/
	('9E727B1C-6E06-4DD9-BB12-558199158657', '969630fa-a02a-4ee5-b471-65ce9a837416'), --malek in group2_training3
	('9E727B1C-6E06-4DD9-BB12-558199158657', 'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4'), --bob in group2_training3
	('9E727B1C-6E06-4DD9-BB12-558199158658', 'bda78790-e1ff-42eb-9db1-a93298c6866d'), --fahd 3 3
	('9E727B1C-6E06-4DD9-BB12-558199158658', 'd33ae2d8-599c-4d3a-884f-b61badc9c77b'); --oumayma 3 3
	


	INSERT INTO [Ey_Academy].[dbo].[Plannings] (Id, TrainingId, QRCode, Location,StartDate, EndDate,   Name, FormerId)
VALUES 
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a3', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 111, 'salle 1', '2020-08-14 08:00:47.1234567', '2020-08-14 12:00:47.1234567' , 'seance 1', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5b3', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 1112, 'salle 1', '2020-08-14 13:00:47.1234567', '2020-08-14 18:00:47.1234567' , 'seance 1 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a4', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 222, 'salle 2',  '2020-08-21 08:00:47.1234567', '2020-08-21 12:00:47.1234567' , 'seance 2', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5b4', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 2222, 'salle 2',  '2020-08-21 13:00:47.1234567', '2020-08-21 18:00:47.1234567' , 'seance 2 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a5', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 333, 'salle 2','2020-08-22 08:00:47.1234567', '2020-08-22 12:00:47.1234567' , 'seance 3', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 3 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5b5', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 3332, 'salle 2','2020-08-22 13:00:47.1234567', '2020-08-22 18:00:47.1234567' , 'seance 3 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 3 day

('008d0d05-f98c-4d45-ad08-3fb03b2ff5c3', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 444, 'salle 1', '2020-08-24 08:00:47.1234567', '2020-08-14 12:00:47.1234567' , 'seance 1', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5d3', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 4442, 'salle 1', '2020-08-24 13:00:47.1234567', '2020-08-14 18:00:47.1234567' , 'seance 1 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5c4', 'A5B90560-5365-422F-830C-3ED64E8AF1D3',555, 'salle 2',  '2020-09-21 08:00:47.1234567', '2020-08-21 12:00:47.1234567' , 'seance 2', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5d4', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 5552, 'salle 2',  '2020-09-21 13:00:47.1234567', '2020-08-21 18:00:47.1234567' , 'seance 2 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5c5', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 666, 'salle 2','2020-09-22 08:00:47.1234567', '2020-08-22 12:00:47.1234567' , 'seance 3', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 3 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5d5', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 6662, 'salle 2','2020-09-22 13:00:47.1234567', '2020-08-22 18:00:47.1234567' , 'seance 3 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 3 day

('008d0d05-f98c-4d45-ad08-3fb03b2ff5e3', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 777, 'salle 1', '2020-09-14 08:00:47.1234567', '2020-08-14 12:00:47.1234567' , 'seance 1', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5f3', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 7772, 'salle 1', '2020-09-14 13:00:47.1234567', '2020-08-14 18:00:47.1234567' , 'seance 1 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5e4', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 888, 'salle 2',  '2020-10-21 08:00:47.1234567', '2020-08-21 12:00:47.1234567' , 'seance 2', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5f4', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 8882, 'salle 2',  '2020-10-21 13:00:47.1234567', '2020-08-21 18:00:47.1234567' , 'seance 2 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5e5', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 999, 'salle 2','2020-10-22 08:00:47.1234567', '2020-08-22 12:00:47.1234567' , 'seance 3', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 1 3 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5f5', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 9992, 'salle 2','2020-10-22 13:00:47.1234567', '2020-08-22 18:00:47.1234567' , 'seance 3 aprem', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'); --group 1 training 1 3 day
*/
INSERT INTO GroupPlanings (GroupId, PlaningId) VALUES
('9E727B1C-6E06-4DD9-BB12-558199158651', '008d0d05-f98c-4d45-ad08-3fb03b2ff5a3'),
('9E727B1C-6E06-4DD9-BB12-558199158651', '008d0d05-f98c-4d45-ad08-3fb03b2ff5b3'),
('9E727B1C-6E06-4DD9-BB12-558199158651', '008d0d05-f98c-4d45-ad08-3fb03b2ff5a5'),
('9E727B1C-6E06-4DD9-BB12-558199158651', '008d0d05-f98c-4d45-ad08-3fb03b2ff5b5'),
('9E727B1C-6E06-4DD9-BB12-558199158652', '008d0d05-f98c-4d45-ad08-3fb03b2ff5a4'),
('9E727B1C-6E06-4DD9-BB12-558199158652', '008d0d05-f98c-4d45-ad08-3fb03b2ff5b4'),
('9E727B1C-6E06-4DD9-BB12-558199158652', '008d0d05-f98c-4d45-ad08-3fb03b2ff5a3'),
('9E727B1C-6E06-4DD9-BB12-558199158652', '008d0d05-f98c-4d45-ad08-3fb03b2ff5b3'),
('9E727B1C-6E06-4DD9-BB12-558199158653', '008d0d05-f98c-4d45-ad08-3fb03b2ff5a4'),
('9E727B1C-6E06-4DD9-BB12-558199158653','008d0d05-f98c-4d45-ad08-3fb03b2ff5b4'),
('9E727B1C-6E06-4DD9-BB12-558199158653','008d0d05-f98c-4d45-ad08-3fb03b2ff5b5'),
('9E727B1C-6E06-4DD9-BB12-558199158653','008d0d05-f98c-4d45-ad08-3fb03b2ff5a5');

/*

('008d0d05-f98c-4d45-ad08-3fb03b2ff5a3', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 444, 'salle 1', '2020-08-25 08:00:47.1234567', '2020-08-25 12:00:47.1234567' , 'seance 1', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 2 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a4', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 555, 'salle 2',  '2020-08-26 08:00:47.1234567', '2020-08-26 12:00:47.1234567' , 'seance 2', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 2 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a5', 'A5B90560-5365-422F-830C-3ED64E8AF1D3', 666, 'salle 2','2020-08-27 08:00:47.1234567', '2020-08-27 12:00:47.1234567' , 'seance 3', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 2 3 day;
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a3', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 777, 'salle 1', '2020-08-28 08:00:47.1234567', '2020-08-28 12:00:47.1234567' , 'seance 1', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 3 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a4', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 888, 'salle 2',  '2020-08-29 08:00:47.1234567', '2020-08-29 12:00:47.1234567' , 'seance 2', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'), --group 1 training 3 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a5', 'A5B90560-5365-422F-830C-3ED64E8AF1D4', 999, 'salle 2','2020-08-30 08:00:47.1234567', '2020-08-30 12:00:47.1234567' , 'seance 3', '3b77b74e-fe0f-4e97-9e7e-8b635d7807ad'); --group 1 training 3 3 day;

('008d0d05-f98c-4d45-ad08-3fb03b2ff5a6', '9E727B1C-6E06-4DD9-BB12-558199158652', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 3, '2020-05-02 19:58:47.1234567'), --group 2 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a7', '9E727B1C-6E06-4DD9-BB12-558199158652', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 4, '2020-05-03 19:58:47.1234567'), --group 2 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff5a8', '9E727B1C-6E06-4DD9-BB12-558199158652', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 5, '2020-05-05 19:58:47.1234567'), --group 2 training 1 3 day

('008d0d05-f98c-4d45-ad08-3fb03b2ff5a9', '9E727B1C-6E06-4DD9-BB12-558199158653', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 6, '2020-05-03 19:58:47.1234567'), --group 3 training 1 first day
('008d0d05-f98c-4d45-ad08-3fb03b2ff510', '9E727B1C-6E06-4DD9-BB12-558199158653', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 7, '2020-05-04 19:58:47.1234567'), --group 3 training 1 2 day
('008d0d05-f98c-4d45-ad08-3fb03b2ff511', '9E727B1C-6E06-4DD9-BB12-558199158653', 'A5B90560-5365-422F-830C-3ED64E8AF1D2', 8, '2020-05-05 19:58:47.1234567'); --group 3 training 1 3 day





--change change zaineb to jury

INSERT INTO [Ey_Academy].[dbo].[TemplateJuryAssessments] (Id)
VALUES
		('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d');

INSERT INTO [Ey_Academy].[dbo].[AspNetUserRoles] (RoleId, UserId)
VALUES
	('b65840b9-c745-465b-9ef8-7b536bc5627c', '617bb4b2-a41f-425a-8b42-7e2c176600b4'); --zaineb JURY


INSERT INTO [Ey_Academy].[dbo].[ThemeJA] (Id, Title)
VALUES 
	--('1473186f-a2b9-4887-8122-771cfcb6d276', 'General behaviour during the training'),
	('1473186f-a2b9-4887-8122-771cfcb6d277', 'Collective performance during the Business Case presentation'),
	('1473186f-a2b9-4887-8122-771cfcb6d2a8', 'Collective performance during the Q&A session'),
	('1473186f-a2b9-4887-8122-771cfcb6d2a9', 'General appreciation');

INSERT INTO [Ey_Academy].[dbo].[CriterionJA] (Id, CriterionField, Mark, ThemeJAId)
VALUES 
	--('1473186f-a2b9-4887-8122-771cfcb6d216', 'Assiduity and Punctuality', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	--('1473186f-a2b9-4887-8122-771cfcb6d226', 'Motivation and dynamism during training', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	--('1473186f-a2b9-4887-8122-771cfcb6d236', 'Integration into the team and teamwork', 5, '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('1473186f-a2b9-4887-8122-771cfcb6d217', 'Understanding of the problematics and stakes', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d227', 'Presentation structure', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d237', 'Clarity and relevance of the message', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d247', 'Time management', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d257', 'Oral communication fluency', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d267', 'Achieving training objectives', 5, '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('1473186f-a2b9-4887-8122-771cfcb6d218', 'Mastery of technical skills', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d228', 'Responsiveness and analytical skills', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d238', 'Stress management', 5, '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('1473186f-a2b9-4887-8122-771cfcb6d2b9', 'General appreciation', 5,  '1473186f-a2b9-4887-8122-771cfcb6d2a9');


INSERT INTO [Ey_Academy].[dbo].[TJAThemes]  (TJAId, JThemeId)
VALUES
	--('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d276'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d277'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d2a8'),
	('d6fd2662-c5b3-4c86-9df7-07cacc83bc2d', '1473186f-a2b9-4887-8122-771cfcb6d2a9');


INSERT INTO [Ey_Academy].[dbo].[LJuriesAssigned] (UserId, TrainingId, Date)
VALUES
	('617bb4b2-a41f-425a-8b42-7e2c176600b4', 'a5b90560-5365-422f-830c-3ed64e8af1d2', GETDATE()),
	('617bb4b2-a41f-425a-8b42-7e2c176600b4', 'a5b90560-5365-422f-830c-3ed64e8af1d3', GETDATE()),
	('617bb4b2-a41f-425a-8b42-7e2c176600b4', 'a5b90560-5365-422f-830c-3ed64e8af1d4', GETDATE());




INSERT INTO Categories (Id, CategoryTitle, CategoryName)
VALUES
	('b8d2a485-d3ef-4a09-8f1f-751ccd097672', 'Group Participation', 'Attends meetings regularly and on time'),
	('b8d2a485-d3ef-4a09-8f1f-751ccd097673', 'Time Management & Responsibility', 'Accepts fair share of work and reliably completes it by the required time.'),
	('b8d2a485-d3ef-4a09-8f1f-751ccd097674', 'Adaptability', 'Displays or tries to develop a wide range of skills in service of the project, readily accepts changed approach or constructive criticism.'),
	('b8d2a485-d3ef-4a09-8f1f-751ccd097675', 'Creativity/Originality', 'Problem-solves when faced with impasses or challenges, originates new ideas, initiates team decisions.'),
	('b8d2a485-d3ef-4a09-8f1f-751ccd097676', 'General Team Skills', 'Positive attitude, encourages and motivates team, supports team decisions, helps team reach consensus, helps resolve conflicts in the group.');



INSERT INTO TemplateConsultantAssessments (Id) VALUES ('3c3b58ae-0c15-4da9-8e43-9679130fa9c9');

INSERT INTO TCACategories (TCAId, CategoryId) VALUES
('3c3b58ae-0c15-4da9-8e43-9679130fa9c9','b8d2a485-d3ef-4a09-8f1f-751ccd097672'),
('3c3b58ae-0c15-4da9-8e43-9679130fa9c9','b8d2a485-d3ef-4a09-8f1f-751ccd097673'),
('3c3b58ae-0c15-4da9-8e43-9679130fa9c9','b8d2a485-d3ef-4a09-8f1f-751ccd097674'),
('3c3b58ae-0c15-4da9-8e43-9679130fa9c9','b8d2a485-d3ef-4a09-8f1f-751ccd097675'),
('3c3b58ae-0c15-4da9-8e43-9679130fa9c9','b8d2a485-d3ef-4a09-8f1f-751ccd097676');




INSERT INTO [Ey_Academy].[dbo].[Sections] (Id, SectionField, SectionType)
VALUES
	('e9136565-7b15-4525-a0b5-e8cd63070a6d', 'Organisation de la formation', 1),
		('e9136565-7b15-4525-a0b5-e8cd63070a61', 'Contenu de la formation', 2),
		('e9136565-7b15-4525-a0b5-e8cd63070a62', 'Animation de la formation', 3),
		('e9136565-7b15-4525-a0b5-e8cd63070a63', 'Appréciation générale', 4);

INSERT INTO [Ey_Academy].[dbo].[Questions] (Id, QuestonField, IdSection, QuestonNumber, type)
VALUES
	('a9136565-7b15-4525-a0b5-e8cd63070a64', 'Les moyens mis à disposition de la formation sont satisfaisants', 'e9136565-7b15-4525-a0b5-e8cd63070a6d', 1, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a65', 'La composition du groupe de formation est bien adaptée (Taille, Mix, …)', 'e9136565-7b15-4525-a0b5-e8cd63070a6d', 2, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a66', 'Les objectifs de la formation sont bien présentés et assimilés', 'e9136565-7b15-4525-a0b5-e8cd63070a61', 3, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a67', 'La formation est bien structurée (objectif défini, planning clair de la journée, outils mis à disposition)', 'e9136565-7b15-4525-a0b5-e8cd63070a61', 4, 'combo'),
	('a9136565-7b15-4525-a0b5-e8cd63070a68', 'Le contenu de la formation est présenté clairement et de manière intéressante', 'e9136565-7b15-4525-a0b5-e8cd63070a61', 5, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a69', 'La durée de la formation est adaptée à mon planning', 'e9136565-7b15-4525-a0b5-e8cd63070a61', 6, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a10', 'Le volume horaire exigé est raisonnable', 'e9136565-7b15-4525-a0b5-e8cd63070a61', 7, 'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a11', 'Le formateur sait transmettre ses connaissances (maîtrise son sujet, exemples pratiques...)', 'e9136565-7b15-4525-a0b5-e8cd63070a62', 8,'combo'),
	('a9136565-7b15-4525-a0b5-e8cd63070a12', 'Le formateur sait mobiliser les participants (donne envie d`apprendre, fait participer...)', 'e9136565-7b15-4525-a0b5-e8cd63070a62', 9,'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a13', 'Le niveau d’encadrement et d’accompagnement fourni tout au long de la formation est satisfaisant', 'e9136565-7b15-4525-a0b5-e8cd63070a62',10,'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a14', 'Les échanges au sein de mon groupe ont été enrichissants', 'e9136565-7b15-4525-a0b5-e8cd63070a63',11,'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a15', 'De façon générale, les objectifs de la formation sont atteints', 'e9136565-7b15-4525-a0b5-e8cd63070a63',12,'combo'),
	('a9136565-7b15-4525-a0b5-e8cd63070a16', 'La formation aura un impact positif sur la qualité de mon travail', 'e9136565-7b15-4525-a0b5-e8cd63070a63',13,'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a17', 'Globalement, je suis satisfait(e) de cette formation', 'e9136565-7b15-4525-a0b5-e8cd63070a63',14,'combo'),
		('a9136565-7b15-4525-a0b5-e8cd63070a18', 'Quels sont les points forts de la formation et du formateur?', 'e9136565-7b15-4525-a0b5-e8cd63070a63',15,'text'),
		('a9136565-7b15-4525-a0b5-e8cd63070a19', 'Quelles sont vos suggestions pour améliorer la formation et le formateur ?', 'e9136565-7b15-4525-a0b5-e8cd63070a63',16,'text');

		*/


