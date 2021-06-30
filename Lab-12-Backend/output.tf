
output "vm_public_ip"{
    description = "Display the public ip of server"
    value = aws_instance.myserver.public_ip
}