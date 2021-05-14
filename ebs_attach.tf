resource "aws_volume_attachment" "vol_att"{
	device_name = "/dev/sdh"
	volume_id = aws_ebs_volume.ebs.id
	instance_id = aws_instance.terraform_instance.id
}

output "o1"{
    value = aws_volume_attachment.vol_att
}