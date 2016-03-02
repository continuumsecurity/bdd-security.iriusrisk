package net.continuumsecurity.junit;

import cucumber.api.CucumberOptions;

/**
 * Created by stephen on 2/03/16.
 */
@CucumberOptions(
        features = {
                "src/test/resources/features/session_management.feature"
        },
        tags = {"@session_logout"}
)
public class SessionTestSuite  extends BaseCucumberTestCase  {
}
