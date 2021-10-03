resource "aws_flow_log" "vpc_flowlogs" {
  log_destination      = aws_s3_bucket.statebucket-checking.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.myvpc.id
}