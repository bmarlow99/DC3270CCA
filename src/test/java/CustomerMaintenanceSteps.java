import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.PendingException;

import io.cucumber.java.*;
import io.cucumber.java.*;
import org.junit.Assert;

import static junit.framework.TestCase.assertEquals;

public class CustomerMaintenanceSteps {

    Customer customer;
    String status;

    @Given("I have entered the create or edit customer option")
    public void i_have_entered_the_create_or_edit_customer_option() {
        customer = new Customer();
    }

    @When("I enter customer first name as {string}")
    public void i_enter_customer_first_name_as(String fname) {
        customer.FirstName = fname;
    }

    @When("I enter customer last name as {string}")
    public void i_enter_customer_last_name_as(String lname) {
        customer.LastName = lname;
    }

    @When("I enter the purpose of applying as {string}")
    public void i_enter_the_purpose_of_applying_as(String purpose) {
        customer.Purpose = purpose;
    }

    @When("I enter customer number of years residency as {int}")
    public void i_enter_customer_number_of_years_residency_as(Integer yearsresided) {
        customer.YearsResided = yearsresided;
    }

    @When("I submit the form")
    public void i_submit_the_form() {
        status = customer.submit();
    }

    @Then("the system should output the status of the customer {string}")
    public void the_system_should_output_the_status_of_the_customer(String expectedError) {
        assertEquals(expectedError, status);
    }


}
