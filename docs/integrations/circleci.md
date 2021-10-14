# Connecting Cloudrail with CircleCI

This tutorial walks through the process of setting up CircleCI with Cloudrail for performing security scans on infrastructure as code.

![CircleCI logo](../_media/integrations/cloudrail_circleci.png)

## How To Setup CircleCI with Cloudrail
Cloudrail maintains an orb with CircleCI to easily add in scanning to your deployment pipeline.

First, make sure you're using CircleCI version 2.1 in your `.circleci/config.yml` file:

```yaml
version: 2.1
```

Next, add the orbs stanza below your version, invoking the Cloudrail orb:

```yaml
version: 2.1
orbs:
  cloudrail: indeni/cloudrail@2.0.2
```

Next we'll define a job that creates a terraform plan:

```yaml
version: '2.1'
orbs:
  cloudrail: indeni/cloudrail@2.0.0
jobs:
  some_job_that_creates_a_tf_plan:
    docker:
      - image: 'hashicorp/terraform:latest'
    steps:
      - checkout
      - terraform init
      - terraform plan -out terraform.plan
      - persist_to_workspace:
          paths:
            - ./
          root: .
```

Finally, we'll invoke the cloudrail orb using workflows to run on the saved plan file from our previous job.

```yaml
workflows:
  use_cloudrail:
    jobs:
      - some_job_that_creates_a_tf_plan
      - cloudrail/scan_terraform:
          cloud-account-id: '123456789012'
          cloudrail_api_key: CLOUDRAIL_API_KEY
          plan_output_file: /tmp/workspace/terraform.plan
          pre-steps:
            - attach_workspace:
                at: /tmp/workspace
          requires:
            - some_job_that_creates_a_tf_plan
          tf_directory: /tmp/workspace/
```

For the full file, see below.

## Examples
Here are a few examples to help you get started.

#### Simple Example
A simple example of running cloudrail in CircleCI:

```yaml
version: '2.1'
orbs:
  cloudrail: indeni/cloudrail@2.0.0
jobs:
  some_job_that_creates_a_tf_plan:
    docker:
      - image: 'hashicorp/terraform:latest'
    steps:
      - checkout
      - terraform init
      - terraform plan -out terraform.plan
      - persist_to_workspace:
          paths:
            - ./
          root: .
workflows:
  use_cloudrail:
    jobs:
      - some_job_that_creates_a_tf_plan
      - cloudrail/scan_terraform:
          cloud-account-id: '123456789012'
          cloudrail_api_key: CLOUDRAIL_API_KEY
          plan_output_file: /tmp/workspace/terraform.plan
          pre-steps:
            - attach_workspace:
                at: /tmp/workspace
          requires:
            - some_job_that_creates_a_tf_plan
          tf_directory: /tmp/workspace/

```

#### JUnit Outputs
An example of running Cloudrail with a JUnit output:

```yaml
version: '2.1'
orbs:
  cloudrail: indeni/cloudrail@2.0.0
jobs:
  some_job_that_creates_a_tf_plan:
    docker:
      - image: 'hashicorp/terraform:latest'
    steps:
      - checkout
      - terraform init
      - terraform plan -out terraform.plan
      - persist_to_workspace:
          paths:
            - ./
          root: .
workflows:
  use_cloudrail:
    jobs:
      - some_job_that_creates_a_tf_plan
      - cloudrail/scan_terraform:
          cloud-account-id: '123456789012'
          cloudrail_api_key: CLOUDRAIL_API_KEY
          junit-output: true
          plan_output_file: location_of_tf_plan_file_created_in_previous_job
          pre-steps:
            - some_step_that_loads_tf_directory_and_plan
          requires:
            - some_job_that_creates_a_tf_plan
          tf_directory: directory_where_tf_files_are
```
