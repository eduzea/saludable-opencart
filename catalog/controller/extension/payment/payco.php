<?php
class ControllerExtensionPaymentPayco extends Controller {
	public function index() {
		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		$data['ap_publickey'] = $this->config->get('payco_publickey');
		$data['ap_test'] = $this->config->get('payco_teststatus');
		if ($order_info['currency_code'] == 'COP' || $order_info['currency_code'] == 'cop') {
			$amount = $this->currency->format($order_info['total'], $order_info['currency_code'], false);
		$amount = str_replace('$', '', $amount);
		$amount = str_replace('.', '', $amount);
		$amount = str_replace(',', '', $amount);
		}else{
			$amount = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		}
		$data['ap_amount'] = $amount;
		$data['ap_currency'] = $order_info['currency_code'];
		$data['ap_isocode']	=	$order_info['payment_iso_code_2'];
		$data['ap_purchasetype'] = 'Item';
		$data['ap_description'] = $this->config->get('config_name');
		$data['ap_itemcode'] = $this->session->data['order_id'];
		$data['ap_returnurl'] = $this->url->link('checkout/success') . "&"; //permitir success
		$data['ap_confirmation'] = $this->url->link('extension/payment/payco/callback');
		foreach ($this->cart->getProducts() as $product) {
			 $data['ap_itemname'] = $product['name'];
		}

		return $this->load->view('extension/payment/payco', $data);
	}
	public function callback() 
	{
		if (isset($_REQUEST['x_extra1'])) {
			$order_id = $_REQUEST['x_extra1'];
		} else {
			$order_id = 0;
		}
		if (isset($_REQUEST['x_ref_payco'])) {
			$this->load->model('checkout/order');
			$this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payco_order_status_id'));
			$p_cust_id_cliente=$this->config->get('payco_idcliente');
             $p_key=$this->config->get('payco_key');

                $x_ref_payco=$_REQUEST['x_ref_payco'];
                $x_transaction_id=$_REQUEST['x_transaction_id'];
                $x_amount=$_REQUEST['x_amount'];
                $x_currency_code=$_REQUEST['x_currency_code'];
                $x_signature=$_REQUEST['x_signature'];

                $signature=hash('sha256',
                       $p_cust_id_cliente.'^'
                      .$p_key.'^'
                      .$x_ref_payco.'^'
                      .$x_transaction_id.'^'
                      .$x_amount.'^'
                      .$x_currency_code
                    );

				//Validamos la firma
                if($x_signature==$signature){
                $x_cod_response=$this->request->post['x_cod_response'];
                switch ((int)$x_cod_response) {
                    case 1:
                       $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payco_accepted_status_id'), '', true);
                        break;
                    case 2:
                        $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payco_rejected_status_id'), '', true);
                        break;
                    case 3:
                        $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payco_pending_status_id'), '', true);
                        break;
                    case 4:
                       $this->model_checkout_order->addOrderHistory($order_id, $this->config->get('payco_failed_status_id'), '', true);
                        break;              
                    
                }

                }else{
                    die("Firma no valida");
                }                	

		}
	}
}