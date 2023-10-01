
resource "aws_instance" "application_ec2-private" {
  ami =var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  subnet_id = module.network.subnet_private[0].id
  vpc_security_group_ids = [aws_security_group.sg2.id]
  key_name = aws_key_pair.tf-key-pair.id


  tags = {
    Name="private-ec2"
  }

}

