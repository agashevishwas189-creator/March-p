resource "aws_instance" "dummy" {
    ami = "ami-0f559c3642608c138"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0c78535db3865697a",aws_security_group.my_sg.id]

    tags = {
        Name = "dummy"
    }

}
resource "aws_security_group" "my_sg" {
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress { 
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      name = "my_sg"
    }   
}
