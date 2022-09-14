start: 
	docker start php-apache

stop:
	docker stop php-apache

up:
	docker run -p 80:80 -d --name php-apache php-apache

destroy: stop
	docker rm php-apache

bash:
	docker exec -it php-apache bash

build:
	docker build -t php-apache . 

restart: stop start