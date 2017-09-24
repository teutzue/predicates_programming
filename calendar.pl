schedule(teodor, programming).
schedule(ion, programming).
schedule(ovidiu, business).
schedule(frederik, mathematics).
schedule(teodor, mathematics).
schedule(adam, mathematics).

teacher(mathematics, annas).
teacher(programming, sofus).

location(programming, room203).
location(business, room205).
location(mathematics, room104).

day(room203, 12-10-2010).
day(room205, 11-10-2010).
day(room104, 10-10-2010).

ects(mathematics, 30).
ects(programming, 60).
ects(business, 15).


classInformation(Student, Class, Room, Time) :-
	schedule(Student, Class),
	location(Class, Room),
	day(Room, Time).
	
subjectInformation(Subject, Professor, Points) :-
	teacher(Subject, Professor),
	ects(Subject, Points).

