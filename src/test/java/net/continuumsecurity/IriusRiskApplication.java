package net.continuumsecurity;

import net.continuumsecurity.Config;
import net.continuumsecurity.Credentials;
import net.continuumsecurity.UserPassCredentials;
import net.continuumsecurity.behaviour.ILogin;
import net.continuumsecurity.behaviour.ILogout;
import net.continuumsecurity.web.WebApplication;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;

public class IriusRiskApplication extends WebApplication implements ILogin,
        ILogout {

    public IriusRiskApplication() {
        super();

    }

    @Override
    public void openLoginPage() {
        driver.get(Config.getInstance().getBaseUrl() + "#!login");
    }

    @Override
    public void login(Credentials credentials) {
        UserPassCredentials creds = new UserPassCredentials(credentials);
        driver.findElement(By.id("username")).clear();
        driver.findElement(By.id("username")).sendKeys(creds.getUsername());
        driver.findElement(By.id("password")).clear();
        driver.findElement(By.id("password")).sendKeys(creds.getPassword());
        driver.findElement(By.id("loginBtn")).click();
    }

    // Convenience method
    public void login(String username, String password) {
        login(new UserPassCredentials(username, password));
    }

    @Override
    public boolean isLoggedIn() {
        try {
            driver.findElement(By.id("welcomeLabel"));
        } catch (NoSuchElementException nse) {
            return false;
        }
        return true;
    }

    @Override
    public void logout() {
        driver.findElement(By.xpath("//x:div/x:div[2]/x:div/x:div[1]/x:div/x:div/x:div[3]/x:div/x:div[3]/x:div/x:span/x:span[2]")).click();
        driver.findElement(By.xpath("//x:div[2]/x:div/x:div/x:span[4]/x:span")).click();
    }

    public void navigate() {
        openLoginPage();
        login(Config.getInstance().getUsers().getDefaultCredentials());
    }

}

