terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "test-horosi1900day"

    workspaces {
      name = "github-terraform"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {}

output "github_repos" {
  value = "test"
}
