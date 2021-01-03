package jsu.com.bean;

public class User {
    private String id;
    private String username;
    private String password;
    private String realname;
    private String sex;
    private Integer age;

    public User(){

    }

    public User(String id, String username, String password, String realname, String sex, Integer age) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.realname = realname;
        this.sex = sex;
        this.age = age;
    }

    public String getId() {
        return id;
    }

    public void setId(String id ) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "用户名：'" + username + '\'' +
                ", 密码：'" + password + '\'' +
                ", 姓名：'" + realname + '\'' +
                ", 性别：'" + sex + '\'' +
                ", 年龄：" + age +
                '}';
    }
}
