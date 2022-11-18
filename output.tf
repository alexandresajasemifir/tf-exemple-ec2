output "public_ip" {
  description = "IP public de notre instance EC2"
  value       = aws_instance.mon_instance.public_ip
}