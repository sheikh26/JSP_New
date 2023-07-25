package com.dto;

import java.io.InputStream;

public class FileUploadDTO {
	
	public int id = 0;
	
	public InputStream inputStream = null;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
	

}
