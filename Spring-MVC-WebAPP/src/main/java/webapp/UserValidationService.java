package webapp;

public class UserValidationService {

    //hard coded  and simple solution just to try this functionality
    public boolean validateUser(String user, String password) {
        return user.equalsIgnoreCase("joao") && password.equals("nunes");
    }
}
