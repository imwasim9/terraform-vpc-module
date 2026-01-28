data "aws_availability_zones" "available" {
  state = "available"
}

# output "data_az" {
#   value = aws_availability_zones.available
# }

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name   = "association.main"
    values = ["true"]
  }
}
