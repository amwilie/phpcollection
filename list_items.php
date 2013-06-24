<div id="items">   
<table id="table">
<tr>
<?php

// LIST ITEMS //
foreach ($items as $item) : 
	$row_count++ ;?>
	<td>
    <a href="?category_id=<?php echo $series['catID']; ?>&series_id=<?php echo $item['seriesID']; ?>&item_id=<?php echo $item['itemID']; ?>">
	<?php echo $item['itemName'] ?> </br>
    <img src="images/<?php echo $item['itemID']; ?>.png">
    </a>
    </td>
    <?php 
// LIMIT ITEMS PER ROW //
if (($row_count % 4) == 0) {
	echo "</tr>";} 
	
	$item++;
endforeach; ?>
</table>
</div>

<div id="details">
<?php 
// LIST CHOSEN ITEM AND ITS DETAILS

foreach ($details as $detail) {
	?><img src="images/<?php echo $detail['itemID']; ?>.png"> <br/>
	<?php echo "<h4>" . $detail['itemName'] . "</h4>"; }
?> 

<br/>
<?php
// TYPE //
foreach ($listTypes as $type) {
if ($type['typeID'] == $detail['typeID']) { ?>
	<a href="?action=typeItems&type_id=<?php echo $detail['typeID']; ?>">
    <?php echo $type['typeName']; } ?>
    </a>
<?php }

// AUTHOR //
foreach ($listAuthors as $author) {
if ($author['authorID'] == $detail['authorID']) {
	echo "<h5>Author:</h5> " . $author['authorName']; }} 

if (isset($detail['authorID'])) {
	echo "<br/>"; }
	
// PUBLISHER //
foreach ($listPublishers as $publisher) {
if ($publisher['pubID'] == $detail['pubID']) {
	echo "<h5>Publisher:</h5> " . $publisher['pubName']; }} 
		
if (isset($detail['pubID'])) {
	echo "<br/>"; }
	
// MANUFACTURER //
foreach ($listMans as $man) {
if ($man['manID'] == $detail['manID']) {
	echo "<h5>Manufacturer:</h5>" . $man['manName']; }} 


// ADD-ITEM BUTTON IF ITEMS ARE SHOWN //
if (isset($_GET['item_id'])) { ?>
<form action="" method="post">
<input type="submit" value="Edit Item"/>
<input type="hidden" name="action" value="edit_item_form" />
</form>
<form action"" method="post" OnSubmit='return confirm("Are you sure you want to delete <?php echo $detail['itemName']; ?>?")' >
<input type="hidden" name="item_id" value="<?php echo $detail['itemID']; ?>" />
<input type="hidden" name="item_name" value="<?php echo $detail['itemName']; ?>" />
<input type="hidden" name="series_id" value="<?php echo $detail['seriesID']; ?>" />
<input type="hidden" name="cat_id" value="<?php echo $series['catID']; ?>" />
<input type="hidden" name="action" value="delete_item"/>
<input type="submit" value="Delete Item" />
</form>
<?php } ?>

</div>

<?php include("view/footer.php"); ?>