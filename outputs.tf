output "name" {
  value       = null_resource.label.triggers.name
  description = "Lowercased Solution, Environment, Location, Alteration name splatted by dash."
}

output "short_name" {
  value       = null_resource.label.triggers.short_name
  description = "Short version. Lowercased Solution, Environment, Location, Alteration name"
}

output "service_name" {
  value       = null_resource.label.triggers.service_name
  description = "Lowercased Solution, Service, Environment, Location, Alteration name splatted by dash."
}

output "short_service_name" {
  value       = null_resource.label.triggers.short_service_name
  description = "Short version. Lowercased Solution, Service, Environment, Location, Alteration name"
}

output "cluster_name" {
  value       = null_resource.label.triggers.cluster_name
  description = "Service, Cluster, Lowercased Solution, Environment, Location, Alteration name splatted by dash."
}

output "environment" {
  value       = null_resource.label.triggers.environment
  description = "Lowercased environment."
}

output "short_environment" {
  value       = null_resource.short_label.triggers.short_environment
  description = "Short version. Lowercased environment."
}

output "solution" {
  value       = null_resource.label.triggers.solution
  description = "Lowercased solution."
}

output "short_solution" {
  value       = null_resource.short_label.triggers.short_solution
  description = "Lowercased short solution."
}

output "service" {
  value       = null_resource.label.triggers.service
  description = "Lowercased service."
}

output "alteration" {
  value       = null_resource.label.triggers.alteration
  description = "Lowercased alteration."
}

output "region" {
  value       = null_resource.label.triggers.region
  description = "Lowercased AWS region"
}

output "short_region" {
  value       = null_resource.short_label.triggers.short_region
  description = "Short version. Lowercased AWS region."
}

# Merge input tags with our tags.
output "tags" {
  value = merge(
    tomap({
      "Solution"    = null_resource.label.triggers.solution,
      "Environment" = null_resource.label.triggers.environment,
      "Region"      = null_resource.label.triggers.region,
      "Alteration"  = null_resource.label.triggers.alteration,
      "Terarform"   = "true"
      #"Creation"    = null_resource.label.triggers.created
    }), var.tags
  )
}
