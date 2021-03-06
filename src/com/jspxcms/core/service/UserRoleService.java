package com.jspxcms.core.service;

import java.util.List;

import com.jspxcms.core.domain.Role;
import com.jspxcms.core.domain.User;
import com.jspxcms.core.domain.UserRole;

public interface UserRoleService {
	public UserRole save(User user, Role role, Integer roleIndex);

	public List<UserRole> save(User user, Integer[] roleIds);

	public List<UserRole> update(User user, Integer[] roleIds, Integer siteId);

	public int deleteByUserId(Integer userId);

	public int deleteByRoleId(Integer roleId);
}
