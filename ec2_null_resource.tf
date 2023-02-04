resource "null_resource" "ec2_user_data" {

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
    provisioner "remote-exec" {
       inline = [
        "sudo chmod 777 /tmp/script.sh",
        "sudo /tmp/script.sh" ,
        "echo 'hello from instance launched' | sudo tee -a /var/www/html/index.nginx-debian.html"
       ]
        connection  {
            type = "ssh"
            user = "ubuntu"
            private_key = file("keypair.pem")
            host = aws_instance.webserver-1.public_ip
        }
    }
  # This will execute locally where terraform is installed
    provisioner "local-exec" {
        command = <<EOH
         echo "${aws_instance.webserver-1.public_ip}" >> public_ip &&  echo "${aws_instance.webserver-1.private_ip}" >> private_ip
    EOH
    }
 }