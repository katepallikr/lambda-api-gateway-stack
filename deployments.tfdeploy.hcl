# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "production" {
  inputs = {
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::798714130597:role/stacks-hashicorp-kranthi-Demo"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "lambda-api-gateway-stack" }
  }
}
