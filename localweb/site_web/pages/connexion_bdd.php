<?php
	function connexion_bdd($requete)
		{

            // Connect to db MYSQL
            $pdo = new PDO('mysql:host=localhost;dbname=db_gesProj', 'root', '');

            //exectue the requete
            $statement=$pdo->prepare($requete);
			$statement->execute();

			//search dara
			$array = $statement->fetchAll( PDO::FETCH_ASSOC );

			//send the result
			return ($array);

		}	
	
?>