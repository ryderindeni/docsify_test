# Cloudrail Integrations
Cloudrail is designed to be integrated into all CI pipelines. We maintain documentation and specific integrations for a few of the major ones:

- [AWS CodeBuild](integrations/aws-codebuild.md)
- [CircleCI](integrations/circleci.md)
- [GitLab](integrations/gitlab.md)
- [GitHub Actions](integrations/github-actions.md)
- [Jenkins](integrations/jenkins.md)
- [Spacelift](integrations/spacelift.md)
- [Env0](integrations/env0.md)
- [Atlantis](integrations/atlantis.md)

For developers, we also maintain an extension in Visual Studio Code:

- [VS Code Extension](integrations/vs-code.md)

## Command Line Exit Codes
Regardless of the provider, cloudrail returns standardized exit codes when encountering an error. Detailed descriptions for each code are provided below.

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
