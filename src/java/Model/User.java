package Model;

public class User {
    private String name;
    private String email;
    private String password;

    public String getName() {
        return name;
    }
    public void setName(String userName) {
        this.name = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }
}
