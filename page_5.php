<?php include('header.php')?>
<div class="container">
<div class="row" style="text-align:center;">

<div class="col-lg-12 col-xs-12">
    <h2 style="color: orange;
    line-height: 2;
    font-family: cursive;">Affliiate Website</h2>
    </div><!--row 2 End-->
    
</div>

<div class="row">
    <div class="modal fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        </div>
        <div class="modal-body">
          <img src="" class="enlargeImageModalSource" style="width: 100%;">
        </div>
      </div>
    </div>
</div>
    <div class="col-lg-3"></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Shoppal</h5><img src="image/screencapture-shoppal-in-1494919977694.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Fulpy</h5><img src="image/screencapture-fulpy-1494925940880.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Coupondesh</h5><img src="image/screencapture-coupondesh-1501488209786.png" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    
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
