<?php 
include('sidebar.php');
include('list_items.php');
?>

<div id="editform">
<a href="" onClick="javascript:history.go(-1)"> 
	<?php echo 'Cancel' ?> 
    </a>
    
<!-- ADD ITEM FORM -->
<form action="" method = "post" id="add_item">
<select name="series_id" class="field">
<option>Choose a Series</option>
<?php 
$listSeries = list_series($category_id);
foreach ($listSeries as $series) : ?>
     <option value="<?php echo $series['seriesID']; ?>">
     <?php echo $series['seriesName']; ?></option>
     <?php endforeach; ?>
</select>
<br />
<input type="text" name="item_name" value="Item Name" class="field"/>

<select name="type_id" class="field">
<option>Type</option>
<?php 
$listTypes = list_types();
foreach ($listTypes as $type) : ?>
     <option value="<?php echo $type['typeID']; ?>">
     <?php echo $type['typeName']; ?></option>
     <?php endforeach; ?>
</select>

<br />
<select name="author_id" class="field">
<option value="NULL">Author</option>
<?php 
$listAuthors = list_authors();
foreach ($listAuthors as $author) : ?>
     <option value="<?php echo $author['authorID']; ?>">
     <?php echo $author['authorName']; ?></option>
     <?php endforeach; ?>
</select>

<select name="pub_id" class="field">
<option value="NULL">Publisher</option>
<?php 
$listPublishers = list_publishers();
foreach ($listPublishers as $publisher) : ?>
     <option value="<?php echo $publisher['pubID']; ?>">
     <?php echo $publisher['pubName']; ?></option>
     <?php endforeach; ?>
</select>

<select name="man_id" class="field">
<option value="NULL">Manufacturer</option>
<?php 
$listMans = list_mans();
foreach ($listMans as $man) : ?>
     <option value="<?php echo $man['manID']; ?>">
     <?php echo $man['manName']; ?></option>
     <?php endforeach; ?>
</select>
<br/>
<input type="hidden" name="item_id" value="NULL" />
<input type="hidden" name="action" value="add_item" />
<input type="submit" value="Add" />

</form>

</div>

<?php include("view/footer.php"); ?>