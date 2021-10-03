resource "aws_subnet" "subnet1-public" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "${var.public_subnet1_cidr}"
    availability_zone = "${var.public_subnet1_AZ}"

    tags = {
        Name = "${var.public_subnet1_name}"
    }
    depends_on = [
    aws_flow_log.vpc_flowlogs,
    aws_internet_gateway.first_IGW
  ]
}

resource "aws_subnet" "subnet2-public" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "${var.public_subnet2_cidr}"
    availability_zone = "${var.public_subnet2_AZ}"

    tags = {
        Name = "${var.public_subnet2_name}"
    }
    depends_on = [
    aws_flow_log.vpc_flowlogs,
    aws_subnet.subnet1-public
  ]
}

resource "aws_subnet" "subnet3-public" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "${var.public_subnet3_cidr}"
    availability_zone = "${var.public_subnet3_AZ}"

    tags = {
        Name = "${var.public_subnet3_name}"
    }
      depends_on = [
    aws_flow_log.vpc_flowlogs,
    aws_subnet.subnet2-public
  ]
	
}