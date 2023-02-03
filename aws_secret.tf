# resource "random_password" "password" {
#     length = 16
#     special = true
#     override_special = "!#$%^"
# }

# // creating secret for mydb1
# resource "aws_secretsmanager_secret" "secretdb" {
#     name = "mydb0"
# }

# resource "aws_secretsmanager_secret_version" "sversion2" {
#   secret_id     = aws_secretsmanager_secret.secretdb.id
#   secret_string = <<EOF
#    {
#     "username": "adminaccount",
#     "password": "${random_password.password.result}"
#    }
# EOF
# }

