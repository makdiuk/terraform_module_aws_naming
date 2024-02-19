# module-aws-naming

Terraform module to build proper naming based on naming and tagging convention.

## Usage

```HCL
module "aws_naming" {
  source      = ".././modules/module-aws-naming"
  solution    = "organization_name"
  environment = "dev"
  location    = "westus"
  alteration  = "01"

  tags = {
    "ManagedBy" : "DevOps"
  }
}
```

## Module Details

This module creates an null resources with correct short and full naming.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| alteration | Example of alteration: you spawn more than one environments in the same environment first alteration of the default deployment/environment = 01 second alteration of the deployment/environment = 02 | string | `n/a` | yes |
| environment | Environment name -	example:prod/stage/dev/int | string | `n/a` | yes |
| location | location - example: westus | string | `n/a` | yes |
| solution | Solution name - example: *organization_name* | string | `n/a` | yes |
| delimiter | Delimiter to be used between `name`, etc. | string | `"-"` | no |
| tags | Additional tags (e.g. `map('BusinessImpact`,`Moderate`) | map | `<map>` | no |
| function | Function name | string | `""` | no |
## Outputs

| Name | Description |
|------|-------------|
| alteration | Lowercased alteration. |
| environment | Lowercased environment. |
| solution | Lowercased solution. |
| function | Lowercased function. |
| location | Lowercased Azure location. |
| name | Lowercased Solution, Environment, Location, Alteration name splatted by dash |
| short_environment | Short version. Lowercased environment. |
| short_location | Short version. Lowercased Azure location. |
| short_solution | Lowercased short solution. |
| short_name | Short version. Lowercased Solution, Environment, Location, Alteration name |
| function_name | Lowercased Solution, Function, Environment, Location, Alteration name splatted by dash |
| short_function_name | Short version. Lowercased Solution, Function, Environment, Location, Alteration name |
| tags | Merge input tags with our tags. |

## Changelog

### v 1.0.0 2020-11-25

* Initial version

### v 1.1.0 2021-05-27

* Upgrade to work with Terraform v0.15.x
  * Change `list()` to `tolist([])` functions
  * Change `map()` to `tomap([])` functions

### v 1.2.0 2021-10-06

* Upgrade to work with Terraform v1.0.x
* Upgrade to work with AzureRM provider v2.82.0
* Move variables from the `main.tf` to the `variables.tf`
* Remove old variables
* Add locals.
  * Locals for autogenerating short solution name from the first and the last character, eg. company -> cy
* Add full list of Azure US regions into `variables.tf`
* Upgrade `README.md`

### v 1.3.0 2021-10-06

* Add new predefined environments