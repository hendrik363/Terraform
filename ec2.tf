resource "aws_instance" "web" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.nano"

  key_name= "tpt-b316"

  tags = {
    Name = "HelloWorld"
  }
}