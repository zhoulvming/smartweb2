package com.smartsky.common.exception;

public class BusinessException extends CustomGenericException {
	public BusinessException(int errCode, String errMsg) {
		super(errCode, errMsg);
	}

	private static final long serialVersionUID = 1L;  
}
