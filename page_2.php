<?php include('header.php')?>
<div class="container">
<div class="row" style="text-align:center;">row 2 Start-

<div class="col-lg-12 col-xs-12">
    <h2 style="color: orange;
    line-height: 2;
    font-family: cursive;">Personal/Blog/Company Website</h2>
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
    <div class="col-lg-1"></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">The Gate Store</h5><img src="image/screencapture-thegatestore-in-1494925460463.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Athlazon</h5><img src="image/index.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Wedding Raga</h5><img src="image/screencapture-weddingraga-co-in-1494925722030.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Cold Aircon</h5><img src="image/screencapture-coldaircon-1494925302701.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Catwall Acrobats</h5><img src="image/screencapture-catwall-acrobats-1494936830837.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    
    <div class="col-lg-1"></div>
    </div>
    <div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Nikstudio</h5><img src="image/screencapture-nikstudio-org-1495009620804.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">My University Search</h5><img src="image/screencapture-myuniversitysearch-1495007718358.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Medical College Guide</h5><img src="image/screencapture-medicalcollegeguide-1495009563115.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Agnikrida</h5><img src="image/screencapture-agnikrida-1494920350771.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    <div class="col-lg-2 image_galary" style=" margin-bottom: 10px;"><h5 style=" color: orange; font-family: cursive; text-align: center;font-size: 15px; line-height: 2;">Glamazon Kolkata</h5><img src="image/screencapture-glamazonkolkata-1494926178350.jpg" class="img-responsive" style=" margin-bottom: 10px;"/></div>
    
    <div class="col-lg-1"></div>
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
