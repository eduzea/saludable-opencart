<script>
if(window.jQuery) {
      var refreshId = setInterval(function() {
if (jQuery('iframe#checkout-epayco').length) {
        console.log("Cargado el formulario");
        //z-index overlay ePayco
        jQuery("#overlay-epayco").css('z-index','1000');
        clearInterval(refreshId);
  }else{
    callform();
  }
}, 10000);
      function callform(){
    jQuery('form#epaycoform button').trigger('click');    
    }
}else{
    var refreshId = setInterval(function() {
if(document.getElementById('checkout-epayco')) {
        console.log("Cargado el formulario con JS");
        //z-index overlay ePayco
        document.getElementById("overlay-epayco").style.zIndex = '1000';
        clearInterval(refreshId);
  }
}, 100); 
}
</script>
<form id="epaycoform" class="text-center">
            <script src="https://s3-us-west-2.amazonaws.com/epayco/v1.0/checkoutEpayco.js" 
                class="epayco-button" 
                data-epayco-key="<?php echo $ap_publickey; ?>" 
                data-epayco-amount="<?php echo $ap_amount; ?>" 
                data-epayco-name="<?php echo $ap_itemname; ?>" 
                data-epayco-description="<?php echo $ap_itemname; ?>"
                data-epayco-currency="<?php echo $ap_currency; ?>" 
                data-epayco-country="<?php echo $ap_isocode; ?>" 
                data-epayco-test="<?php echo $ap_test;?>"
                data-epayco-response="<?php echo $ap_returnurl; ?>"
                data-epayco-extra1 = "<?php echo $ap_itemcode; ?>" 
                data-epayco-confirmation="<?php echo $ap_confirmation; ?>" >
            </script>
        </form>