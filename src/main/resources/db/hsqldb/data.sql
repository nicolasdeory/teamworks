

/*TEAMS*/
INSERT INTO
    teams(name, identifier)
values
    (
    	'Cybergroup', 
    	'cyber'
    );
    
INSERT INTO teams(name , identifier)
values
	(
		'Microsoft', 
		'infor'
	);
	
INSERT INTO teams(name , identifier)
values
	(
		'Inova S.L',
	 	'infor'
	 );
	
INSERT INTO teams(name , identifier)
values
	(
		'Monitor S.L',
		 'infor'
	);

INSERT INTO teams(name , identifier)
values
	(
		'AVERROES S.L',
		'infor'
	);

/*USERS*/
INSERT INTO
    users(name, lastname, email, password, role, team_id)
values
    (
        'Johnny',
        'Silverhand',
        'johnnysilverhand@cyber',
        '123123123',
        0,
        1
    );

INSERT INTO
    users(name, lastname, email, password, role, team_id)
values
    (
        'Julia',
        'Fabra',
        'juliafabra@cyber',
        '123456789',
        1,
        1
    );

INSERT INTO
    users(name, lastname, email, password, role, team_id)
values
    (
        'Maria',
        'Torres',
        'mariatorres@cyber',
        '123456789',
        1,
        1
    );

INSERT INTO
    users(name, lastname, email, password, role, team_id)
values
    (
        'Luis',
        'Cumbrera',
        'luiscumbrera@cyber',
        '123456789',
        1,
        1
    );

INSERT INTO
    users(name, lastname, email, password, role, team_id)
values
    (
        'Roman',
        'Calle',
        'romancalle@cyber',
        '123456789',
        1,
        1
    );

/*DEPARTMENTS*/
INSERT INTO
    departments(name, description, team_id)
values
    (
    	'Calidad',
     	'Aseguro la ...', 
     	1
     );

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	TRUE, 
    	2, 
    	1
    );

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	FALSE, 
    	5, 
    	1
    );

INSERT INTO
    departments(name, description, team_id)
values
    (
    	'Gestion',
     	'La mejor gestion ...',
     	 1
     );

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	TRUE, 
    	3, 
    	2
    );

INSERT INTO
    departments(name, description, team_id)
values
    (
    	'Ventas',
    	 'Debemos vender ...',
    	  1
    );

/*BELONGS*/

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	TRUE,
    	 4,
    	 3
    );

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	FALSE,
    	 2,
    	 2
    );

INSERT INTO
    belongs(is_department_manager, user_id, department_id)
values
    (
    	FALSE, 
    	2, 
    	3
    );

/*PROJECTS*/
INSERT INTO
    projects(name, description, department_id)
values
    (
        'Networking Solutions',
        'Develop network solutions for the team!',
        1
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        'Netrunning School',
        'Teach netrunning skills!',
        1
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        'School Project',
        'Develop an api rest ',
        1
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        'Homemade Dishes',
        'Web app for a homemade food enterprise',
        1
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        '2ndStreet Butchers',
        'Web app for the street butchers shop',
        2
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        ' Hello You ',
        ' Social Network development ',
        2
    );

INSERT INTO
    projects(name, description, department_id)
values
    (
        ' 2ndStreet Bakery ',
        ' Web app for the street bakery ',
        2
    );
    
/*PARTICIPATION*/

INSERT INTO
    participations(is_project_manager, user_id, project_id)
values
    (
    	TRUE, 
    	2, 
    	1
    );

INSERT INTO
    participations(is_project_manager, user_id, project_id)
values
    (
    	TRUE, 
    	2, 
    	2
    );

INSERT INTO
    participations(is_project_manager, user_id, project_id)
values
    (
    	TRUE, 
    	2, 
    	3
    );

INSERT INTO
    participations(is_project_manager, user_id, project_id)
values
    (
    	TRUE, 
    	2, 
    	4
    );
    
	/*MILESTONES*/	

INSERT INTO milestones(name , dueFor, projectId)
values
	(
		'Facture documentation', 
		2021/03/01, 
		1
	);
	
	
INSERT INTO milestones(name , dueFor, projectId)
values
	(
		'Documentation', 
		2021/03/03, 
		3
	);
	
INSERT INTO milestones(name , dueFor, projectId)
values
	(
		'Diagram', 
		2021/03/04, 
		3
	);
	
INSERT INTO milestones(name , dueFor, projectId)
values
	(
		'Review the project', 
		2021/03/05, 
		3
	);
	

 /*TODOS*/
  
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 1',
		1,
		1	
	);
	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 2',
		1,
		2
	);
	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 3',
		1,
		3
		
	);
	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 4',
		1,
		4
		
	);	
	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 1',
		2,
		5
		
	);	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Point 2',
		2,
		6
		
	);	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Do diagram',
		3,
		5
		
	);	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'Visual Diagram',
		3,
		6
		
	);	
	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'review documentation',
		4,
		5
		
	);	
INSERT INTO toDo(title,milestoneId,userId)
values
	(
		'review diagram',
		4,
		6
		
	);	
 /*TAGS*/
INSERT INTO tags(title,color,projectId,)
values
	(
		'Finished', 
		'#A6F718' ,
		1
	); 
	
INSERT INTO tags(title,color,projectId,)
values
	(
		'In process', 
		'#F72C18' ,
		1
	); 
	
INSERT INTO tags(title,color,projectId,)
values
	(
		'Review', 
		'#35a9fc' ,
		1
	); 
	
INSERT INTO tags(title,color,projectId,)
values
	(
		'Finished', 
		'#A6F718' ,
		3
	); 
	
INSERT INTO tags(title,color,projectId,)
values
	(
		'In process', 
		'#F72C18' ,
		3
	); 
	
INSERT INTO tags(title,color,projectId,)
values
	(
		'Review', 
		'#35a9fc' ,
		3
	); 