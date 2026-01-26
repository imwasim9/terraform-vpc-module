resource "aws_vpc_peering_connection" "default"{
    # peer_owner_id = "id of the aws account" This is optional field
    count = var.is_peering_required ? 1 : 0
    peer_vpc_id = data.aws_vpc.default.id
    vpc_id = aws_vpc.main.id

}