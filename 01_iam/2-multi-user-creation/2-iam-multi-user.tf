# 
resource "aws_iam_user" "myuser" {
  for_each = toset(["user1", "user2", "user3"])
  name     = each.key
}