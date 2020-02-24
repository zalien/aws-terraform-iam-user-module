resource "aws_iam_user" "user" {
  for_each                  = var.name
  name                      = each.value
  path = "/"
}

resource "aws_iam_access_key" "user_key" {
  user                      = aws_iam_user.user[each.value]
}
