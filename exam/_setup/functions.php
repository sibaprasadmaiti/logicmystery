<?php
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>
<?php
  function getIniSettings($aSetting)
  {
	  $out = (ini_get($aSetting) == '1' ? 'ON' : 'OFF');
	  return $out;
  }

  function getWritableCell($aDir)
  {
	  echo '<tr>';
	  echo '<td class="elem">'.$aDir .CMS_DS.'</td>';
	  echo '<td align="left">';
	  echo is_writable(DDPBASE.$aDir) ? '<span class="yes">Writeable</span>' : '<span class="no">Unwriteable</span>';
	  echo '</td>';
	  echo '</tr>';
  }

  function sanitize($string, $trim = false)
  {
	$string = filter_var($string, FILTER_SANITIZE_STRING); 
	$string = trim($string);
	$string = stripslashes($string);
	$string = strip_tags($string);
	$string = str_replace(array('‘','’','“','”'), array("'","'",'"','"'), $string);
	if($trim)
	$string = substr($string, 0, $trim);
	
	return $string;
  }

  function parse_mysql_dump($filename, $dblink){
	  global $success,$msg;
	  $templine = '';
	  
	  $lines = file($filename);
	  foreach ($lines as $line_num => $line) {
		  if (substr($line, 0, 2) != '--' && $line != '') {
			  $templine .= $line;
			  if (substr(trim($line), -1, 1) == ';') {
				  if (!mysqli_query($dblink, $templine)) {
					  $success = false;
					  $msg = "<div class=\"qerror\">'".mysqli_errno($dblink)." ".mysqli_error($dblink)."' during the following query:</div> 
					  <div class=\"query\">{$templine} </div>";
				  }
				  $templine = '';
			  }
		  }
	  }
  }
  
  function writeConfigFile($host, $username, $password, $name)
  {
      global $success;
      
          $content = "<?php \n" 
		  . "\t/** \n" 
		  . "\t* Configuration\n"
		  . "\n"
		  . "\t* @package Exam Board\n"
		  . "\t* @author aladinsoft.com\n"
		  . "\t* @copyright 2014\n"
		  . "\t* @version Id: config.ini.php\n"
		  . "\t*/\n"

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
      
      $confile = '../lib/config.ini.php';
      if (is_writable('../lib/')) {
          $handle = fopen($confile, 'w');
          fwrite($handle, $content);
          fclose($handle);
          $success = true;
      } else {
          $success = false;
      }
  }

  function safeConfig($host, $username, $password, $name)
  {
          $content = "<?php \n" 
		  . "\t/** \n" 
		  . "\t* Configuration\n"
		  . "\n"
		  . "\t* @package Exam Board\n"
		  . "\t* @author aladinsoft.com\n"
		  . "\t* @copyright 2014\n"
		  . "\t* @version Id: config.ini.php\n"
		  . "\t*/\n"

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
		  
		  return $content;
  }
  
  function cmsHeader()
  {
	  
      echo '<!doctype html>';
      echo '<html>';
      echo '<head>';
      echo '<meta charset="utf-8">';
      echo '<title>Exam Board - Installation</title>';
      echo '<link rel="stylesheet" type="text/css" href="style.css" />';
      echo '</head>';
      echo '<body>';
      echo '<div class="logo"><span style="font-size: 30px;margin-left: 320px;padding-top: 19px;display: inline-block;">- Installation</span></div><div id="installation">';
  }

  function cmsFooter()
  {
      global $err;
      
      echo '</div>';
      echo '<div id="copyright">Exam Board<br />';
      echo 'Copyright &copy; ' . date("Y") . ' AladinSoft';
      echo '</div>';
      echo '<script type="text/javascript">';
      
      if ($err) {
          $j = 0;
          foreach ($err as $key => $i) {
              if ($i > 0) {
                  $first = ($j > 0) ? $i : '';
                  echo "document.getElementById('err{$i}').style.display = 'block';\n";
                  echo "document.getElementById('t{$i}').style.background = '#FFD5D5';\n";
                  $j++;
              }
          }
          echo "document.getElementById('t{$err[0]}').focus();\n";
      }
      
      echo '</script>';
      echo '</body>';
      echo '</html>';
  }
?>