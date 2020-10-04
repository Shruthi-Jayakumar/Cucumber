package Runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/Login/Login.feature"},

 // tags = "@negative,@Login", // it runs onlyy the negative scenario
glue = {"StepDefinition"},
	dryRun = false, //check running to find out did i misss any step
		monochrome = true, // to make console output in better way
		strict = true, // make sure all the content is mapped or check any feature file is missed in implementation 
		plugin = {"html:testoutput/report.html","junit:testoutput/report.xml","json:"
				+ "textoutput/report.json"}
		
		)

public class Test_Runner {

}
