# Adding Custom Rules & Policies - Cloudrail

> Rules & policies let you refine Cloudrail to suit your needs

By default we've included a number of rules for each cloud environment which represent best practices in the industry. Some of these might not apply to you, or some situations might require more rules. Rules & policies let you refine cloudrail to suit your needs.

## Understanding Rules & Policies
- Rules
    - Regulations for resources to conform to
    - Separated into two types: Advice and Mandate
- Policies
    - Collections of rules


## Rules
Rules in Cloudrail can be enabled with one of the following enforcement levels. The enforcement level determines how Cloudrail presents the violation and how it should report back to your CI/CD platform.:

- **Advise**
    - Rules under this setting are used to disclaim a security concern, but not significant enough to break the developers workflow.
    - If Cloudrail only finds violations for rules under Advise, Cloudrail CLI will return exit code 0. This means that rules under Advise can never cause your pipeline to break.
    - The default rule level
- **Mandate**
    - Rules under this setting are used to strongly enforce a security concern in the developer’s workflow.
    - If a violation comes from a rule under Mandate enforcement, Cloudrail CLI will return exit code 1.


By default, all the rules are set to “Advise” mode. Running Cloudrail will have zero impact on your developers’ workflows and you can **embed Cloudrail CLI within CI/CD immediately** if preferred.

### How To Create A Rule
To create your own rule, visit the [create your own rule tutorial]().

## Policies
Once you are ready to strongly enforce a rule from the task center, you will first need to create a Policy. A Policy acts as a container for all your rule configurations.

While you create the policy, you can define which cloud accounts should be associated with said policy. You can have a separate policy for each stage of the development process (Dev, User Acceptance Testing, Staging, and Production).

```
aws_development - our_dev_policy
aws_staging - our_staging_policy
gcp_production - our_production_policy
```

### How To Create A Policy
To create a policy, [simply click "Create Policy" at the top of the Policies page](https://web.cloudrail.app/policy-management/policies).

Once the Policy is created, you can enable a rule to have a stronger enforcement level. Note, the rule’s behavior only affects the cloud accounts attached with this policy.

Once you have enabled the rule, you are set! Now, Cloudrail CLI will also reference all your configured Policies when it runs any future evaluations. In the event that the environment is part of a Policy’s definition, Cloudrail will evaluate against the unique rule behaviors and override the default behavior.

In the event that you do not want a rule to be evaluated at all, you can disable the rule.
