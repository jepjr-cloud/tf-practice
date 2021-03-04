resource "aws_cloudwatch_metric_alarm" "metric_alarm" {

  alarm_name = var.alarm_name
  alarm_description = var.alarm_description
  metric_name = var.metric_name
  namespace = var.namespace

  comparison_operator = var.comparison_operator
  evaluation_periods = var.evaluation_periods
  threshold = var.threshold
  statistic = var.statistic

  period = var.period
  
  dimensions = var.dimensions

}