#----------------------------------- Global -----------------------------------
variable "solution" {
  description = "Solution name - example: organization_name"
  type        = string
}

variable "team" {
  description = "Team name"
  type        = string
}

variable "function" {
  description = "Function name"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name -	example:prod/stage/dev"
  type        = string
}

variable "region" {
  description = "location - example: eastus"
  type        = string
}

variable "alteration" {
  description = "Example of alteration: you spawn more than one environments in the same environment first alteration of the default deployment/environment = 01 second alteration of the deployment/environment = 02"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, etc."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
}

#----------------------------------- Specified -----------------------------------
# Location list and its assertion  
# The short location set according to name conventions.
variable "short_location_names" {
  type = map(any)
  default = {
    "us-east-2" = "use2"
    "us-west-2" = "usw2"
  }
}

# Environment names list and its assertion  
# The short environment names set according to name conventions.
variable "environment_list" {
  description = "Environment name"
  type        = list(any)
  default     = ["poc", "dev", "stage", "prod", "global", "shared"]
}

variable "short_environment_names" {
  type = map(any)
  default = {
    "poc"    = "poc"
    "prod"   = "prd"
    "dev"    = "dev"
    "stage"  = "stg"
    "shared" = "sh"
    "global" = "gbl"
  }
}
