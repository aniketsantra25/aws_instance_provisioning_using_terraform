resource "null_resource" "null_remote1" {
    connection{
        type = "ssh"
        user = "ec2-user"
        private_key = file("C:/Users/anike/Downloads/mykey125.pem")   
        host = aws_instance.terraform_instance.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "sudo mkfs.ext4 /dev/xvdh",
            "sudo yum install httpd -y",
            "sudo systemctl start httpd",
            "sudo systemctl enable httpd"
            
        ]
    }
    provisioner "local-exec" {
          command = "ansible-playbook -i '${aws_instance.terraform_instance.public_ip}' webserver.yml"
    }
}


