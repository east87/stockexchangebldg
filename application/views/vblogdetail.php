<!doctype html>
<html lang="en">
   <head>
    <?php
      if($countContent > 0){
      $i=0;
      foreach($ListContent as $content){
              $i++;
      ?>
      <meta charset="utf-8">
      <title> <?= html_entity_decode(contentValue($content, 'title'));?> | Selangit Studio</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta name="description" content="<?= html_entity_decode(contentValue($content, 'meta_desc'));?>">
        <meta name="keywords" content="<?= html_entity_decode(contentValue($content, 'meta_keyword'));?>">
      <?php include 'include/icon.php';?>  
      <link href="<?= FRONTEND_BASE_URL; ?>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
      <link href="<?= FRONTEND_BASE_URL; ?>/css/theme.css" rel="stylesheet" type="text/css" media="all" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css" media="all">
      <link rel="stylesheet" type="text/css" href="<?= FRONTEND_BASE_URL; ?>/share/jssocials.css" />
      <link rel="stylesheet" type="text/css" href="<?= FRONTEND_BASE_URL; ?>/share/jssocials-theme-flat.css" />
       <script src="<?= FRONTEND_BASE_URL; ?>/js/jquery-3.1.1.min.js"></script>
       <script src="<?= FRONTEND_BASE_URL; ?>/share/jssocials.js"></script>
       <?php include 'include/analytics.php';?>
   </head>
   <body class=" ">
      <?php include 'include/tagmanager.php';?>
      <?php include 'include/vheader.php';?>
      <?php
         if($countHeader > 0){
         $i=0;
         foreach($ListHeader as $hd){
         $i++;  
         ?>
      <section class="parallax text-center height-20 imagebg" data-overlay="3">
         <div class="background-image-holder">
            <img alt="<?= html_entity_decode(contentValue($hd, 'header_title'));?>" src="<?= html_entity_decode(contentValue($hd, 'header_images'));?>" />
         </div>
         <!--end of container-->
      </section>
     
      
      <section class="news">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-12 col-lg-8">
                            <article>
                                <div class="article__title text-center">
                                    <h1 class="h2"><?= html_entity_decode(contentValue($content, 'title'));?></h1>
                                    <span><?= html_entity_decode(date_convert(contentValue($content, 'publish_date')));?> </span>
                                    <span>
                                        <a href="#"><?= html_entity_decode(contentValue($content, 'category'));?></a>
                                    </span>
                                </div>
                                <!--end article title-->
                                <div class="article__body">
                                    <img alt="<?= html_entity_decode(contentValue($content, 'title'));?>" src="<?= html_entity_decode(contentValue($content, 'images'));?>" />
                                    <br/>
                                    <div class="text-justify">
                                        <?= html_entity_decode(contentValue($content, 'desc'));?>
                                    </div>
                                   
                                </div>
                                <div class="article__share text-center">
                                <strong>Share</strong>
                                <div id="sharePopup"></div>
                                <script>
                                          $(function() {

                                              //url = get url page to share 
                                              //text= title share
                                               var url = window.location.href;
                                               var text ='<?= html_entity_decode(contentValue($content, 'title'));?>';

                                               $("#sharePopup").jsSocials({
                                                   url: url,
                                                   text: text,
                                                   showLabel: false,
                                                   showCount: false,
                                                   shares: ["facebook","whatsapp", "twitter", "email", "line", "telegram", "messenger"]
                                               });

                                           });
                                </script>
                                </div>
                                <div class="article__share text-center">
                                    <?php if($prev){?>
                                            <a class="btn btn-outline btn-primary" href="<?= $prev?>">
                                            <span class="icon">
                                            <span class="arrow-left"></span>
                                            </span>
                                            <span class="text">Prev</span>
                                            </a>
                                             <?php }?>
                                             <?php if($next){?>
                                             <a class="btn btn-outline btn-primary" href="<?= $next?>">
                                            <span class="text">Next</span>
                                            <span class="icon">
                                            <span class="arrow-right"></span>
                                            </span>
                                            </a>
                                             <?php }?>
                                </div>
                            </article>
                            <!--end item-->
                        </div>
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </section>
        <?php  } } ?>
      <?php include 'include/ready.php';?>
      <?php include 'include/vfooter.php';?>
      </div>
  
      <script src="<?= FRONTEND_BASE_URL; ?>/js/flickity.min.js"></script>
      <script src="<?= FRONTEND_BASE_URL; ?>/js/parallax.js"></script>
      <script src="<?= FRONTEND_BASE_URL; ?>/js/isotope.min.js"></script>
      <script src="<?= FRONTEND_BASE_URL; ?>/js/smooth-scroll.min.js"></script>
      
      <script src="<?= FRONTEND_BASE_URL; ?>/js/scripts.js"></script>
   </body>
    <?php } } ?>  
</html>