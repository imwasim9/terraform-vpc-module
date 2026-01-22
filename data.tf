data "aws_availability_zones" "available"{
    state = "available"
}

# output "data_az" {
#   value = aws_availability_zones.available
# }