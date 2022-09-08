# Create multiple IAM users:
Create multiple iam users in aws using for_each string meta argument with 1 resource
```
# 
resource "aws_iam_user" "myuser" {
  for_each = toset(["user1", "user2", "user3"])
  name     = each.key
}
```