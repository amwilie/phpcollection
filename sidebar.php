<?php include('view/header.php'); ?>

<div id="sidebar">

<form class="dropdown">
<select name="category_id" onchange=this.form.submit();>
<option>Choose a Category</option>
<?php 
// LIST CATEGORIES //
foreach ($categories as $category) : ?>
     <option value="<?php echo $category['catID']; ?>" <?php 
	 if ($category['catID'] == $category_id) {
		echo 'selected="selected"'; } ?> >
     <?php echo $category['catName']; ?></option>
     <?php endforeach; ?>
</select>
</form>

<?php

// ADD-ITEM BUTTON IF ITEMS ARE SHOWN //
if (isset($_GET['series_id'])) { ?>
<form action="" method="post" class="addbutton">
<input type="submit" value="Add Item"/>
<input type="hidden" name="action" value="add_item_form" />
</form>
<?php }?>

<p>
<section>
<?php
// LIST SERIES BY CATEGORY //
foreach ($listSeries as $series) : ?>
	<a href="?category_id=<?php echo $series['catID']; ?>&series_id=<?php echo $series['seriesID']; ?>">
	<?php echo $series['seriesName'] ?> </a></br>
    <?php endforeach; ?>
</section>    
</p>


<!-- ADD SERIES -->

	<form action="" method="post">
		<input type="hidden" name="action" value="add_series" />
		<input type="hidden" name="series_id" value="NULL" />
            <select name="category_id">
            <?php 
            $categories = get_categories();
            foreach ($categories as $category) { ?>
                 <option value="<?php echo $category['catID']; ?>"
                 <?php if ($category_id == $category['catID']) {
					 echo 'selected="selected"'; 
				 }?> >
                 <?php echo $category['catName']; ?></option>
                 <?php }?>
            </select>
		<input name="series_name" value="Add a Series" />
		<input type="submit" value="add" />
	</form>
</div>