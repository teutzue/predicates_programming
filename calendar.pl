schedule(teodor, programming).
schedule(ion, programming).
schedule(ovidiu, business).
schedule(frederik, mathematics).
schedule(teodor, mathematics).

location(programming, room203).
location(business, room205).
location(mathematics, room104).

day(room203, 12-10-2010).
day(room205, 11-10-2010).
day(room104, 10-10-2010).

classInformation(Student, Class, Room, Time) :-
	schedule(Student, Class),
	location(Class, Room),
	day(Room, Time).

