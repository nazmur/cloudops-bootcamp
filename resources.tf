# Define webserver inside the public subnet
   resource "aws_instance" "wb" {
   ami  = "${var.ami}"
   instance_type = "t2.medium"
   key_name = "${var.key_pair}"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
   associate_public_ip_address = true
   source_dest_check = false
   user_data = "${file("install.sh")}"

 provisioner "file" {
   source      = "/home/nazmur/workspace/training/repos/Devops/docker-compose.yml"
   destination = "/home/ubuntu/docker-compose.yml"
  }


connection {
    type     = "ssh"
    user = "ubuntu"
    private_key ="${file("/home/nazmur/Downloads/awsKeyPair.pem")}"
 }
  tags{
 Name="Public_INS"
}
}

