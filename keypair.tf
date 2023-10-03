#generate public and private keypair
resource "tls_private_key" "rsa-key" {
    algorithm = "RSA"
    rsa_bits = 4096
  
}

#create aws keypair by public key from tls_private_key 
resource "aws_key_pair" "tf-key-pair" {
    key_name = var.key_name
    public_key = tls_private_key.rsa-key.public_key_openssh
  
}

#store private keypair into my machine to use it with ssh connect
resource "local_file" "tf-key"{
    content =tls_private_key.rsa-key.private_key_pem
    filename = "tf-key-pair.pem"
  
}
