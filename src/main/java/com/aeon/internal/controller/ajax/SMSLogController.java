package com.aeon.internal.controller.ajax;

import infobip.api.model.sms.mt.logs.SMSLogsResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aeon.internal.annotation.AjaxController;
import com.aeon.internal.service.InfobipLogService;

@AjaxController
@RequestMapping(value = { "/" })
public class SMSLogController {

	@Autowired
	InfobipLogService logService;

	@RequestMapping(value = { "/" })
	public Boolean refreshLog(){
		SMSLogsResponse logResponse = logService.getLogResponse();
		return true;
	}
}
