# Cloudrail Integrations
Cloudrail maintains several integrations with CI pipeline providers.

- AWS CodeBuild
- CircleCI
- GitLab
- GitHub Actions
- Jenkins

## Exit Codes
If an error is encountered, cloudrail will return an exit code represented by the following list, independent of the pipeline provider.

| Exit Code | Description |
| ---| --- |
| 0 | Cloudrail successfully executed the assessment, and found no rule violations with rules that are set to Mandate. Note that rules that are set to Advise will generate warnings, and still return exit code 0. |
| 1 | Cloudrail successfully execute the assessments, and found rule violations in rules set to Mandate. |
| 2 | There was an error executing the assessment due to an issue in the Cloudrail Service, please contact support. |
| 3 | Invalid input provided, please review the parameters you entered. |
| 4 | There was an issue building the context, which is the process through which Cloudrail understands the relationships between resources. This is usually a bug, please contact support. You can also add --no-fail-on-context-error to your run in order to avoid these. |
| 5 | User terminated execution. |
| 6 | There was a timeout in the assessment execution, please contact support. |
| 7 | There was an error on the CLI side during assessment execution, please contact support. |
