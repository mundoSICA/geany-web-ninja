#!/usr/bin/php
<!DOCTYPE html>
<html lang="es-MX">
<head>
    <meta charset="utf-8">
	<title>Muestra código PHP con color bonito</title>
<?php
$fileName = $argv[0];

if(isset($argv[1]) && file_exists($argv[1])){
	$fileName = $argv[1];
  
}
/**
 * Convierte tu código php a un código html bonito :¬),
 *
 * @param tipo $parametro1 descripción del párametro 1.
 * @return tipo descripcion de lo que regresa
 * @access publico/privado
 * @link [URL de mayor infor]
 */
function highlight_geany($fileName) {
	return str_replace(
						array(
							"style=\"color: #000000\"",
							"style=\"color: #0000BB\"",
							"style=\"color: #DD0000\"",
							"style=\"color: #FF8000\"",
							"style=\"color: #007700\"",
							"<br />",
							"code>",
							"&nbsp;"
							),
						array(
								"class=\"html\"",
								"class=\"php-default\"",
								"class=\"php-str\"",
								"class=\"php-comment\"",
								"class=\"php-word\"",
								"\n",
								"pre>",
								" "
							),
			highlight_file("$fileName", true)
	);
}//end function
?>
<head>
	<title><?php echo $fileName; ?></title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<style type="text/css" media="all">
		pre{
	background: #1A1A1A;
	color: #FFF;
	font-size: 15px;
	text-shadow:0 0 3px #000,-1px -1px 0 #000,1px 1px 0 #000;
}
.html{color: #6253E5;text-shadow:none}
.php-comment{color: #444;}
.php-default{color: #FFF;}
.php-word{color: #00CE00;}
.php-str{color: #E05D09;}
	</style>
</head>
<body>
	<h2><?php echo $fileName; ?></h2>
	<?php echo highlight_geany($fileName); ?>
</body>
</html>
