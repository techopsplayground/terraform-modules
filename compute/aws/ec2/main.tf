resource "aws_instance" "ec2_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  iam_instance_profile   = var.iam_instance_profile
  availability_zone      = var.availability_zone

  tags = merge(
    var.common_tags,
    tomap({ "Name" = var.instance_name })
  )

  connection {
    type        = "ssh"
    user        = var.ssh_user
    private_key = file(var.key_path)
    host        = self.public_ip
  }

  provisioner "file" {
    source      = var.setup_script
    destination = "/tmp/setup_script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup_script.sh",
      "bash /tmp/setup_script.sh"
    ]
  }

  depends_on = var.depends_on
}
