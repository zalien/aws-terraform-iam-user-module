output "user_secret" {
  value = {
    for secret in aws_iam_access_key.user_key :
    secret.secret => secret.secret
  }
}

output "user_key" {
  value = {
    for key in aws_iam_access_key.user_key :
    key.key => key.key
  }
}

output "user" {
  value = {
    for user in aws_iam_access_key.user_key:
    key.key => key.key
  }
}
