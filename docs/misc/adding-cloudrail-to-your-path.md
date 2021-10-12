### Adding Cloudrail To Your Path
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
