# Connecting AWS to Cloudrail

![AWS logo](../_media/integrations/cloudrail_aws.png)


## How To Connect Cloudrail To Your AWS Account
In the cloudrail web application, navigate to the [Cloud Management tab](https://web.cloudrail.app/environments/cloud-management).

1. Click the ["Add Account" button](https://web.cloudrail.app/add-account) to be taken to the add account wizard.

2. Select `Amazon Web Services` as your cloud provider.

3. Follow the on-screen instructions to create a Cloudformation stack. Cloudrail will provide a link to launch a CloudFormation stack with the required information automatically populated.

*Example cloudformation template*
```yaml
AWSTemplateFormatVersion: '2010-09-09'
Resources:
  Role:
    Type: AWS::IAM::Role
    Properties:
      RoleName:
        Ref: RoleName
      ManagedPolicyArns:
      - arn:aws:iam::aws:policy/SecurityAudit
      - arn:aws:iam::aws:policy/job-function/ViewOnlyAccess
      AssumeRolePolicyDocument:
        Version: '2012-10-17'
        Statement:
        - Effect: Allow
          Principal:
            AWS: "645376637575"
          Action: sts:AssumeRole
          Condition:
            StringEquals:
              sts:ExternalId:
                Ref: ExternalId

Outputs:
  RoleName:
    Description: Your role name
    Value:
      Ref: Role
Parameters:
    ExternalId:
        Description: The external id
        Type: String
    RoleName:
        Description: The role name
        Type: String
```

4. Input your AWS Account ID, and give your account a name.

5. Test the connection, and click save to connect your account.

## How It Works
Cloudrail asks that you configure a role within your account that Cloudrail can assume. The role has specific policies attached to it (SecurityAudit and ViewOnlyAccess) and you also can choose to set your own policies. From there, cloudrail is able to audit your account for misconfigurations and drift.
