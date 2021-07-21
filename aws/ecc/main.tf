data "aws_subnet" "subnet" {
  filter {
    name   = "tag:Name"
    values = [var.subn]
  }
}

resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.it

  associate_public_ip_address = var.epip
  subnet_id                   = data.aws_subnet.subnet.id
  private_ip                  = var.sip

  root_block_device {
    volume_size = var.vsi
    volume_type = var.vt
  }

  credit_specification {
    cpu_credits = var.cpuc
  }

  tags = {
    Name = var.name
  }
}
