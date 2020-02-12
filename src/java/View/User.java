package View;

public class User {
    private String email;
    private String password;

    public User() {
        this.password = "";
        this.email = "";
    }

    public User(String password, String email) {
        this.password = password;
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
}
