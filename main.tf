terraform {  
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "test-horosi1900day" 
    workspaces {
      name = "github-terraform-cloud"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.GITHUB_TOKEN
}
