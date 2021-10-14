# Cloudrail Task Center
The Cloudrail Task Center is a view that recommends rules to enforce as part of your policies. These recommendations come in the form of Tasks in the Task Center.

We’ve designed this view to make it easy to determine how new rules should be configured for future evaluations.

Keep in mind that we built Cloudrail so that it returns a zero-exit code to your CI tools. You can integrate into your CI tools from day one and the Task Center is a great location to review what types of rules are worth considering in your Policy.

## Completing A Task
To complete a task, you can do one of the following:

- Add the rule to a policy and make it mandatory in your pipeline
- Disable the rule from being used in future assessments
- Define exclusions for resources that should not be part of the analysis.

Once you have determined how you want to proceed with the rule, the task is removed from your Task Center.
