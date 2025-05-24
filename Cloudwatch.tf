provider "aws" {
  region = "us-east-1"
}

# CloudWatch Alarm
resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = "High-CPU-Alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "This alarm triggers when CPU utilization exceeds 80% for 10 minutes"
  dimensions = {
    InstanceId = aws_instance.web.id
  }
  actions_enabled     = true

  # Optional: Send notification via SNS
  alarm_actions = [aws_sns_topic.alerts.arn]
}

# Optional: SNS Topic and Subscription
resource "aws_sns_topic" "alerts" {
  name = "ec2-alerts"
}

resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.alerts.arn
  protocol  = "email"
  endpoint  = "karishmaabruk810@gmail.com"
}
