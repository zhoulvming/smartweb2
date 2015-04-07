package com.smartsky.manual.model;

import java.util.Map;


public class TreeJsonData {

	private String id;
	private String text;
	private String icon;
	private boolean children;
	private String type;
	private Map<String,Boolean> state;
	
	
	
	public Map<String, Boolean> getState() {
		return state;
	}
	public void setState(Map<String, Boolean> state) {
		this.state = state;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public boolean getChildren() {
		return children;
	}
	public void setChildren(boolean children) {
		this.children = children;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}


	
	
	
	
    
}