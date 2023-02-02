output "vpc_id" {
  value = aws_vpc.MYVPC.id

}
output "subnet1" {
  value = aws_subnet.subnet1_public.id

}
output "subnet2" {
  value = aws_subnet.subnet2_public.id

}
output "subnet3" {
  value = aws_subnet.subnet3_public.id

}
output "sg" {
  value = aws_security_group.allow_all.id

}

