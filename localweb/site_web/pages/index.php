 <?php                     

  include_once"connexion_bdd.php";



?>


<body >
          <div class="band">
          </div>
          
           <header>
               <!--zone of header-->
               <nav class="navbar navbar-inverse" role="navigation">
                  <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" arial-controls="bs-navbar"data-target="#bs-navbar" >
                      <span class="sr-only">toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="Index.html">Smartphone</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-navbar">
                      <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Informations<span class="sr-only">(current)</span></a></li>
                        <li><a href="About.html">A propos</a></li>
                          </ul>
                        </li>
                      </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>

            </header>

                <section class="container">
                    <!--zone of contents-->

                    <div class="">
                      <h1 id="smartphone">Informations sur les Smartphones</h1> 
                    </div>

                   <div class="table-responsive">
                      <table class="table table-hover">
                          <thead>
                              <tr>
                                  <th>Id</th>
                                  <th>Modèle</th>
                                  <th>Constructeur</th>
                                  <th>OS</th>
                                  <th>Taille d'écran</th>
                                  <th>Fréquance</th>
                                  <th>RAM</th>
                                  <th>Multi-coeur</th>
                                  <th>Fréquance</th>
                                  <th>Autonomie multimedia</th>
                                  <th>Prix de sortie</th>
                                  <th>Prix actuel</th>
                              </tr>
                          </thead>
                          
						  
						   <?php                     

                      /*************ID***********/
                      //Requet MySQL
                      $Requetesql = "SELECT `idSmartphone` FROM `t_smartphones` ORDER BY `t_smartphones`.`idSmartphone` DESC";

                      //Execute with connexin_bdd
                      $resultatRequeteId = connexion_bdd($Requetesql);


                      /*************BRAND***********/
                      //Requet MySQL
                      $RequetesqlName = "SELECT `smaName` FROM `t_smartphones` WHERE 'idSmartphone'='1' ";

                      //Execute with connexin_bdd
                      $resultatRequeteName = connexion_bdd($RequetesqlName);

                      /*************ScreenSize***********/
                      //Requet MySQL
                      $RequetesqlScreenSize = "SELECT `smaScreenSize` FROM `t_smartphones`";

                      //Execute with connexin_bdd
                      $resultatRequeteScreenSize = connexion_bdd($RequetesqlScreenSize);




                        print_r($resultatRequeteId);







                      //Display data
                      /*for ($i=0; $i < 30 ; $i++) 
                      { 
                        echo"<div>";
                        print_r($resultatRequete[$i]);
                        echo "</div>";
                      }          */                          
                
                      echo "
                             <tbody>
                                  <tr>
                                      <td>";
                                        print_r($resultatRequeteId[0]);
                                     echo "</td>
                                      <td>";
                                         print_r($resultatRequeteName[0]);
                                      echo "</td>
                                      <td>
                                         Constructeur
                                      </td>
                                      <td>
                                         OS
                                      </td>
                                      <td>";

                                         print_r($resultatRequeteScreenSize[0]);
                                      echo "</td>
                                      <td>
                                          test 6
                                      </td>
                                      <td>
                                          test 7
                                      </td>
                                      <td>
                                          test 8
                                      </td>
                                      <td>
                                          test 9
                                      </td>
                                      <td>
                                          test 10
                                      </td>
                                      <td>
                                          test 11
                                      </td>
                                      <td>
                                          test 12
                                      </td>
                                  </tr>
                              </tbody>";

                           ?>

                      </table>
                    </div>
                </section>

          <div class="container">
            <hr />
            <footer>
              <p>&copy; GrpAzerty - Comparateur de smartphones</p>
            </footer>
          </div>
      <!--Fin de container-->
    </body>
</html>