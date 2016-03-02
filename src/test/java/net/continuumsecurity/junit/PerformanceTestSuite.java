package net.continuumsecurity.junit;

import cucumber.api.CucumberOptions;

/**
 * Created by stephen on 2/03/16.
 */

@CucumberOptions(
        features = {
                "src/test/resources/features/performance.feature"
        },
        tags = {"@cwe-400"}
)
public class PerformanceTestSuite extends BaseCucumberTestCase {
}
