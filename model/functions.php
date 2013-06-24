<?php 

// GET CATEGORIES
function get_categories() {
	global $db;
	$query = 
	"SELECT * FROM categories
	ORDER BY catName";
	$categories = $db->query($query);
	return $categories;
}
// LIST CATEGORIES
function list_categories($category_id) {
	global $db;
	$query = "
	SELECT * FROM categories
	WHERE catID = $category_id";
	$category = $db->query($query);
	$category = $category->fetch();
	$category_name = $category['catName'];
	return $category_names;
}

// LIST SERIES
function listSeries() {
	global $db;
	$query = "
	SELECT * FROM series
	ORDER by seriesName";
	$listSeries = $db->query($query);
	return $listSeries;
}
// LIST SERIES OF CATEGORY
function list_series($category_id) {
	global $db;
	$query = "
	SELECT * FROM series
	WHERE catID = $category_id
	ORDER by seriesName";
	$listSeries = $db->query($query);
	return $listSeries;
}
// GET SERIES
function fetch_series($series_id) {
	global $db;
	$query = "
	SELECT * FROM series
	WHERE seriesID = $series_id";
	$series = $db->query($query);
	$series = $series->fetch();
	$series_name = $series['seriesName'];
	return $series_name;
}

// ADD ITEM //
function add_item($seriesID, $itemName, $typeID, $autID, $pubID, $manID) {
	global $db;
	$query = "
	INSERT INTO items (itemID, seriesID, itemName, typeID, authorID, pubID, manID)
	VALUES ('$itemID', '$seriesID', '$itemName', '$typeID', '$autID', '$pubID', '$manID')";
	$db->exec($query);
}

// EDIT ITEM //
function edit_item($itemID, $seriesID, $itemName, $typeID, $autID, $pubID, $manID) {
	global $db;
	$query = "
	UPDATE items 
	SET seriesID = '$seriesID',
		itemName = '$itemName',
		typeID = '$typeID',
		authorID = '$autID',
		pubID = '$pubID',
		manID = '$manID'
	WHERE itemID = '$itemID'";
	$db->exec($query);
}

// DELETE ITEM
function delete_item($itemID) {
	global $db;
	$query = "
	DELETE FROM items
	WHERE itemID = '$itemID'";
	$db->exec($query);
}

// LIST ITEMS
function list_items($series_id) {
	global $db;
	$series_id = $_GET['series_id'];
	if (!isset($series_id)) {
				$series_id = 0;}
	$listItems = "
	SELECT * FROM items
	WHERE seriesID = $series_id
	ORDER BY itemName";
	$items = $db->query($listItems);
	return $items;
}

// ITEM DETAILS
function item_details($itemID) {
	global $db;
	$item_id = $_GET['item_id'];
	if (!isset($item_id)) {
				$item_id = 0;
			}
	$listDetails = "
	SELECT * FROM items
	WHERE itemID = $item_id";
	$details = $db->query($listDetails);
	return $details;
}

// ITEM BY MANUFACTURER
function items_by_man() {
	global $db;
	$man_id = $_GET['man_id'];
	$itemsByMan = "
	SELECT * FROM items
	WHERE manID = $man_id
	ORDER BY itemName";
	$items = $db->query($itemsByMan);
	return $items;
}
// ITEM BY PUBLISHER
function items_by_pub() {
	global $db;
	$pub_id = $_GET['pub_id'];
	$itemsByPub = "
	SELECT * FROM items
	WHERE pubID = $pub_id
	ORDER BY itemName";
	$items = $db->query($itemsByPub);
	return $items;
}
// ITEM BY AUTHOR
function items_by_aut($autID) {
	global $db;
	$itemsByAut = "
	SELECT * FROM items
	WHERE authorID = $autID
	ORDER BY itemName";
	$items = $db->query($itemsByAut);
	return $items;
}
// ITEM BY TYPE
function items_by_type($type_id) {
	global $db;
	$itemsByType = "
	SELECT * FROM items
	WHERE typeID = $type_id
	ORDER BY itemName";
	$items = $db->query($itemsByType);
	return $items;
}


// MORE LISTS
function list_types() {
	global $db;
	$query = 
	"SELECT * FROM type
	ORDER BY typeName";
	$listTypes = $db->query($query);
	return $listTypes;
}

function list_authors() {
	global $db;
	$query = 
	"SELECT * FROM author
	ORDER BY authorName";
	$listAuthors = $db->query($query);
	return $listAuthors;
}

function list_publishers() {
	global $db;
	$query = 
	"SELECT * FROM publisher
	ORDER BY pubName";
	$listPublishers = $db->query($query);
	return $listPublishers;
}

function list_mans() {
	global $db;
	$query = 
	"SELECT * FROM manufacturer
	ORDER BY manName";
	$listMans = $db->query($query);
	return $listMans;
}

// ADD
function add_man($manID, $manName) {
	global $db;
	$query = "
	INSERT INTO manufacturer (manID, manName)
	VALUES ('$manID', '$manName')";
	$db->exec($query);
}

function add_pub($pubID, $pubName) {
	global $db;
	$query = "
	INSERT INTO publisher (pubID, pubName)
	VALUES ('$pubID', '$pubName')";
	$db->exec($query);
}

function add_aut($autID, $autName) {
	global $db;
	$query = "
	INSERT INTO author (authorID, authorName)
	VALUES ('$autID', '$autName')";
	$db->exec($query);
}

function add_type($typeID, $typeName) {
	global $db;
	$query = "
	INSERT INTO type (typeID, typeName)
	VALUES ('$typeID', '$typeName')";
	$db->exec($query);
}

function add_series($catID, $seriesID, $seriesName) {
	global $db;
	$query = "
	INSERT INTO series (catID, seriesID, seriesName)
	VALUES ($catID, $seriesID, '$seriesName')";
	$db->exec($query);
}

function add_category($catID, $catName) {
	global $db;
	$query = "
	INSERT INTO categories (catID, catName)
	VALUES ('$catID', '$catName')";
	$db->exec($query);
}

// SEARCH
function search_series($search) {
	global $db;
	$query = "
	SELECT * FROM series
	WHERE seriesName LIKE '%$search%'
	ORDER BY seriesName";
	$searchSeries = $db->query($query);
	return $searchSeries;
}

function search_items($search) {
	global $db;
	$query = "
	SELECT * FROM items
	WHERE itemName LIKE '%$search%'
	ORDER BY itemName";
	$searchItems = $db->query($query);
	return $searchItems;
}

function search_auts($search) {
	global $db;
	$query = "
	SELECT * FROM author
	WHERE authorName LIKE '%$search%'
	ORDER BY authorName";
	$searchAuts = $db->query($query);
	return $searchAuts;
}

function search_mans($search) {
	global $db;
	$query = "
	SELECT * FROM manufacturer
	WHERE manName LIKE '%$search%'
	ORDER BY manName";
	$searchMans = $db->query($query);
	return $searchMans;
}

function search_pubs($search) {
	global $db;
	$query = "
	SELECT * FROM publisher
	WHERE pubName LIKE '%$search%'
	ORDER BY pubName";
	$searchPubs = $db->query($query);
	return $searchPubs;
}

// DELETE //
function delete_type($typeID) {
	global $db;
	$query = 
	"DELETE FROM type
	WHERE typeID = $typeID";
	$db->exec($query);
}

function delete_aut($autID) {
	global $db;
	$query = 
	"DELETE FROM author
	WHERE authorID = $autID";
	$db->exec($query);
}

function delete_pub($pubID) {
	global $db;
	$query = 
	"DELETE FROM publisher
	WHERE  pubID = $pubID";
	$db->exec($query);
}

function delete_man($manID) {
	global $db;
	$query = 
	"DELETE FROM manufacturer
	WHERE manID = $manID";
	$db->exec($query);
}

function delete_cat($catID) {
	global $db;
	$query = 
	"DELETE FROM categories
	WHERE catID = $catID";
	$db->exec($query);
}
	
function delete_series($seriesID) {
	global $db;
	$query = 
	"DELETE FROM series
	WHERE seriesID = $seriesID";
	$db->exec($query);
}