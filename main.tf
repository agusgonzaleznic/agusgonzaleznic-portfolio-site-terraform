module "s3-cloudfront-site" {
  source                 = "../terraform-aws-static-site"
  environment            = "prod"
  FQDN                   = "agusgonzaleznic.com"
  versioning_enabled     = true
  route53_hosted_zone_id = "Z04422371LCAAJE5AYR19" // This value has to come from the remote state of core services.
  ci_username            = "gitci"
}