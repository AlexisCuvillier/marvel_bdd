# marvel_bdd

      			      .       .
                             / `.   .' "
                     .---.  <    > <    >  .---.
                     |    \  \ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \~~~\.'                    `./~~~/
       ---------   \__/                        \__/
      .'  O    \     /               /       \  "
     (_____,    `._.'               |         }  \/~~~/
      `----.          /       }     |        /    \__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'   
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>







### les titres et dates de sorties des films du plus récent au plus ancien:

```sql

SELECT `title` , `release_date`
FROM movies
ORDER BY release_date DESC 
```
	

### les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique

```sql

SELECT `name`,`prename`,(YEAR(NOW())-YEAR(birth)) AS age
FROM actors
WHERE birth < '1991/01/01'
ORDER BY `name` ASC 

```



### la liste des acteurs pour un film donné

```sql

SELECT movies.title, actors.name, actors.prename
FROM secondary 
JOIN movies ON secondary.id_movie = movies.id
JOIN actors ON secondary.id_actor = actors.id
WHERE movies.title = 'Dardevil'
```

	


### la liste des films pour un acteur donné


```sql

SELECT actors.name, actors.prename, movies.title 
FROM secondary 
JOIN actors ON secondary.id_actor = actors.id
JOIN movies ON secondary.id_movie = movies.id
WHERE actors.name = 'Garner' AND actors.prename = 'Jennifer'
```
	

### Requete pour ajouter un film

```sql

 INSERT INTO `movies`(`title`, `release_date`, ` duration`, ` director`) 
 
 VALUES ('Logan','2017','2:17','James Mangold')
```

	

### Requete pour ajouter un acteur

```sql
 INSERT INTO `actors`(`name`, `prename`, `birth`) 
 
 VALUES ('Cuvillier','Alexis','1996/09/11')

```


### Requete pour modifier un film

```sql

UPDATE `movies` 

SET `title`='Simplon',`release_date`='2021',` duration`='18:44',` director`= 'Luc Besson'

 WHERE title = 'Dardevil'
 ```

	

### Requete pour supprimer un acteur

```sql

DELETE FROM `actors` 

WHERE name ='Cuvillier'

```



### afficher les 3 derniers acteurs ajoutés

```sql

SELECT `name`, `prename`, `birth`

FROM actors

ORDER BY creation_date DESC 

LIMIT 3

```

               
