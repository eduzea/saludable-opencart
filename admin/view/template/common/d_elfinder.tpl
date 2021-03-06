<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/jquery-ui-1.8.18.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui-themes/smoothness/jquery-ui-1.8.18.custom.css" type="text/css" media="screen" title="no title" charset="utf-8">

	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/common.css"      type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/dialog.css"      type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/toolbar.css"     type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/navbar.css"      type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/statusbar.css"   type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/contextmenu.css" type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/cwd.css"         type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/quicklook.css"   type="text/css" media="screen" charset="utf-8">
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/commands.css"    type="text/css" media="screen" charset="utf-8">
	
	<link rel="stylesheet" href="<?php echo $base; ?>admin/view/stylesheet/d_elfinder/theme.css"       type="text/css" media="screen" charset="utf-8">
	
	<!-- elfinder core -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.version.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/jquery.elfinder.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.resources.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.options.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.history.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/elFinder.command.js"   type="text/javascript" charset="utf-8"></script>
	
	<!-- elfinder ui -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/overlay.js"       type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/workzone.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/navbar.js"        type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/dialog.js"        type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/tree.js"          type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/cwd.js"           type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/toolbar.js"       type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/button.js"        type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/uploadButton.js"  type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/viewbutton.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/searchbutton.js"  type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/sortbutton.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/panel.js"         type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/contextmenu.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/path.js"          type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/stat.js"          type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/ui/places.js"        type="text/javascript" charset="utf-8"></script>
	
	<!-- elfinder commands -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/back.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/forward.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/reload.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/up.js"        type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/home.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/copy.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/cut.js"       type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/paste.js"     type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/open.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/rm.js"        type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/info.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/duplicate.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/rename.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/help.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/getfile.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/mkdir.js"     type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/mkfile.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/upload.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/download.js"  type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/edit.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/quicklook.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/quicklook.plugins.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/extract.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/archive.js"   type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/search.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/view.js"      type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/resize.js"    type="text/javascript" charset="utf-8"></script>
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/sort.js"      type="text/javascript" charset="utf-8"></script>		
    <script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/commands/selectforproduct.js"      type="text/javascript" charset="utf-8"></script>		

	<!-- elfinder languages -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/i18n/elfinder.en.js"    type="text/javascript" charset="utf-8"></script>	

	<!-- elfinder dialog -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/jquery.dialogelfinder.js"     type="text/javascript" charset="utf-8"></script>

	<!-- elfinder 1.x connector API support -->
	<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/proxy/elFinderSupportVer1.js" type="text/javascript" charset="utf-8"></script>

	<!-- elfinder custom extenstions -->
	<!--<script src="<?php echo $base; ?>admin/view/javascript/d_elfinder/extensions/jplayer/elfinder.quicklook.jplayer.js" type="text/javascript" charset="utf-8"></script>-->

	<style type="text/css">
		body { font-family:arial, verdana, sans-serif;}
		.button {
			width: 100px;
			position:relative;
			display: -moz-inline-stack;
			display: inline-block;
			vertical-align: top;
			zoom: 1;
			*display: inline;
			margin:0 3px 3px 0;
			padding:1px 0;
			text-align:center;
			border:1px solid #ccc;
			background-color:#eee;
			margin:1em .5em;
			padding:.3em .7em;
			border-radius:5px; 
			-moz-border-radius:5px; 
			-webkit-border-radius:5px;
			cursor:pointer;
		}
		
/*		#dialog {
			position:absolute;
			left:50%;
			top:1000px;
		}
*/		
	</style>

	<script type="text/javascript" charset="utf-8">	
	String.prototype.replaceAll = function(token, newToken, ignoreCase) {
    var str, i = -1, _token;
    if((str = this.toString()) && typeof token === "string") {
        _token = ignoreCase === true? token.toLowerCase() : undefined;
        while((i = (
            _token !== undefined? 
                str.toLowerCase().indexOf(
                            _token, 
                            i >= 0? i + newToken.length : 0
                ) : str.indexOf(
                            token,
                            i >= 0? i + newToken.length : 0
                )
        )) !== -1 ) {
            str = str.substring(0, i)
                    .concat(newToken)
                    .concat(str.substring(i + token.length));
        }
    }
	return str;
	};

	function getQuerystring(key, defaultValue) {
	if(defaultValue == null) defaultValue = "";
	key = key.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
	var regex = new RegExp("[\\?&]" + key + "=([^&#]*)");
	var qs = regex.exec(window.location.href);
	if(qs == null)
		return defaultValue;
	else
		return qs[1];
	}
	</script>
	
	<script type="text/javascript" charset="utf-8">
     $().ready(function() {
         var keyField = "field";
         var valueField = getQuerystring(keyField, null);

         if(valueField == "imagemanager") {
             $('#finder').elfinder({
                 //url: 'http://localhost/opencart/203/d_file_manager/system/library/elfinder/connector.php?field=imagemanager',
				 url: 'index.php?route=<?php echo $route; ?>/connector&token=<?php echo $token; ?>&field=imagemanager',
                 lang: 'en',
                 resizable: 'false',
                 commands: [
          	                                'open', 'reload', 'home', 'up', 'back', 'forward', 'getfile', 'quicklook',
          	                                'download', 'rm', 'duplicate', 'rename', 'mkdir', 'mkfile', 'upload', 'copy',
          	                                'cut', 'paste', 'edit', 'extract', 'archive', 'search', 'info', 'view', 'help',
          	                                'resize', 'sort'
                              ],
                 contextmenu: {
                     // navbarfolder menu
                     navbar: ['open', '|', 'copy', 'cut', 'paste', 'duplicate', '|', 'rm', '|', 'info'],

                     // current directory menu
                     cwd: ['reload', 'back', '|', 'upload', 'mkdir', 'mkfile', 'paste', '|', 'info'],

                     // current directory file menu
                     files: [
          		                    'getfile', '|', 'open', 'quicklook', '|', 'download', '|', 'copy', 'cut', 'paste', 'duplicate', '|',
          		                    'rm', '|', 'edit', 'rename', 'resize', '|', 'archive', 'extract', '|', 'info'
          	                    ]
                 },
                });
            } else {
             $('#finder').elfinder({
			     //url: 'http://localhost/opencart/203/d_file_manager/system/library/elfinder/connector.php',
                 url: 'index.php?route=<?php echo $route; ?>/connector&token=<?php echo $token; ?>',
                 lang: 'en',
                 resizable: 'false',
                 commands: [
          	                                'open', 'reload', 'home', 'up', 'back', 'forward', 'getfile', 'quicklook',
          	                                'download', 'rm', 'duplicate', 'rename', 'mkdir', 'mkfile', 'upload', 'copy',
          	                                'cut', 'paste', 'edit', 'extract', 'archive', 'search', 'info', 'view', 'help',
          	                                'resize', 'sort', 'selectforproduct'
                              ],
                 contextmenu: {
                     // navbarfolder menu
                     navbar: ['open', '|', 'copy', 'cut', 'paste', 'duplicate', '|', 'rm', '|', 'info'],

                     // current directory menu
                     cwd: ['reload', 'back', '|', 'upload', 'mkdir', 'mkfile', 'paste', '|', 'info'],

                     // current directory file menu
                     files: [
          		                    'getfile', '|', 'open', 'quicklook', '|', 'download', '|', 'copy', 'cut', 'paste', 'duplicate', '|',
          		                    'rm', '|', 'edit', 'rename', 'resize', '|', 'archive', 'extract', '|', 'info', '|', 'selectforproduct'
          	                    ]
                 },
                });
             }

         })
	
	</script>
<script type="text/javascript">
	var imageDir = "<?php echo $base; ?>/image/";
</script>

</head>
<body>	
		<div id="finder"></div>	
</body>
</html>
