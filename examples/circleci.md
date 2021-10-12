# How To Deploy Terraform with Cloudrail using CircleCI
Using a CI/CD pipeline is a great way to ensure infrastructure in production stays inline with infrastructure as code.

This tutorial will walk through all the steps needed to deploy an example terraform repository, using CircleCI, with Indeni Cloudrail security scanning.

## What You'll Need
To start, you'll need the following accounts:

- AWS Account
- Cloudrail Account
- Github Account
- CircleCI Account



## Getting Started
To start, we first need to configure a [backend](https://www.terraform.io/docs/language/settings/backends/index.html) for our terraform configuration.

In this case, we're going to go with an AWS S3 bucket, so before anything else, we need to create and configure it.


## Creating The Repository

## Pushing The Code


```bash
cd test
```


```yaml
 doe: "a deer, a female deer"
 ray: "a drop of golden sun"
 pi: 3.14159
 xmas: true
 french-hens: 3
 calling-birds:
   - huey
   - dewey
   - louie
   - fred
 xmas-fifth-day:
   calling-birds: four
   french-hens: 3
   golden-rings: 5
   partridges:
     count: 1
     location: "a pear tree"
   turtle-doves: two
```

Next, we can configure this:


```hcl
resource "aws_vpc_peering_connection" "default" {
  provider    = aws.region_a
  peer_vpc_id = aws_vpc.region_b.id
  vpc_id      = aws_vpc.region_a.id
  peer_region = var.region_b

  tags = {
    Name     = "VPC Peering (${var.region_a} - ${var.region_b})"
    PeerSide = "Requester"
  }

}

```