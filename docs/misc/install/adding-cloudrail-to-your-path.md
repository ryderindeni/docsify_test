# Adding the Cloudrail Command Line Tool to your PATH
If you're having trouble adding the cloudrail command line tool to your path, here are a few steps to point you in the right direction.

## OSX

On OSX, you can add CloudRail to your PATH by running the following steps.

First, find the binary directory of the python executable you're using.

```bash
python3 --version

> Python 3.8.2
```

Next, confirm that cloudrail is installed in that binary directory:

```bash
ls -l /Users/your_username/Library/Python/3.8/bin | grep cloudrail
```

Once confirmed, add that directory to your path:
```bash
echo "export PATH=$PATH:/Users/your_username/Library/Python/3.8/bin" >> ~/.bash_profile
```

Then source your bash_profile.sh file:
```bash
source ~/.bash_profile
```

and run the cloudrail command again:
```bash
cloudrail --version

> cloudrail, version 1.3.282
```
