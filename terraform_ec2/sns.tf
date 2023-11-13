resource "aws_sns_topic" "ha133" {
  name = "ha133"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.ha133.arn
  protocol  = "alertmanager"
  endpoint  = aws_lambda_function.terraform_lambda_func.arn
}