# Viewing Assessment Results
Results from an assessment are displayed both in the console for the user, and in the web application.

## Console Output
By default, in the console, rule failures are only shown if the rule type is `Mandate`. `Advisory` rules can be shown by using the `-v` flag.

```bash
cloudrail run -v
```

When first setting up your account, all rules are set to the `Advisory` type, so any Advisory violations are hidden from the results in the command line unless using the `-v` flag. Our goal is to only showcase violations that you deem critical.



## Viewing Results in the Web Application
The web application will show all rules regardless of type.


Here, you can find overall statistics and context around the assessment results:

All rule violations, regardless of enforcement, are shown at the top. You will find an explanation of our rules. Some will be using context and have a category set to “Context Aware”. Below is an example:

Also, note that you should see remediation instructions to fix the violation in the cloud console or in Terraform.

### Violated vs Exposed
Each violation will flag a resource that is “exposed” and “violated”. A resource will be marked as the “violating resource” if it contains the configuration parameter responsible for this violation. However, we have found that the configuration may be unrelated to the resource that is deemed at risk. As such, we mark the “risky” resource as the Exposed Resource.

As an example:

Type  | Example
------------- | -------------
Violating Resource  | An AWS Security Group that allows traffic from 0.0.0.0/0
Exposed Resource | The EC2 instance that is using the above security group.


### Evidence
The evidence field will explain the rationale behind Cloudrail’s assessment of the violation. This can involve many parameters and Evidence organizes the logic for you.

## Making Rules Mandatory
The assessment tab is great to visualize security violations. Please note, Cloudrail only suggests rules to you. To make any Mandatory, you will need to create your own policy, which acts as a container for your rule configurations. Cloudrail will make recommendations from your existing IaC scans and mark them as Tasks under the Task Center.

## Next Steps
Next, check out how to [connect your cloud account to cloudrail for dynamic scans](getting-started/connecting-clouds.md).
