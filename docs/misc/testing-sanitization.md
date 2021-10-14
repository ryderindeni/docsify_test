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
 docker run --rm -it -v $PWD:/data -v cloudrail:/indeni indeni/cloudrail-cli generate-filtered-plan --tf-plan plan.out
```
