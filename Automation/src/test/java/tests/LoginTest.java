
package tests;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class LoginTest {

    WebDriver driver;

    @BeforeMethod
    public void setUp() {
        driver = new ChromeDriver();
        driver.manage().window().maximize();

        // Update this path to the location of your demo HTML file.
        driver.get("file:///YOUR_PATH/index.html");
    }

    @Test
    public void verifyValidLogin() {

        driver.findElement(By.id("email"))
                .sendKeys("qa.user@example.com");

        driver.findElement(By.id("password"))
                .sendKeys("Demo@123");

        driver.findElement(By.id("loginButton"))
                .click();

        // Update the locator to match your demo dashboard.
        Assert.assertTrue(
                driver.getPageSource().contains("Dashboard"),
                "Dashboard should be displayed after login"
        );
    }

    @AfterMethod
    public void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
}
