output "alb_id" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.myalb.id
}

output "alb_arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.myalb.arn
}

output "alb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.myalb.dns_name
}

output "alb_arn_suffix" {
  description = "ARN suffix of our load balancer - can be used with CloudWatch."
  value       = aws_lb.myalb.arn_suffix
}

output "alb_zone_id" {
  description = "The zone_id of the load balancer to assist with creating DNS records."
  value       = aws_lb.myalb.zone_id
}

output "target_group_arns" {
  description = "ARNs of the target groups. Useful for passing to your Auto Scaling group."
  value       = aws_lb_target_group.main[0].arn
}

output "target_group_arn_suffixes" {
  description = "ARN suffixes of our target groups - can be used with CloudWatch."
  value       = aws_lb_target_group.main[0].arn_suffix
}

output "target_group_names" {
  description = "Name of the target group. Useful for passing to your CodeDeploy Deployment Group."
  value       = aws_lb_target_group.main[0].name
}





