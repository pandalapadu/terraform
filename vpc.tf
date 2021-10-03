resource "aws_vpc" "myvpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags = {
        Name = "${var.vpcname}"
	    Owner = "${var.Ownername}"
	    environment = "${var.envname}"
    }
}

resource "aws_internet_gateway" "first_IGW" {
    vpc_id = "${aws_vpc.myvpc.id}"
	tags = {
        Name = "${var.myvpc_IGW}"
    }
}
