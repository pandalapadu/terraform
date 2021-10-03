resource "aws_s3_bucket" "statebucket-checking" {
  bucket = "kunamvenkat1.xyz"
  acl    = "private"

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Dev"
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
}