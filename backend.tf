terraform {
    backend "s3" {
      bucket = "github-actions-tfstate-bucketameni"
      key = "github-actions.tfstate"
      region = "eu-central-1"
    }
}