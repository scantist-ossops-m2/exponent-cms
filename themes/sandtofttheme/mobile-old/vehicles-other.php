<!DOCTYPE HTML>
<html>
<head>
<?php 
    expTheme::head(array(
//    	"xhtml"=>false,
        "css_primer"=>array(
            YUI3_RELATIVE."cssreset/cssreset-min.css",
            YUI3_RELATIVE."cssfonts/cssfonts-min.css",
            YUI3_RELATIVE."cssgrids/cssgrids-min.css"
        ),
    	"css_core"=>array(
            "common"
        ),
//    	"css_links"=>true,
//    	"css_theme"=>true
        )
    );
	?>
<!-- <link href='http://fonts.googleapis.com/css?family=Verdana' rel='stylesheet' type='text/css'> -->

<!--[if IE]>
	<link href='<?php echo THEME_RELATIVE?>css/ie_fixes/ie_fixes.css' rel="stylesheet" type="text/css" />
	<![endif]-->
<?php require ("mobile_code.html"); ?>	
</head>
<body>
<div id="doc" class="orientation">
  <div id="hd">
    <div id="logo"> <a href="<?php echo URL_FULL; ?>" title="<?php echo SITE_TITLE; ?>">
	</a> </div></div>
		<div style="align:center;"><strong><?php expTheme::module(array("controller"=>"navigation","action"=>"showall","view"=>"showall_Top Nav","source"=>"@top")); ?></strong></div>
  
  <div id="bd" class="yui3-g">
    <div id="centercol" class="yui3-u-3-4">
      <div class="content">
        <?php expTheme::module(array("controller"=>"container","action"=>"showall","view"=>"showall","source"=>"@page","scope"=>"sectional")); ?>
        <div class="fleet-container">
          <?php expTheme::module(array("controller"=>"container","action"=>"showall","view"=>"showall_Two Column Border","source"=>"@twocol","scope"=>"sectional")); ?>
        </div>
        <div class="clear"></div>
        <div>
          <?php expTheme::main(); ?><?php include ("eucookie.php"); ?>
        </div>
        <h2>Brief History</h2>
        <div>
          <?php expTheme::Module(array("controller"=>"text","action"=>"showall","view"=>"showall","source"=>"@history","scope"=>"sectional")); ?>
          <p>&nbsp;</p>
          <div class="clear"></div>
          <p><a href="othervehicles"><img alt="Go Back" src="files/left.gif" style="float:left" /></a><a href="othervehicles"> &nbsp; Back to Other Vehicles</a></p>
        </div>
      </div>
    </div>

    <div class="clear"></div>
  </div>
  <div id="ft">
   <?php include ("imbeds/copyright.inc"); ?>
		</div>
	</div>
<?php expTheme::foot(); ?>
<?php include ("imbeds/analytics.inc"); ?>
</body>
</html>
<script type="text/javascript" language="javascript" src="<?php echo THEME_RELATIVE?>js/general.js"></script>
<script type="text/javascript" language="javascript" src="<?php echo THEME_RELATIVE?>js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="<?php echo THEME_RELATIVE?>js/thickbox.js"></script>
