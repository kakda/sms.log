package com.aeon.internal.service;

import infobip.api.model.sms.mt.logs.SMSLog;
import infobip.api.model.sms.mt.logs.SMSLogsResponse;

public interface InfobipLogService {

	SMSLogsResponse getLogResponse();
	void insert(SMSLog smsLog);
}
