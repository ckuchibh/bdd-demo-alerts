package testRunner;

import org.junit.platform.suite.api.*;

import io.cucumber.junit.platform.engine.Constants;

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("features")
@ConfigurationParameter(
  key = Constants.GLUE_PROPERTY_NAME,
  value = "stepDefinitions")
//@ConfigurationParameter(
//  key = Constants.FILTER_TAGS_PROPERTY_NAME,
//  value = "@activity3")
@IncludeTags("activity3")
//@ExcludeTags("PromptAlert")
@ConfigurationParameter(
        key = Constants.PLUGIN_PROPERTY_NAME,
        value = "html:test-output/cucumber-reports/Cucumber.html"
)


public class ActivitiesRunner {}