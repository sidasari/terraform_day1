data "aws_vpc" "awsb39vpc" {

    id = "vpc-0a4aa6bf43a190a1a"
} 

data "aws_subnets" "awsb39vpcsubnets" {
    filter {
        name = "vpc-id"
        values = ["vpc-0a4aa6bf43a190a1a"]

    }
}