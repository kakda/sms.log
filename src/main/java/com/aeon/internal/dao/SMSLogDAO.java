package com.aeon.internal.dao;

import infobip.api.model.sms.mt.logs.SMSLog;

public interface SMSLogDAO {

	Boolean insert(SMSLog smsLog);
	Boolean update(SMSLog smsLog);
	Boolean isExist(String messageId);
}
