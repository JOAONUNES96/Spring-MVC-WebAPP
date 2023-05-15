package com.in28minutes.jee;

public class UserValidationService {

    //hard coded  and simple solution just to try this functionality
    public boolean validateUser(String user, String password) {
        return user.equalsIgnoreCase("joao") && password.equals("nunes");
    }
}
