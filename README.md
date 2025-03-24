# GitHub Management with Terraform

## Overview
This repository, `github_mngm`, is designed to manage multiple GitHub accounts using Terraform. It automates the creation and configuration of repositories for two different accounts: `andres` and `comu`.

## Directory Structure
```
.
├── accounts
│   ├── andres
│   │   ├── provider.tf
│   │   ├── repos.tf
│   │   ├── terraform.tfvars
│   │   ├── tfplan
│   │   └── variables.tf
│   └── comu
│       ├── provider.tf
│       ├── repos.tf
│       ├── terraform.tfvars
│       ├── tfplan
│       └── variables.tf
├── LICENSE
├── modules
│   └── github
│       ├── main.tf
│       ├── provider.tf
│       └── variables.tf
└── README.md
```

## Features
- Automates the management of GitHub repositories using Terraform.
- Supports multiple GitHub accounts.
- Uses Terraform modules for better organization and reusability.

## Requirements
- [Terraform](https://www.terraform.io/downloads.html) installed.
- GitHub personal access tokens (PATs) for authentication.

## Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/github_mngm.git
   cd github_mngm
   ```
2. Configure authentication:
   - Update `terraform.tfvars` files in `accounts/andres` and `accounts/comu` with the required credentials.
   
3. Initialize Terraform:
   ```sh
   terraform init
   ```
4. Plan the changes:
   ```sh
   terraform plan
   ```
5. Apply the changes:
   ```sh
   terraform apply
   ```

## Module Explanation
The `modules/github` directory contains reusable Terraform configurations for managing repositories across different accounts.

## License
This project is licensed under the [MIT License](LICENSE).
