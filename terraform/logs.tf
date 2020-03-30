# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "cws_log_group" {
  name              = "/ecs/cws-app"
  retention_in_days = 3

  tags = {
    Name = "cws-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "cws_log_stream" {
  name           = "cws-log-stream"
  log_group_name = aws_cloudwatch_log_group.cws_log_group.name
}

