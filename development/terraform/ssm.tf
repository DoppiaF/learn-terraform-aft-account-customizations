data "aws_caller_identity" "current" {}

resource "aws_ssm_parameter" "dev" {
  name  = "/accoutId"
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}"
}
