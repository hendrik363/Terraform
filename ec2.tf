resource "aws_instance" "web" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.nano"

  key_name= "tpt-b316"

  tags = {
    Name = "HelloWorld"
  }

  user_data = file{"${path.module}/ec2_setup.sh"}
}
output "web_id" {
    
    value = aws_instance.web.id
}
output "web_ip" {
    
    value = aws_instance.web.public_ip
}