output "vm_public_ip"{
    description = "Display the public ip of all the servers created"
    value = aws_instance.myserver.*.public_ip
}
output "1st vm_public_ip"{
    description = "Display the public ip of 1st VM"
    value = aws_instance.myserver[0].public_ip
}
