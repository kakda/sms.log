package com.aeon.internal.dao;


public interface ErrorLogDAO {

	Boolean insert(infobip.api.model.Error error);
	Boolean update(infobip.api.model.Error error);
	Boolean isExist(int id);
}
