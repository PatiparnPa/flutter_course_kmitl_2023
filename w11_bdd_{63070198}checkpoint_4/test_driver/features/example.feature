Feature: Fill empty mandatory information
    Scenario: Open App
        Given "scaffold-tag" loaded
        Then  I should see "firstname-tag" appeared
        Then  I should see "lastname-tag" appeared
        Then  I should see "nickname-tag" appeared

    Scenario: Fails to submit the form without filling mandatory information
        Given the Covid form page is open
        And I have not entered the mandatory information
        When I try to submit the form
        Then the form should not be submitted
        And I should see an error message "ต้องการข้อมูล"

    Scenario: Successfully submit the form after filling mandatory information
        Given the Covid form page is open
        And I have entered all the mandatory information
        When I submit the form
        Then the form should be submitted successfully
        And I should see a success message "บันทึกข้อมูลเรียบร้อย"

    Scenario: Edit the previously submitted form
        Given the Covid form page is open
        And I have previously submitted the form with valid data
        When I try to edit the form
        Then the form fields should be pre-populated with the previously submitted data
        And I should be able to edit the form
        And I should be able to submit the updated form
        And I should see a success message "บันทึกข้อมูลเรียบร้อย"


# # action steps
# When  I fill empty text to "firstname-tag"
# Then  I fill empty text to "lastname-tag"
# Then  I fill empty text to "age-tag"
# Then  I select male
# Then  I select "syntoms-one-tag" and "syntoms-two-tag"
# Then  I tap on "save-button-tag"

