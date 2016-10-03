package com.aeon.internal.dao;

import infobip.api.model.Status;

public interface StatusLogDAO {

	Boolean insert(Status status);
	Boolean update(Status status);
	Boolean isExist(int id);
}
