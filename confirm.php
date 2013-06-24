<?php 
include('sidebar.php');
include('list_items.php');
?>

<section id="form">
<?php echo "<h2>Successfully added " . $itemName . "!</h2>"; ?>
		<a href="" onClick="javascript:history.go(-1)"> 
		<?php echo '<h3>Refresh Listing</h3>' ?> 
		</a>
</section>

<?php include("view/footer.php"); ?>