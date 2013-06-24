<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="main.css">
<title>Untitled Document</title>
</head>

<body>
<div id="wrap">
<header> 

<a href="index.php">
<h1>
<?php 
if (!isset($series_name)) {
	echo "My Collection";
} else {
	echo $series_name;}
?>
</h1>
</a>

<form action="index.php" method="post" id="search">
<input type="hidden" name="action" value="submit_search" />
<input name="search_value" />
<input type="submit" value="Search" />
</form> 
</header>

<nav>

<section id="lists">
<a href="?action=listCategories">Categories</a> | 
<a href="?action=listSeries">Series</a> | 
<a href="?action=listTypes">Types</a> | 
<a href="?action=listAuthors">Authors</a> | 
<a href="?action=listPublishers">Publishers</a> | 
<a href="?action=listMans">Manufacturers</a> 
</section>

</nav>
