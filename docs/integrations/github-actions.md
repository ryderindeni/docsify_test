# Connecting Cloudrail with GitHub Actions
Cloudrail maintains a [GitHub Action](https://github.com/marketplace/actions/cloudrail-run-github-action) for easily integrating Cloudrail into your GitHub repositories.


![GitHub Actions logo](../_media/integrations/cloudrail_githubactions.png)

## How to connect Cloudrail with GitHub Actions
The Cloudrail GitHub action requires a few important inputs:

- A Terraform plan that was generated using `terraform plan -out=plan`
- A Cloudrail API key
- An identifier of the cloud account you want to run Cloudrail against (if you have more than one added to Cloudrail).


Our recommendations for implementing this action are as follows:

```yaml
      - uses: indeni/cloudrail-run-ga@v1.5
        with:
          tf-plan-file: plan.out # created with "terraform plan"
          cloudrail-api-key: ${{ secrets.CLOUDRAIL_API_KEY }} # Requires Cloudrail registration
          cloud-account-id: 473085186055 # Replace with your cloud account ID
```

**Just doing static analysis**? You can use an empty cloud-account-id like in this example.

```yaml
      - uses: indeni/cloudrail-run-ga@v1.5
        with:
          tf-plan-file: plan.out
          cloudrail-api-key: ${{ secrets.CLOUDRAIL_API_KEY }}
          cloud-account-id: 
```

## Working Example

To see an example of how to use this action in a workflow, [please take a look at our demo code](https://github.com/indeni/cloudrail-demo/blob/master/.github/workflows/cloudrail-demo.yml).


## Outputs
By default, this action will output in SARIF format, which is supported by GitHub, to list the security violations found by Cloudrail. To upload the SARIF into the GitHub system for analysis, use the following example code:

```yaml
      - name: Upload SARIF file
        uses: github/codeql-action/upload-sarif@v1
        # Remember that if issues are found, Cloudrail return non-zero exit code, so the if: always()
        # is needed to ensure the SARIF file is uploaded
        if: always() 
        with:
          sarif_file: cloudrail_results.sarif
```
