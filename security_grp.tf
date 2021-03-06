resource "aws_security_group" "allowALL" {
    name = "allowall"
    description = "allow all traffic"

    ingress {
        description = "allow all traffic"
        from_port = 0
        to_port = 65535
        protocol = "all"  
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" # -1 is equivalent to all
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
                Name = "Allow ALL"   
    }

    depends_on = [
        
            aws_default_vpc.default

        ]
    
}
