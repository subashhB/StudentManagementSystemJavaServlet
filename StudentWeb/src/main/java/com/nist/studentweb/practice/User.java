package com.nist.studentweb.practice;

public interface User {
	public void registerUser(UserDTO userDTO);

	public boolean userExists(UserDTO userDTO);
}
