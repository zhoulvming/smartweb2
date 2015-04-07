package com.smartsky.manual.model;

public class UserRole {
	
	private Role role;
	
    public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	private Integer id;

    private Integer roleId;

    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}