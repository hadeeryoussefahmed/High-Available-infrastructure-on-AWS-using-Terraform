

resource "aws_instance" "bastion-instence" {
ami =var.AMI_ID
instance_type = var.INSTANCE_TYPE
subnet_id = module.network.subnet_public[1].id
vpc_security_group_ids = [aws_security_group.sg.id]
key_name = aws_key_pair.tf-key-pair.id


provisioner "local-exec" {
    command = "echo ${self.public_ip}  >inventory "
  
}


user_data = <<-EOF
              #!/bin/bash
              echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private_key.pem
              chmod 400 private_key.pem
              EOF

tags = {
    Name= "bastionHost_instance"
}

}