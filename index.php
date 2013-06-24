<?php 
require('model/database_connection.php');
require('model/functions.php'); 

// GET CURRENT CATEGORY AND SERIES//
$category_id = $_GET['category_id'];
if (!isset($category_id)) {
            $category_id = 1;}
$series_id = $_GET['series_id'];
if (!isset($series_id)) {
            $series_id = 0;}
			
// GET DATA //
$categories = get_categories();
$category_names = list_categories($category_id); 
$listSeries = list_series($category_id);
$items = list_items($series_id);
$details = item_details($item_id); 
$listTypes = list_types();
$listAuthors = list_authors();
$listPublishers = list_publishers();
$listMans = list_mans();
$series_name = fetch_series($series_id);

// GET ACTIONS //
if (isset($_POST['action'])) {
	$action = $_POST['action'];
} else if (isset($_GET['action'])) {
	$action = $_GET['action'] ;
} else {
	$action = "NULL";}

// ACTIONS //
switch ($action) {
	case "list_all":
		include('sidebar.php');
		include('list_items.php');
		break;
	// ADD ITEM //
	case "add_item_form":
		include('add_item_form.php');
		break;
	case "add_item":
		include('add_item_form.php');
		$itemID = $_POST['item_id'];
		$seriesID = $_POST['series_id'];
		$itemName = $_POST['item_name'];
		$typeID = $_POST['type_id'];
		$autID = $_POST['author_id'];
		$pubID = $_POST['publisher_id'];
		$manID = $_POST['man_id'];
		add_item($seriesID, $itemName, $typeID, $autID, $pubID, $manID);
		echo "<h2>Successfully added " . $itemName . "!</h2>"; ?>
		<a href="" onClick="javascript:history.go(-1)"> 
		<?php echo '<h3>Refresh Listing</h3>' ?> 
		</a>
        <?php
		break;
	// EDIT ITEM //	
	case "edit_item_form":
		include('edit_item_form.php');
		break;
	case "edit_item":
		include('edit_item_form.php');
		$catID = $_POST['cat_id'];
		$itemID = $_POST['item_id'];
		$seriesID = $_POST['series_id'];
		$itemName = $_POST['item_name'];
		$typeID = $_POST['type_id'];
		$autID = $_POST['author_id'];
		$pubID = $_POST['publisher_id'];
		$manID = $_POST['man_id'];
		edit_item($itemID, $seriesID, $itemName, $typeID, $autID, $pubID, $manID); 
		echo "<h2>Successfully updated " . $itemName . "!</h2>"; ?>
		<a href="" onClick="javascript:history.go(-1)"> 
		<?php echo '<h3>Refresh Listing</h3>' ?> 
		</a>
        <?php
		break;
	// DELETE ITEM //
	case "delete_item":
		$seriesID = $_POST['series_id'];
		$catID = $_POST['cat_id'];
		$itemID = $_POST['item_id'];
		$itemName = $_POST['item_name'];
		delete_item($itemID);
		header('Location: .?category_id=' . $catID . '&series_id=' . $seriesID);
		break;
		
	// ADD SERIES //
	 case "add_series":
		$catID = $_POST['category_id'];
		$seriesID = $_POST['series_id'];
		$seriesName = $_POST['series_name'];
		add_series($catID, $seriesID, $seriesName);
		header('Location: .?action=listSeries');
		break;
		
	// ADD CATEGORY //
	case "add_category":
		$catID = $_POST['catID'];
		$catName = $_POST['cat_name'];
		add_category($catID, $catName);
		header('Location: .?action=listCategories');
		break;
	
	// ADD MANUFACTURER	//
	case "add_man":
		$manID = $_POST['manID'];
		$manName = $_POST['man_name'];
		add_man($manID, $manName);
		header('Location: .?action=listMans');
		break;	
	// ADD PUBLISHER //
	case "add_pub":
		$pubID = $_POST['pubID'];
		$pubName = $_POST['pub_name'];
		add_pub($pubID, $pubName);
		header('Location: .?action=listPublishers');
		break;
	// ADD AUTHOR //
	case "add_aut":
		$autID = $_POST['autID'];
		$autName = $_POST['aut_name'];
		add_aut($autID, $autName);
		header('Location: .?action=listAuthors');
		break;
	// ADD TYPE //
	case "add_type":
		$typeID = $_POST['typeID'];
		$typeName = $_POST['type_name'];
		add_type($typeID, $typeName);
		header('Location: .?action=listTypes');
		break; ?> 
 
		<?php       	
	// SEARCH //
	case "submit_search":
		include('sidebar.php');
		$search = $_POST['search_value'];
		echo '<section id="form"><p><b>&nbsp;Series Matching Your Search...</b></p>';
		$searchSeries = search_series($search);
		foreach ($searchSeries as $series) { ?>
			&nbsp;<a href="?category_id=<?php echo $series['catID']?>&series_id=<?php echo $series['seriesID']; ?>">
			<?php echo $series['seriesName'] ?>
            </a><br />
			<?php ;
			}
		echo "<p><b>&nbsp;Items Matching Your Search...</b></p>";
		$searchItems = search_items($search);
		foreach ($searchItems as $item) { ?>
			&nbsp;<a href="?series_id=<?php echo $item['seriesID'] ?>&item_id=<?php echo $item['itemID']?>">
			<?php echo $item['itemName'] ?>
            </a><br />
			<?php ;
			}
		echo "<p><b>&nbsp;Authors Matching Your Search...</b></p>";
		$searchAuts = search_auts($search);
		foreach ($searchAuts as $aut) { ?>
			&nbsp;<a href="?action=autItems&aut_id=<?php echo $aut['authorID']?>">
			<?php echo $aut['authorName'] ?>
            </a><br />
			<?php ;
			}
		echo "<p><b>&nbsp;Publishers/Manufacturers Matching Your Search...</b></p>";
		$searchMans = search_mans($search);
		foreach ($searchMans as $man) { ?>
			&nbsp;<a href="?action=manItems&man_id=<?php echo $man['manID']?>">
			<?php echo $man['manName'] ?>
            </a><br />
			<?php ;
			}
		$searchPubs = search_pubs($search);
		foreach ($searchPubs as $pub) { ?>
			&nbsp;<a href="?action=pubItems&pub_id=<?php echo $pub['pubID']?>">
			<?php echo $pub['pubName'] ?>
            </a><br />
            </section><?php ;
			}
		break; ?>
	
   		<?php
	// LIST ITEMS BY MANUFACTURER //
	case "manItems":
		include('sidebar.php');
		$items = items_by_man(); ?>
        <section id="form">
	<table>
	<tr>
		<?php
		foreach ($items as $item) : 
		$row_count++ ;?>
	<td>
    	<a href="?series_id=<?php echo $item['seriesID'] ?>&item_id=<?php echo $item['itemID'] ?>">
		<?php echo $item['itemName'] ?> </br>
    	<img src="images/<?php echo $item['itemID']; ?>.png"></a>
    </td>
   	 	<?php 
		if (($row_count % 4) == 0) {
		echo "</tr>";} 
		$item++;
		endforeach; ?>
	</table>
    </section>
   		<?php
		break;
	// LIST ITEMS BY PUBLISHER //
	case "pubItems":
		include('sidebar.php');
		$items = items_by_pub(); ?>
    <section id="form">
	<table>
	<tr>
		<?php
		foreach ($items as $item) : 
		$row_count++ ;?>
	<td>
    	<a href="?series_id=<?php echo $item['seriesID'] ?>&item_id=<?php echo $item['itemID'] ?>">
		<?php echo $item['itemName'] ?></br>
    	<img src="images/<?php echo $item['itemID']; ?>.png"></a>
    </td>
    <?php 
		if (($row_count % 4) == 0) {
		echo "</tr>";} 
	
		$item++;
		endforeach; ?>
	</table>
    </section>
    	<?php
		break;
	// LIST ITEMS BY AUTHOR //
	case "autItems":
		include('sidebar.php');
		$autID = $_GET['aut_id'];
		$items = items_by_aut($autID); ?>
        <section id="form">
		<table>
	<tr>
		<?php
		foreach ($items as $item) : 
		$row_count++ ;?>
	<td>
    	<a href="?series_id=<?php echo $item['seriesID'] ?>&item_id=<?php echo $item['itemID'] ?>">
		<?php echo $item['itemName'] ?> </br>
    	<img src="images/<?php echo $item['itemID']; ?>.png"></a>
    </td>
    <?php 
		if (($row_count % 4) == 0) {
		echo "</tr>";} 
	
		$item++;
		endforeach; ?>
	</table>
    </section>
    	<?php
		break;
		
	// LIST ITEMS BY TYPE //
	case "typeItems":
		include('sidebar.php');
		$type_id = $_GET['type_id'];
		$items = items_by_type($type_id); ?>
        <section id="form">
	<table>
	<tr>
		<?php
		foreach ($items as $item) : 
		$row_count++ ;?>
	<td>
    	<a href="?series_id=<?php echo $item['seriesID'] ?>&item_id=<?php echo $item['itemID'] ?>">
		<?php echo $item['itemName'] ?> </br>
    	<img src="images/<?php echo $item['itemID']; ?>.png"></a>
    </td>
    <?php 
		if (($row_count % 4) == 0) {
		echo "</tr>";} 
	
		$item++;
		endforeach; ?>
	</table>
    </section>
    	<?php
		break;
		
    // LIST ALL TYPES //     
	case "listTypes":
		include('sidebar.php');
		$listTypes = list_types();?>
   <section id="form">
   		<form action="" method="post">
        <input name="type_name" value="Add a Type" />
        <input type="hidden" name="typeID" value="NULL"/>
        <input type="hidden" name="action" value="add_type" />
        <input type="submit" value="Add"/>
        </form>
   <table>
        <?php foreach ($listTypes as $type) { ?>
   <tr>
        <form method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $type['typeName']; ?>?")'>
        <input type="hidden" name="action"  value="deleteType" />
        <input type="hidden" name="type_id" value="<?php echo $type['typeID'] ?>" />
        <input type="submit" value="X" />
        </form>

        <a href="?action=typeItems&type_id=<?php echo $type['typeID']; ?>">
        <?php echo $type['typeName'] . "<br />"; ?> 
        </a>
        <?php } ?>
   </tr>
   </table>
   </section>
        <?php
		break;
		
	// LIST ALL AUTHORS //	
	case "listAuthors":
		include('sidebar.php');
		$listAuthors = list_authors();?>
   <section id="form">
        <form action="" method="post">
        <input name="aut_name" value="Add an Author" />
        <input type="hidden" name="autID" value="NULL"/>
        <input type="hidden" name="action" value="add_aut" />
        <input type="submit" value="Add"/>
        </form>
   <table>
        <?php foreach ($listAuthors  as $aut) { ?>
    <tr>    
        <form action="" method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $aut['autName']; ?>?")'>
        <input type="hidden" name="action"  value="deleteAut" />
        <input type="hidden" name="aut_id" value="<?php echo $aut['authorID'] ?>" />
        <input type="submit" value="X" />
        </form>

        <a href="?action=autItems&aut_id=<?php echo $aut['authorID']; ?>">
        <?php echo $aut['authorName'] . "<br />"; ?> 
        </a>
    </tr>
        <?php } ?>
    </table>
    </section>
        <?php
		break;
		
	// LIST ALL PUBLISHERS //		
	case "listPublishers":
		include('sidebar.php');
		$listPublishers = list_publishers();?>
    <section id="form">
        <form action="" method="post">
        <input name="pub_name" value="Add a Publisher" />
        <input type="hidden" name="pubID" value="NULL"/>
        <input type="hidden" name="action" value="add_pub" />
        <input type="submit" value="Add"/>
        </form>
    <table>
        <?php foreach ($listPublishers  as $pub) { ?>
        
    <tr>    
        <form action="" method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $pub['pubName']; ?>?")'>
        <input type="hidden" name="action"  value="deletePub" />
        <input type="hidden" name="pub_id" value="<?php echo $pub['pubID'] ?>" />
        <input type="submit" value="X" />
     	</form>

        <a href="?action=pubItems&pub_id=<?php echo $pub['pubID']; ?>">
        <?php echo $pub['pubName'] . "<br />"; ?> 
        </a>
    </tr>
        <?php } ?>
    </table>
    </section>
        <?php
		break;
	// LIST ALL MANUFACTURERS //	
	case "listMans":
		include('sidebar.php');
		$listMans = list_mans();?>
    <section id="form">
   		<form action="" method="post">
        <input name="man_name" value="Add a Manufacturer" />
        <input type="hidden" name="manID" value="NULL"/>
        <input type="hidden" name="action" value="add_man" />
        <input type="submit" value="Add"/>
        </form>
    <table>
        <?php foreach ($listMans as $man) { ?>
    <tr>    
        <form method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $man['manName']; ?>?")'>
        <input type="hidden" name="action"  value="deleteMan" />
        <input type="hidden" name="man_id" value="<?php echo $man['manID'] ?>" />
        <input type="submit" value="X" />
      	</form>

        <a href="?action=manItems&man_id=<?php echo $man['manID']; ?>">
        <?php echo $man['manName'] . "<br />"; ?> 
        </a>
    </tr>
        <?php } ?>
    </table>
    </section>
        <?php
		break;
		
	// LIST ALL CATEGORIES //	
	case "listCategories":
		include('sidebar.php');
		$categories = get_categories();?>
    <section id="form">
        <form action="" method="post" class="input">
        <input name="cat_name" value="Add a Category" />
        <input type="hidden" name="catID" value="NULL"/>
        <input type="hidden" name="action" value="add_category" />
        <input type="submit" value="Add"/>
        </form>
    <table>
        <?php foreach ($categories as $cat) { ?>
    <tr>    
        <form method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $cat['catName']; ?>?")'>
        <input type="hidden" name="action"  value="deleteCat" />
        <input type="hidden" name="cat_id" value="<?php echo $cat['catID'] ?>" />
        <input type="submit" value="X" />
      	</form>

       
        <?php echo $cat['catName'] . "<br />"; ?> 
        
    </tr>
        <?php } ?>
    </table>
    </section>
        <?php
		break;
		
	// LIST ALL SERIES //	
	case "listSeries":
		include('sidebar.php');
		$listSeries = listSeries();?>
    <section id="form">
    <table>
        <?php
		foreach ($listSeries as $series) { ?>
    <tr>    
        <form method="post" class="button" OnSubmit='return confirm("Are you sure you want to delete <?php echo $series['seriesName']; ?>?")'>
        <input type="hidden" name="action"  value="deleteSeries" />
        <input type="hidden" name="series_id" value="<?php echo $series['seriesID'] ?>" />
        <input type="submit" value="X" />
      	</form>

        <?php echo $series['seriesName'] . "<br />"; ?>   
    </tr>
        <?php } ?>
    </table>
    </section>
        <?php
		break;
		
	case "deleteType":
		$typeID = $_POST['type_id'];
		delete_type($typeID);
		header('Location: .?action=listTypes');
		break;
	case "deleteAut":
		$autID = $_POST['aut_id'];
		delete_aut($autID);
		header('Location: .?action=listAuthors');
		break;
	case "deletePub":
		$pubID = $_POST['pub_id'];
		delete_pub($pubID);
		header('Location: .?action=listPublishers');
		break;
	case "deleteMan":
		$manID = $_POST['man_id'];
		delete_man($manID);
		header('Location: .?action=listMans');
		break;
	case "deleteCat":
		$catID = $_POST['cat_id'];
		delete_cat($catID);
		header('Location: .?action=listCategories');
		break;
	case "deleteSeries":
		$seriesID = $_POST['series_id'];
		delete_series($seriesID);
		header('Location: .?action=listSeries');
		break;
}
?>