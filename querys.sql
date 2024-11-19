## 1 ##

select beer_name,abv from beer 
order by abv asc;

## 2 ##

select c.category_name, COUNT(b.id_beer) as number_of_beers
from beer b
join category c on b.id_category = c.id_category 
group by c.category_name;


## 3 ##

select beer_name
from beer
join brewery on beer.id_brewery = brewery.id_brewery
where brewery.brewery_name = 'Brewery One';

## 4 ##

select first_name, COUNT(fb.id_beer) as number_of_favourite_beers
from "user"
join favourite_beer fb  on "user".id_user = fb.id_user 
group by "user".first_name 

## 5 ##

INSERT INTO beer (beer_name, description, abv, colour, bitternes, body, release_date, id_brewery, id_category) values
('Farmers IPA', 'A strong, hoppy IPA with citrus notes', 5.0, 'Amber', 80, 'Medium', '2017-08-25', 12, 2);

## 6 ##

select beer_name, br.country
from beer b 
join brewery br on b.id_brewery = br.id_brewery 
order by br.country 

## 7 ##

