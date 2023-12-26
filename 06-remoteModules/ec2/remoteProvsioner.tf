resource "null_resource" "playbook" {

    depends_on = [aws_instance.app]

    connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = aws_instance.app.private_ip
    }

    provisioner "remote-exec" {
        inline = [
            "yum install python3-pip -y",
            "pip3 install pip --upgrade",
            "pip3 install ansible",
            "ansible-pull -U https://github.com/Shoaibs411/ansible.git -e ENV=dev -e COMPONENT=mongodb roboshop-pull.yml"
        ] 
    }
}
