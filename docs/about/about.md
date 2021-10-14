# About Indeni Cloudrail
Cloudrail is a CLI tool that can run natively in several places in your workflow. Run it locally on your terraform files to check them before you commit, or integrate it as a step in your CI workflow for a bigger picture review of your infrastructure.

[About YouTube Video](https://www.youtube.com/embed/MFvT2VnnBzE ':include :type=iframe height=400px width=100%')

## How You Can Use It
Cloudrail has two types of scan: **Static** and **Dynamic**.

A **static** scan runs on .tf files on your local machine. Simply run the `cloudrail run` command and check your code against hundreds of infrastructure security best practices.

A **dynamic** scan combines the code you've written, with what's currently running in the cloud. By connecting your cloud account, cloudrail is able to look at your infrastructure in a broader context, only alerting you to things that are actually a problem.

---

## How Cloudrail Compares

#### Real Time Cloud Integration
Cloudrail merges terraform plans with a snapshot of cloud resources at the current moment. This means cloudrail considers resources already existing in the cloud environment not defined in the plan, using them as a part of the analysis.

#### Contextual Relationships
Cloudrail's context engine understands relationships between resources and implements a deep analysis of a resource’s security risks.

#### Less Noise
With real-resource integration and contextual relationships, Cloudrail assessments result in 3x less noise than alternatives, while also finding high-serverity security risks not found in other tools.

#### Easy Integration
Cloudrail is easy to integrate into CI/CD pipelines no matter the current state of your infrastructure. Cloudrail won't stop your pipeline for false positives or low severity issues by design.

#### Issue Surfacing & Prioritization
The Cloudrail web application allows for easy prioritization of issues to be resolved, ensuring devs fix only the issues that truly matter.


Cloudrail is easy to integrate into CI/CD pipelines, because it won’t stop the pipeline for false positives and low severity issues.
Cloudrail can be used to provide visibility into the cloud environment changes being conducted via Terraform across the organization, without interrupting the developers’ flow of work.
Cloudrail allows for easy prioritization of issues to be resolved, ensuring devs fix only the issues that truly matter.

---

## Supported Providers
Cloudrail currently supports the following terraform providers and clouds:

- Amazon Web Services (AWS)
- Microsoft Azure
- Google Cloud Platform (GCP)

If you have a provider you'd like us to support, please send an email to support@indeni.com
