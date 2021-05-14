resource "aws_ebs_volume" "ebs"{
	availability_zone = aws_instance.terraform_instance.availability_zone
	size = 10
	tags = {
			Name = "tf_vol"

		}
}
