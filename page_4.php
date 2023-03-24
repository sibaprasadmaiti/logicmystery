<?php include('header.php')?>
<div class="container">
<div class="row" style="text-align:center;">

<div class="col-lg-12 col-xs-12">
    <h2 style="color: orange;
    line-height: 2;
    font-family: cursive;">Mobile Application</h2>
    </div>
    
</div><!--row 2 End-->

<div class="row">
    
    <div class="col-lg-3"></div>
    <div class="col-lg-3"><img src="image/client/logo_1.jpg" class="img-responsive" style=" margin-bottom: 10px;"/><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Mobile Application</h5></div>
    <div class="col-lg-3"><img src="image/client/cold_aircon_2-2.png" class="img-responsive" style=" margin-bottom: 10px; background-color: white;"/><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Service Center Utility</h5></div>
    
    <div class="col-lg-3"></div>
</div>
<div class="row" style=" text-align: center; margin-top: 10px;">
     <div class="col-lg-12"><h4 style=" font-family: cursive; color: orange;"><i class="fa fa-empire" aria-hidden="true" style=" color: white; font-size: 25px; margin-right: 6px;"></i>Many More <i class="fa fa-empire" aria-hidden="true" style=" color: white; font-size: 25px;"></i></h4></div>
</div>
<!-- <script src="js/myjs.js" type="text/javascript"></script> -->
<script>
    $(function() {
    	$('img').on('click', function() {
			$('.enlargeImageModalSource').attr('src', $(this).attr('src'));
			$('#enlargeImageModal').modal('show');
		});
});
</script>

<style>
    .pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}
</style>
</div>

<?php include('footer.php')?>
