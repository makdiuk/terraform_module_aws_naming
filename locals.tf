locals {
  #Creating solution short name - only first and last character, eg. company -> cy
  short_solution_names = lower(join("", [substr(var.solution, 0, 1), substr(var.solution, length(var.solution) - 1, 1)]))
}
