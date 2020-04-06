<!-- end::Body -->
<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
   <!-- begin:: Page -->
   <div class="m-grid m-grid--hor m-grid--root m-page">
      <?php include VIEWS_PATH_BACKEND."/menu.php"; ?>
      <div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
         <?php include VIEWS_PATH_BACKEND."/leftMenu.php"; ?>	
         <div class="m-grid__item m-grid__item--fluid m-wrapper">
            <!-- BEGIN: Subheader -->
            <div class="m-subheader ">
               <div class="d-flex align-items-center">
                  <div class="mr-auto">
                     <h4 class="m-subheader__title m-subheader__title--separator">
                        <?= $breadcrump['module_group_name']; ?> 
                     </h4>
                     <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                           <a href="<?=BASE_URL_BACKEND?>" class="m-nav__link m-nav__link--icon">
                           <i class="m-nav__link-icon la la-home"></i>
                           </a>
                        </li>
                        <li class="m-nav__separator">
                           -
                        </li>
                        <li class="m-nav__item">
                           <a href="<?=BASE_URL_BACKEND?>/<?= generateNameLabel($breadcrump['module_name']); ?>" class="m-nav__link">
                           <span class="m-nav__link-text">
                           <?= $breadcrump['module_name']; ?>
                           </span>
                           </a>
                        </li>
                        <li class="m-nav__separator">
                           -
                        </li>
                        <li class="m-nav__item">
                           <span class="m-nav__link-text">
                           sub Content Add
                           </span>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            <!-- END: Subheader -->
            <div class="m-content">
               <div class="m-portlet m-portlet--tabs">
                  <div class="m-portlet__head">
                     <div class="m-portlet__head-tools">
                        <ul class="nav nav-tabs m-tabs-line m-tabs-line--primary m-tabs-line--2x" role="tablist">
                           <?php if($countdataLanguage > 0){?>
                           <?php foreach($dataLanguage as $language){ ?>
                           <li class="nav-item m-tabs__item">
                              <a class="nav-link m-tabs__link <?php if ($language['language_default']==1) { echo 'active' ; }?>" data-toggle="tab" href="#m_tabs<?php echo $language['language_id'];?>" role="tab">
                              <i class="la"><img width="20px" src="<?php echo BASE_URL.$language['language_image'];?>"/>  </i>
                              <?php echo $language['language_title'];?>
                              </a>
                           </li>
                           <?php } ?>
                           <?php } ?>
                        </ul>
                     </div>
                  </div>
                  <form name="form1" action="<?php echo BASE_URL_BACKEND.'/'.$controller.'/doAddChild/'.$label_id; ?>" method="post" role="form" class="m-form m-form--fit m-form--label-align-right m-form--group-seperator">
                     <?php if(isset($error)){ ?>
                     <div class="form-group has-error">
                        <div class="col-lg-12">
                           <label for="inputError" class="control-label"><?php echo $error;?></label>
                        </div>
                     </div>
                     <?php } ?> 
                     <input type="hidden" name="row_parent" value="<?=$row_parent;?>">
                     <div class="m-portlet__body">
                        <div class="tab-content">
                           <?php if($countdataLanguage > 0){?>
                           <?php foreach($dataLanguage as $language){ ?>
                           <div class="tab-pane <?php if ($language['language_default']==1) { echo 'active' ; }?>" id="m_tabs<?php echo $language['language_id'];?>" role="tabpanel">
                              <!--begin::Form-->
                              <div class="m-portlet__body">
                                 <?php echo formGenerate($controller,$ListLabel,$language['language_id'],$language['language_default']);?> 
                                 <!--end::Form-->
                              </div>
                              <!--end::Form-->
                           </div>
                           <?php } ?>
                           <?php } ?>
                           <div class="m-portlet__foot m-portlet__no-border m-portlet__foot--fit">
                              <div class="m-form__actions m-form__actions--solid">
                                 <div class="row">
                                    <div class="col-lg-2"></div>
                                    <div class="col-lg-6">
                                       <input name="tbSave" class="btn btn-info btn-sm" type="submit" value="Save">&nbsp;
                                       <a href="<?php echo BASE_URL_BACKEND.'/'.$controller; ?>" name="cancel" class="btn btn-danger btn-sm" > Cancel </a>                                                    
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <?php include VIEWS_PATH_BACKEND."/footer.php"; ?>
   </div>
   <!-- end:: Page -->
   <!--begin::Base Scripts -->
   <script src="<?php echo BACKEND_BASE_URL; ?>/vendors/base/vendors.bundle.js" type="text/javascript"></script>
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
   <!--end::Base Scripts -->   
   <!--begin::Page Vendors -->
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/custom/components/forms/widgets/bootstrap-datepicker.js" type="text/javascript"></script>
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/custom/components/forms/widgets/bootstrap-timepicker.js" type="text/javascript"></script>   
   <!--end::Page Snippets -->
</body>
<!-- end::Body -->
</html>