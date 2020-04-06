<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="index,follow" name="googlebot">
<meta name="robots" content="index,follow">

<meta name="theme-color" content="#1689C3">
<meta name="msapplication-navbutton-color" content="#1689C3">
<meta name="apple-mobile-web-app-status-bar-style" content="#1689C3">
<title> <?=$page_title;?> | <?=PROJECT_TITLE;?></title>   
<link rel="shortcut icon" type="image/x-icon" href="<?php echo IMAGES_BASE_URL;?>/icon/favicon.ico">
<link rel="apple-touch-icon" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-152x152.png" />
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo IMAGES_BASE_URL;?>/icon/apple-touch-icon-180x180.png" />
<link rel="manifest" href="<?php echo IMAGES_BASE_URL;?>/icon/manifest.json">
<meta name="msapplication-TileImage" content="<?php echo IMAGES_BASE_URL;?>/icon/ms-icon-144x144.png">
<link href="https://fonts.googleapis.com/css?family=Barlow+Condensed:300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700&display=swap" rel="stylesheet">  

<?php
    if($countHeader > 0){
    $i=0;
    foreach($ListHeader as $hd){
    $i++;  
    ?>
   <meta name="description" content="<?= html_entity_decode(contentValue($hd, 'meta_desc'));?>">
   <meta name="keywords" content="<?= html_entity_decode(contentValue($hd, 'meta_keyword'));?>">
   <?php } } ?> 
