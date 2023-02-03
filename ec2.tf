resource "aws_instance" "webserver-1" {
    ami = "ami-0778521d914d23bc1"
    instance_type = "t2.micro"
    key_name =  "keypair"
    subnet_id = aws_subnet.subnet1_public.id
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true

    user_data = <<-EOF
    {
        #/bin/bash
        sudo apt update 
        sudo mkdir -p /temp/folder1
        sudo mkdir -p /temp/folder2
    }
    EOF
    provisioner "file" {
        source = "script.sh"
        destination = "/tmp/script.sh"
        connection  {
            type = "ssh"
            user = "ubuntu"
            private_key = file("keypair.pem")
            host = aws_instance.webserver-1.public_ip
        }
    }
}