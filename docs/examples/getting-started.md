# Getting Started with CloudRail
Terraform is a fantastic tool that allows engineers to define infrastructure as code, but simple misconfigurations in code can lead to big security issues in production.

Cloudrail is a service that scans terraform files before they go out to production, so you can ensure the code you're writing is safe and secure.

## How To Scan Your Terraform Files for Security Flaws
To start, we'll use a simple example: a terraform repository on your local machine. Feel free to use your own, but if you don't have one - use our example.

### Install Cloudrail
First, install cloudrail to your local machine:

```bash
# Install cloudrail using python3
python3 -m pip install cloudrail --user
```

Try to run the following command:
```bash
# Check to see if cloudrail is installed
cloudrail --version
```

If you receive a command not found error, you'll need to add the python directory to your path. Otherwise, you're good to continue.

### Get Example Terraform Repository
If you'd like to use your own repository, simply `cd` into it and skip this step. Otherwise, continue to use our example terraform resources.

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
# Output
No cloud account is used in this analysis, showing all FAILUREs and WARNINGs.
✔ Preparing a filtered Terraform plan locally before uploading to Cloudrail Service...
Downloading a custom Terraform Core binary created by Cloudrail, this is only needed once in a while and will take a few minutes. No data is being sent at this time...
```