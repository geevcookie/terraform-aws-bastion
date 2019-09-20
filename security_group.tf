resource "aws_security_group" "default" {
  name        = "${var.project}securitygroup"
  vpc_id      = var.vpc
  description = "Bastion Security Group"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group_rule" "ssh" {
  protocol          = "TCP"
  from_port         = 22
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = var.allowed_cidr_blocks
  security_group_id = aws_security_group.default.id
}


resource "aws_security_group_rule" "internet" {
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.default.id
}