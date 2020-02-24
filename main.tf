resource "aws_iam_user" "user" {
  for_each                  = var.name
  name                      = each.value
  path = "/"
}

resource "aws_iam_access_key" "user_key" {
  for_each                  = aws_iam_user.user.name
  user                      = each.value
}
