import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.PendingException;

import io.cucumber.java.*;
import io.cucumber.java.*;
import org.junit.Assert;

public class DefiningSteps{
    @Given("I have google")
    public void i_have_google() {
        System.out.println("First");
    }

    @When("I try for {int} hours")
    public void i_try_for_hours(Integer int1) {
        System.out.println("Second");
    }

    @Then("it will work")
    public void it_will_work() {
        System.out.println("Third");
    }

}