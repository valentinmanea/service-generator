Before you start using the service you need to go in the folder "service-generator" and run "npm install" since the generator need the npm to run.
then open command line in the main folder and run "service-generator.bat" and there you have it :D
But in order for this service to run you need to configure this in your spring application :
@EnableSwagger2
 and

	@Bean
	public Docket getDocket() {
		return new Docket(DocumentationType.SWAGGER_2)
					.select()
					.apis(RequestHandlerSelectors.basePackage(" your project controller package ex :com.bnpparibas.miro.web.controller"))
					.build();
	}

AND have you backend started