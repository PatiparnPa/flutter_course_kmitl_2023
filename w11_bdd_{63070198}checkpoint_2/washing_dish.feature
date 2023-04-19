Feature: Washing the dishes

    Scenario: Wash the dishes
        Given I have dirty dishes in the sink
        When I turn on the faucet and add soap to the sponge
        And I begin washing the dishes
        Then I rinse the dishes with water
        And I dry them with a clean towel
        Then I check that its clean
        And There are clean dish in sink
        And I put the dishes away in the cupboard

    Scenario: Wash a single dish
        Given I have a dirty dish in the sink
        When I turn on the faucet and add soap to the sponge
        And I begin washing the dish
        Then I rinse the dish with water
        And I dry it with a clean towel
        And I put the dish away in the cupboard
        Then I check that its clean
        And There are clean dish in sink
        And I put the dishes away in the cupboard


    Scenario: Wash dishes by hand
        Given I have dirty dishes in the sink
        When I turn on the faucet and add soap to the sponge
        And I begin washing the dishes by hand
        Then I rinse the dishes with water
        And I dry them with a clean towel
        And I put the dishes away in the cupboard
        Then I check that its clean
        And There are clean dish in sink
        And I put the dishes away in the cupboard

    Scenario: Use a dishwasher to wash dishes
        Given I have dirty dishes in the sink
        And I have a dishwasher
        When I load the dishwasher with the dirty dishes
        And I add detergent to the dishwasher
        And I turn on the dishwasher
        Then I wait for the dishwasher cycle to complete
        And I unload the clean dishes from the dishwasher
        And I put the dishes away in the cupboard
        Then I check that its clean
        And There are clean dish in sink
        And I put the dishes away in the cupboard