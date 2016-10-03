package com.aeon.internal.service.impl;

import infobip.api.client.GetSentSmsLogs;
import infobip.api.config.BasicAuthConfiguration;
import infobip.api.model.sms.mt.logs.SMSLog;
import infobip.api.model.sms.mt.logs.SMSLogsResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aeon.internal.dao.ErrorLogDAO;
import com.aeon.internal.dao.SMSLogDAO;
import com.aeon.internal.dao.StatusLogDAO;
import com.aeon.internal.service.InfobipLogService;

@Service
public class IinfobipLogServiceImpl implements InfobipLogService {

	@Autowired
	SMSLogDAO smsLogDAO;
	
	@Autowired
	ErrorLogDAO errorLogDAO;
	
	@Autowired
	StatusLogDAO statusLogDAO;
	
    public static final String BASE_URL = "https://api.infobip.com/";
    public static final String USERNAME = "XXXX";
    public static final String PASSWORD = "XXXXXXXXXX";	
    public static final int	   RECORDS	= 10000;
	
	@Override
	public SMSLogsResponse getLogResponse() {

        GetSentSmsLogs client = new GetSentSmsLogs(new BasicAuthConfiguration(USERNAME, PASSWORD));
        SMSLogsResponse response = client.execute(null, null, null, null, null, null, null, RECORDS, null, null);
        for (int i = 0; i < response.getResults().size(); ++i) {
            SMSLog result = response.getResults().get(i);
            System.out.println("Message ID: " + result.getMessageId());
            System.out.println("Sent at: " + result.getSentAt());
            System.out.println("Sender: " + result.getFrom());
            System.out.println("Receiver: " + result.getTo());
            System.out.println("Message text: " + result.getText());
            System.out.println("Status: " + result.getStatus().getName());
            System.out.println("Price: " + result.getPrice().getPricePerMessage() + " " + result.getPrice().getCurrency());
            
            insert(result);
            
            // Insert Error
            if(!errorLogDAO.isExist(result.getError().getId())){
            	errorLogDAO.insert(result.getError());
            }

            // Insert Status
            if(!statusLogDAO.isExist(result.getStatus().getId())){
            	statusLogDAO.insert(result.getStatus());
            }
        }
		return response;
	}


	@Override
	public void insert(SMSLog smsLog) {
		if(smsLogDAO.isExist(smsLog.getMessageId())){
			smsLogDAO.update(smsLog);
		}else{
			smsLogDAO.insert(smsLog);
		}
	}
}
