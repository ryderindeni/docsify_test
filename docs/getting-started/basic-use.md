# Cloudrail Basic Use
This tutorial walks through how to use the Cloudrail CLI to scan terraform files on your local machine for security vulnerabilities.

## How To Scan Your Terraform Files for Vulnerabilities
To start, we'll use a simple example: a terraform repository on your local machine. Feel free to use your own, but if you don't have one - use our example.

This scan will perform a **static** analysis on the terraform files.

### Choose Your Repository
If you'd like to use your own repository, simply `cd` into it and skip this step. Otherwise, clone our example repository with some sample AWS resources.

```bash
git clone https://github.com/indeni/cloudrail-getting-started-tutorial
cd cloudrail-getting-started-tutorial
```

### Scan Your Terraform Files
Within the directory with your `.tf` files, run the following command to scan them for security flaws.

```bash
cloudrail run
```

```txt
No cloud account is used in this analysis, showing all FAILUREs and WARNINGs.
✔ Preparing a filtered Terraform plan locally before uploading to Cloudrail Service...
✔ Downloading a custom Terraform Core binary created by Cloudrail

Summary:
7 Rules Violated:
  0 Mandated Rules (these are considered FAILURES)
  7 Advisory Rules (these are considered WARNINGS)
0 Ignored Rules
125 Rules Skipped (no relevant resources found)
38 Rules Passed
```
 When asked if you'd like to send data to cloudrail, hit `y` and your results will appear momentarily.

## Viewing Your Results
After your run is complete, cloudrail will print any violations to your console, and will also make them available in the [web application](https://web.cloudrail.app/environments/assessments) with additional information on the problems and how to fix them.


## Next Steps
Next, check out how to [view your results in detail](getting-started/viewing-results.md).