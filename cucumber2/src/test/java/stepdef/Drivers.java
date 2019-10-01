package stepdef;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class Drivers {
	public static  WebDriver drivers(String browser) {
		if(browser.equals("chrome")) {
			System.setProperty("webdriver.chrome.driver", "C:\\drivers\\newchrome\\chromedriver.exe");
		return new ChromeDriver();
		}
		else if(browser.equals("ie")) {
			System.setProperty("webdriver.ie.driver", "C:\\drivers\\IEDriverServer.exe");
		return new InternetExplorerDriver();
		}else if(browser.equals("firefox")) {
			System.setProperty("webdriver.gecko.driver", "C:\\drivers\\geckodriver.exe");
			return new FirefoxDriver();
		}
		return null;
	
	}
}
