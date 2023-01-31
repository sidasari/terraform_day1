resource "aws_iam_user" "user1" {
  name = "devopsuser1"
  depends_on = [aws_route_table_association.terraform-public-1]
}

resource "aws_iam_user" "user2" {
  name = "devopsuser2"
    depends_on = [aws_iam_user.user1]

}

resource "aws_iam_user" "user3" {
  name = "devopsuser3"
   depends_on = [aws_iam_user.user2]

}