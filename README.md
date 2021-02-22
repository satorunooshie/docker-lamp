# Commands

``docker-compose up -d``

``docker-compose exec www bash``

``docker-compose exec db mysql -u root -p``

phpmyadmin at [http://localhost:8000](http://localhost:8000)

normal access by [http://localhost:8001](http://localhost:8001)

# composer install	
``docker-composer exec www bash``	


````	
cat <<-EOF > composer.json	
{	
    "require": {	
        "monolog/monolog": "*"	
    }	
}	
EOF	
````	

``composer install``
