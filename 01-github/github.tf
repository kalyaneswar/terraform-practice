terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "github_pat_ee1HeYZPFzMCWZ7HP3T3BvGvQxenp" # or `GITHUB_TOKEN`
}

resource "github_repository" "github_repo" {
  name        = "terraform_github_repo"
  description = "This repo is created automatically using Terraform github providers"

  visibility = "public"

  
}