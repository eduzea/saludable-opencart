<?php
/*
 *	location: admin/view
 */
?>
<?php echo $content_top; ?>
<div class="row">

	<div class="col-md-12">
		<?php if($extensions) { ?>
		<div class="text-center">
			<h1>Hooray! You've made it</h1>
			<h3>Now click the magic wand button and see how easy it is to install extensions!</h3>
			
			<br/>
			<div class="row row-clear" style="max-width:1200px; display:inline-block">
				
					<?php foreach($extensions as $extension) { ?>
						<div class="col-md-3 col-sm-6">
							<?php include(DIR_APPLICATION.'view/template/d_shopunity/extension_thumb.tpl'); ?>
						</div>
					<?php } ?>
				
			</div>
			<p>You can install more awesome extensions in the market section both free and commercial. Enjoy!</p>
			<a href="<?php echo $href_market; ?>" class="btn btn-primary btn-lg">Search for more extensions</a>
			<br/>
			<br/>
		</div>
		<?php } ?>

		<div class="ibox">
			<div class="ibox-title">
				<h4>Search for extensions</h4>
				<p>
					<input type="text" class="form-control fuzzy-search" placeholder="Search for...">
				</p>
			</div>
		</div>
		<?php echo $developer_generate_module; ?>

		<div  id="list_search_1" class="ibox">
			<?php if($store_extensions){ ?>
			<div class="ibox-title">
				<h4>Purchased modules.</h4>
				<p>These modules have been purchased. You can use them only for this webshop.</p>
			</div>
			<div class="ibox-content p-n">
				<ul class="list list-unstyled">
					<?php foreach($store_extensions as $extension) { ?>
					<li>
						<?php include(DIR_APPLICATION.'view/template/d_shopunity/extension_thumb_row.tpl'); ?>
					</li>
					<?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>

		<div  id="list_search_2" class="ibox">
			<?php if($local_extensions){ ?>
			<div class="ibox-title">
				<h4>Expired or Free licenses.</h4>
				<p>These modules do not have a license, or their lisence has been expired. </p>
			</div>
			<div class="ibox-content p-n">
				<ul class="list list-unstyled">
					<?php foreach($local_extensions as $extension) { ?>
					<li>
						<?php include(DIR_APPLICATION.'view/template/d_shopunity/extension_thumb_row.tpl'); ?>
					</li>
					<?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>

		<div id="list_search_3" class="ibox">
			<?php if($unregestered_extensions){ ?>
			<div class="ibox-title">
				<h4>Unknown Modules.</h4>
				<p>These modules are not regestered with the shopunity network.</p>
			</div>
			<div class="ibox-content p-n">
				<ul class="list list-unstyled">
					<?php foreach($unregestered_extensions as $extension) { ?>
					<li>
						<?php include(DIR_APPLICATION.'view/template/d_shopunity/extension_thumb_row.tpl'); ?>
					</li>
					<?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>

	</div>
</div>
<script>

	var options = {
	  valueNames: [ 'name' ],
	  plugins: [ ListFuzzySearch() ]
	};

	if($('#list_search_1 ul').length){
		var userList1 = new List('list_search_1', options);
		$('.fuzzy-search').on("keyup",function(){
	        userList1.search($(this).val());
	    });
	}
	if($('#list_search_2 ul').length){
		var userList1 = new List('list_search_2', options);
		$('.fuzzy-search').on("keyup",function(){
	        userList1.search($(this).val());
	    });
	}
	if($('#list_search_3 ul').length){
		var userList1 = new List('list_search_3', options);
		$('.fuzzy-search').on("keyup",function(){
	        userList1.search($(this).val());
	    });
	}



</script>
<?php echo $content_bottom; ?>
