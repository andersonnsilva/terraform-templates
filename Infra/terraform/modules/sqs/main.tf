resource "aws_sqs_queue" "sqs_test" {
  name                      = var.sqs_name
}

resource "aws_sqs_queue_policy" "sqs_test_policy" {
  queue_url = aws_sqs_queue.sqs_test.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.sqs_test.arn}"
    }
  ]
}
POLICY
}