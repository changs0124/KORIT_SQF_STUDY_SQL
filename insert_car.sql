SELECT * FROM study.car_tb;

insert into car_tb
values
	(0, "car1", "color1", now());
    
insert into car_tb
values
	(0, "car2", "color2", now()),
    (0, "car3", "color3", now()),
    (0, "car4", "color4", now());
    
insert into car_tb
		(car_id, car_name, car_color, car_manufacture_date)
values
		(0, "car5", "color5", now());
        
insert into car_tb
		(car_id, car_color, car_name, car_manufacture_date)
values
		(0, "color6", "car6", now());
        
