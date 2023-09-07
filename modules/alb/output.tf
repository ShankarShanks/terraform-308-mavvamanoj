# output "alb_dns_name" {
#   value = aws_lb.my_alb.dns_name
# }
output "alb_dns_name" {
  value = [for alb in aws_lb.my_alb : alb.dns_name]
}