package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication()
public class VipShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(VipShopApplication.class, args);
	}
}
