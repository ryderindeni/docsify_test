# Cloudrail's Terraform Sanitization
Before uploading, cloudrail filters out all sensitive information from your terraform plan like secrets and keys.

## Testing Sanitization
If you'd like to test sanitization for yourself, use the following commands to generate, but not upload, a filtered plan.

```bash
# Run on your plan.out file
cloudrail generate-filtered-plan --tf-plan plan.out
```

If you'd like to use docker instead of the python CLI, the command is as follows:

```bash
 docker run --rm -it \
    -v $PWD:/data \
    -v cloudrail:/indeni \
    indeni/cloudrail-cli generate-filtered-plan --tf-plan plan.out
```

You're then able to review the filtered plan that would be uploaded to cloudrail for analysis.


## Data We Use
As part of Cloudrail’s analysis operations, Cloudrail’s CLI makes use of some data from Terraform files. We filter the file from sensitive information (e.g. IP addresses, credentials, etc) and upload it to the Cloudrail Service for analysis. After analysis, the file is removed from the Service (that is, it is not kept beyond the time of analysis).

