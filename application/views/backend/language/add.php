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
                     <h3 class="m-subheader__title m-subheader__title--separator">
                        LANGUAGE -  ADD
                     </h3>
                  </div>
               </div>
            </div>
            <!-- END: Subheader -->
            <div class="m-content">
               <div class="m-portlet">
                  <form name="form1" action="<?php echo BASE_URL_BACKEND.'/language/doAdd'; ?>" method="post" class="form-horizontal" role="form">
                     <div class="m-portlet__body">
                        <?php if(isset($error)){ ?>
                        <div class="form-group has-error">
                           <div class="col-lg-12">
                              <label for="inputError" class="col-form-label"><?php echo $error;?></label>
                           </div>
                        </div>
                        <?php } ?>
                        <div class="form-group m-form__group row">
                           <label class="col-lg-2 col-form-label">Language Title</label>
                           <div class="col-lg-6">
                              <input name="languagetitle" type="text" class="form-control m-input" placeholder="Language Title" value="<?php if(!empty($languagetitle)){echo $languagetitle;} ?>">
                              <span class="m-form__help">
                              Please enter Language Title
                              </span>
                           </div>
                        </div>
                        <div class="form-group m-form__group row">
                                <label class="col-lg-2 col-form-label">
                                      Language Images :
                                </label>
                       
                                <div class="col-lg-6">
                                    <div style="margin-bottom:10px;" class="imageurl">
                                    <img id="imgurl" src="" style="max-width:400px; padding:5px; border:solid 1px #ccc;">                                   
                                    </div>
                                    <input type="text" name="languageimageurl" readonly="readonly" id="imageurl" class="form-control" value="<?php if(!empty($languageimageurl)){echo $languageimageurl;} ?>" onchange="setVal(this);">
                                    <div style="margin-right:10px;">
                                         <a data-toggle="modal"  href="javascript:;" data-target="#Modalimageurl" onClick="openKCFinder('languageimageurl');" class="btn btn-outline-brand m-btn m-btn--icon m-btn--icon-only m-btn--outline-2x" id="link-file" class="link"><i class="flaticon-attachment"></i></a>
                                        <a class="btn btn-outline-brand m-btn m-btn--icon m-btn--icon-only m-btn--outline-2x" onClick="reset_value('imageurl');" id="link-file" class="link"><i class="fa fa-refresh"></i></a>
                                     </div>
                                    <span class="m-form__help" style="color:#00F;">
                                        width and height optimal is 40px x 20px
                                    </span>
                                </div>
                        </div> 
                         <script>
                        function setVal(sel)
                            {
                                var url =sel.value;
                                $("#imgurl").attr("src", url);

                              }
                        </script>
                        <div class="modal fade" id="Modalimageurl" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                                <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">
                                                                        &times;
                                                                </span>
                                                        </button>
                                                </div>
                                            <div class="modal-body">
                                    <iframe class="filemanager" src="<?=TOOLS_BASE_URL;?>/filemanager/dialog.php?type=1&field_id=imageurl&akey=2063c1608d6e0baf80249c42e2be5804&fldr=" frameborder="0" style="overflow: scroll; overflow-x: hidden; overflow-y: scroll; "></iframe>
                                        </div>
                                        </div>
                                </div>
                        </div>  
                         
                        <div class="m-portlet__foot m-portlet__no-border m-portlet__foot--fit">
                           <div class="m-form__actions m-form__actions--solid">
                              <div class="row">
                                 <div class="col-lg-2"></div>
                                 <div class="col-lg-6">
                                    <input name="tbSave" class="btn btn-info btn-sm" type="submit" value="Save">&nbsp;
                                    <input name="cancel" class="btn btn-info btn-sm" type="button" value="Cancel" onClick="location.href='<?php echo BASE_URL_BACKEND.'/language'; ?>'">
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
   <script src="<?php echo BACKEND_BASE_URL; ?>/demo/default/custom/components/datatables/base/html-table.js" type="text/javascript"></script>
   <!--end::Page Snippets -->
   
</body>
<!-- end::Body -->
</html>