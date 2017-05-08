<?php
class ControllerExtensionPaymentPayco extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/payment/payco');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('payco', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_true'] = $this->language->get('text_true');
		$data['text_false'] = $this->language->get('text_false');
		$data['text_all_zones'] = $this->language->get('text_all_zones');

		$data['entry_idcliente'] = $this->language->get('entry_idcliente');
		$data['entry_key'] = $this->language->get('entry_key');
		$data['entry_publickey'] = $this->language->get('entry_publickey');
		$data['entry_total'] = $this->language->get('entry_total');
		$data['entry_order_status'] = $this->language->get('entry_order_status');
		$data['entry_pending_status'] = $this->language->get('entry_pending_status');
		$data['entry_accepted_status'] = $this->language->get('entry_accepted_status');
		$data['entry_rejected_status'] = $this->language->get('entry_rejected_status');
		$data['entry_failed_status'] = $this->language->get('entry_failed_status');
		$data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_teststatus'] = $this->language->get('entry_teststatus');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['help_idcliente'] = $this->language->get('help_idcliente');
		$data['help_key'] = $this->language->get('help_key');
		$data['help_publickey'] = $this->language->get('help_publickey');
		$data['help_teststatus'] = $this->language->get('help_teststatus');
		$data['help_total'] = $this->language->get('help_total');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['idcliente'])) {
			$data['error_idcliente'] = $this->error['idcliente'];
		} else {
			$data['error_idcliente'] = '';
		}

		if (isset($this->error['key'])) {
			$data['error_key'] = $this->error['key'];
		} else {
			$data['error_key'] = '';
		}

		if (isset($this->error['publickey'])) {
			$data['error_publickey'] = $this->error['publickey'];
		} else {
			$data['error_publickey'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/payment/payco', 'token=' . $this->session->data['token'], true)
		);

		//links
		$data['action'] = $this->url->link('extension/payment/payco', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true);


		if (isset($this->request->post['payco_idcliente'])) {
			$data['payco_idcliente'] = $this->request->post['payco_idcliente'];
		} else {
			$data['payco_idcliente'] = $this->config->get('payco_idcliente');
		}

		if (isset($this->request->post['payco_key'])) {
			$data['payco_key'] = $this->request->post['payco_key'];
		} else {
			$data['payco_key'] = $this->config->get('payco_key');
		}

		if (isset($this->request->post['payco_publickey'])) {
			$data['payco_publickey'] = $this->request->post['payco_publickey'];
		} else {
			$data['payco_publickey'] = $this->config->get('payco_publickey');
		}

		if (isset($this->request->post['payco_total'])) {
			$data['payco_total'] = $this->request->post['payco_total'];
		} else {
			$data['payco_total'] = $this->config->get('payco_total');
		}

		if (isset($this->request->post['payco_order_status_id'])) {
			$data['payco_order_status_id'] = $this->request->post['payco_order_status_id'];
		} else {
			$data['payco_order_status_id'] = $this->config->get('payco_order_status_id');
		}

		if (isset($this->request->post['payco_accepted_status_id'])) {
			$data['payco_accepted_status_id'] = $this->request->post['payco_accepted_status_id'];
		} else {
			$data['payco_accepted_status_id'] = $this->config->get('payco_accepted_status_id');
		}

		if (isset($this->request->post['payco_pending_status_id'])) {
			$data['payco_pending_status_id'] = $this->request->post['payco_pending_status_id'];
		} else {
			$data['payco_pending_status_id'] = $this->config->get('payco_pending_status_id');
		}

		if (isset($this->request->post['payco_rejected_status_id'])) {
			$data['payco_rejected_status_id'] = $this->request->post['payco_rejected_status_id'];
		} else {
			$data['payco_rejected_status_id'] = $this->config->get('payco_rejected_status_id');
		}

		if (isset($this->request->post['payco_failed_status_id'])) {
			$data['payco_failed_status_id'] = $this->request->post['payco_failed_status_id'];
		} else {
			$data['payco_failed_status_id'] = $this->config->get('payco_failed_status_id');
		}

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		if (isset($this->request->post['payco_geo_zone_id'])) {
			$data['payco_geo_zone_id'] = $this->request->post['payco_geo_zone_id'];
		} else {
			$data['payco_geo_zone_id'] = $this->config->get('payco_geo_zone_id');
		}

		$this->load->model('localisation/geo_zone');
		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

		if (isset($this->request->post['payco_status'])) {
			$data['payco_status'] = $this->request->post['payco_status'];
		} else {
			$data['payco_status'] = $this->config->get('payco_status');
		}

		if (isset($this->request->post['payco_teststatus'])) {
			$data['payco_teststatus'] = $this->request->post['payco_teststatus'];
		} else {
			$data['payco_teststatus'] = $this->config->get('payco_teststatus');
		}

		if (isset($this->request->post['payco_sort_order'])) {
			$data['payco_sort_order'] = $this->request->post['payco_sort_order'];
		} else {
			$data['payco_sort_order'] = $this->config->get('payco_sort_order');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/payment/payco', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/payco')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['payco_idcliente']) {
			$this->error['idcliente'] = $this->language->get('error_idcliente');
		}

		if (!$this->request->post['payco_key']) {
			$this->error['key'] = $this->language->get('error_key');
		}

		if (!$this->request->post['payco_publickey']) {
			$this->error['publickey'] = $this->language->get('error_publickey');
		}

		return !$this->error;
	}
	public function uninstall()
    {
        $this->load->model('extension/payment/payco');
        $this->load->model('setting/setting');
        $this->model_setting_setting->deleteSetting('payco');
    }
}