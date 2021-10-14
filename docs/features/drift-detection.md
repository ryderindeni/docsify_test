# Drift Detection with Cloudrail

> Detect and report cloud configuration drifts automatically

Configuration drifts are a horrible experience for everyone involved. Detecting, analyzing, and reconciling these drifts - especially in production - can be a time consuming process.


Cloudrail’s Drift Detection makes that experience a lot simpler with **auto-detection** and **ticketing integration**.

## How To Setup Drift Detection


## How It Works
Using Cloudrail’s unique approach of scanning your Infrastructure-as-Code with the context of your existing live state, Cloudrail has the ability to transparently identify configuration drifts on your behalf.

Cloudrail’s Drift Detection feature works simply by running a Static + Dynamic assessment as you normally would. You will just need to add the flag “–drift-track”. This is because the Static + Dynamic assessment has all the information necessary to determine a configuration baseline. However, it is important to understand how a configuration baseline is determined, which we will expand in the following example:

1. A team wants to deploy an RDS instance in their AWS environment. Before deploying, they will run Cloudrail in Static + Dynamic mode.

2. Upon running an assessment, Cloudrail will identify that the RDS has not been deployed yet. According to Terraform Plan, Terraform has not determined that the RDS instance has been deployed, so it is not included in the Terraform state file.

3. The team fixes all security violations found by Cloudrail and proceeds to deploy the RDS instance (using “apply”).

At this point, Cloudrail will not consider the RDS instance as part of its configuration baseline. Why? Because the Terraform plan file Cloudrail received indicates that the RDS instance has not been deployed (remember, Cloudrail got the plan before apply). So at this point, Cloudrail will not consider the deployed RDS instance as part of its configuration baseline.

In order for Cloudrail to factor the RDS instance into its configuration baseline, there are two approaches: Running another assessment post-deployment or waiting for the next deployment.



## Reviewing Drift with the Cloudrail App
To review infrastructure drift in the Cloudrail app, follow these instructions

1. Login to the [Cloudrail web application](https://web.cloudrail.app).
2. Select the `Drift Detection` tab.
3. Review all your cloud accounts to see if any of them have drifted. You can also use the search to look for a specific cloud account.

4. Explore a specific drift by selecting an account and reviewing the drift details.

*In the following configuration drift example, it appears that additional roles were granted access to an AWS Secrets Manager in a dev environment and was not handled in Terraform.*

5. Open a ticket. Cloudrail has a native Jira integration to open tickets and assign developers to address the drift.
