resource "aws_instance" "test" {
  
  ami = var.ami_value
  instance_type = var.instance_type_value
  # subnet_id = var.subnet_id_value
  associate_public_ip_address = true
  tags = merge(
    {
      Name = "${terraform.workspace}-${var.instance_type_value}-instance"
    },
    var.tags
  )
}