<?php
?>
<?php
  $host = $_GET['h'];
  $username = $_GET['u'];
  $password = $_GET['p'];
  $name = $_GET['n'];
  
  header("Content-Type: application/octet-stream");
  header("Content-Disposition: attachment; filename=config.ini.php");

          $content = "<?php \n" 
		  . " \n" 
		  . "\t if (!defined(\"_VALID_PHP\")) \n"
		  . "     die('Direct access to this location is not allowed.');\n"
		  
		  . " \n" 
		  . "\t/** \n" 
		  . "\t* Database Constants - these constants refer to \n"
		  . "\t* the database configuration settings. \n"
		  . "\t*/\n"
		  . "\t define('DB_SERVER', '".$host."'); \n" 
		  . "\t define('DB_USER', '".$username."'); \n"  
		  . "\t define('DB_PASS', '".$password."'); \n"  
		  . "\t define('DB_DATABASE', '" . $name . "');\n" 

		  . " \n" 
		  . "\t/** \n" 
		  . "\t* Show MySql Errors. \n"
		  . "\t* Not recomended for live site. true/false \n"
		  . "\t*/\n"
		  . "\t define('DEBUG', false);\n"
		  . "?>";

echo $content;

?>