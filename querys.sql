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

select b.beer_name, i.ingredient_name 
from beer b 
join beer_ingredient bi on bi.id_beer = b.id_beer 
join ingredient i on i.id_ingredient = bi.id_ingredient

## 8 ##

select br.brewery_name, count(b.id_beer) as number_of_beers
from brewery br
join beer b on b.id_brewery = br.id_brewery 
group by br.brewery_name
HAVING COUNT(b.id_beer) > 5

## 9 ##

select b.beer_name, b.id_beer 
from beer b 
where b.id_beer not in (
select fb.id_beer
from favourite_beer fb 
)

## 10 ##

select b.beer_name
from favourite_beer fb2 
join favourite_beer fb1 ON fb1.id_beer = fb2.id_beer 
join beer b on b.id_beer = fb1.id_beer
where fb1.id_user = 1 and fb2.id_user = 2


## 11 ##
SELECT 
    br.brewery_name, 
    AVG(r.stars) AS average_rating
FROM brewery br
JOIN beer b ON b.id_brewery = br.id_brewery
JOIN review r ON r.id_beer = b.id_beer
GROUP BY br.brewery_name, br.id_brewery 
HAVING AVG(r.stars) > 3
ORDER BY br.id_brewery;

## 12 ##

update brewery 
set brewery_name = 'Brewery One1',
	adress = 'New adress',
	city = 'New city'
where id_brewery = 11; --example with brewery with id = 11

-- we then show all the information of the updated brewery
select *
from brewery b 
where b.id_brewery = 11

## 13 ##

delete from beer_photos 
where id_beer = 11;