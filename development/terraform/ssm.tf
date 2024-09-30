resource "aws_ssm_parameter_dev" "dev" {
  name  = "/accoutId"
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}"
}
