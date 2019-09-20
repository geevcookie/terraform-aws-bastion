resource "aws_instance" "default" {
  ami           = "ami-09393cef16d65b519"
  instance_type = "t3.nano"

  vpc_security_group_ids = [aws_security_group.default.id]

  iam_instance_profile        = aws_iam_instance_profile.default.name
  associate_public_ip_address = "true"

  key_name = var.keyname

  subnet_id = var.subnetid
}