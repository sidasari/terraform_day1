# resource "local_file" "file1" {

#     content = "hello,created file locally!!"
#     filename = "file1.myfile"
# }

# to create file locally where terraform is installed.Here content can be a template file


resource "local_file" "ips" {

    content = templatefile("details.tpl",
    {
        public_ip = aws_instance.webserver-1.public_ip 
        private_ip = aws_instance.webserver-1.private_ip
        vpcname = aws_vpc.MYVPC.id
    }
  )
    filename = "file1.myfile"
}

# to create file locally where terraform is installed.Here content can be a template file