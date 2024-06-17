package letung.com.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

// @SpringBootApplication
@SpringBootApplication(
        exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)  // tạm thời vô hiệu hóa security
public class LaptopShopApplication {

    public static void main(String[] args) {
        ApplicationContext hoiDanIt = SpringApplication.run(LaptopShopApplication.class, args);

    }

}
