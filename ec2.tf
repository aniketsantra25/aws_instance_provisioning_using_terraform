resource "aws_instance" "terraform_instance" {
    ami = "ami-010aff33ed5991201"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform Instance"
    }
    security_groups = ["${aws_security_group.allowALL.name}"]
    key_name = "mykey125"


    depends_on = [
        aws_security_group.allowALL
    ]

}   