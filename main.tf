resource "aws_iam_user" "user" {
  for_each                  = var.name
  name                      = each.value
  path = "/"
}

resource "aws_iam_access_key" "user_key" {
  depends_on = [aws_iam_user.user]
  for_each   = var.name
  user       = each.value
}
