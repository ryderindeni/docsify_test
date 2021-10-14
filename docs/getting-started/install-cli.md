# Cloudrail Command Line Installation

This tutorial walks through how to set up the Cloudrail command line tool to let you scan and secure local terraform files on your machine.


### Prerequisites
- [Cloudrail Account](getting-started/account-setup.md)

### Install the Cloudrail Command Line Tool (CLI)
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

If you receive a command not found error, [you'll need to add the python directory to your path](misc/install/adding-cloudrail-to-your-path.md). Otherwise, you're good to continue.

## Next Steps
Now that you've got the CLI installed, you're ready to [scan some terraform files](getting-started/basic-use.md).
