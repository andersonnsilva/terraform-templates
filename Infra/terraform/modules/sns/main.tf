resource "aws_sns_topic" "teste_sns" {
  name            = var.sns_name
}

resource "aws_sns_topic_policy" "teste_sns_policy" {
  arn = aws_sns_topic.teste_sns.arn

  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id = "__default_policy_ID"

  statement {
    actions = [
      "SNS:Subscribe",
      "SNS:SetTopicAttributes",
      "SNS:RemovePermission",
      "SNS:Receive",
      "SNS:Publish",
      "SNS:ListSubscriptionsByTopic",
      "SNS:GetTopicAttributes",
      "SNS:DeleteTopic",
      "SNS:AddPermission",
    ]

    resources = [
      aws_sns_topic.teste_sns.arn,
    ]

    effect = "Allow"
  }
}

resource "aws_sns_topic_subscription" "sns_topic_subscription_sqs" {
  topic_arn = aws_sns_topic.teste_sns.arn
  protocol  = "sqs"
  endpoint  = var.sqs_arn
}