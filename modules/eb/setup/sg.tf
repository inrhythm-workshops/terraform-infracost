resource "aws_security_group" "loadbalancer-sg" {
  name        = "sg_${aws_elastic_beanstalk_application.app.name}_${var.tags.prefix}"
  description = "Allow traffic from internet for ElasticBeanstalk application."
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  tags = merge(var.tags, {
    Name = "sg_${var.tags.prefix}"
  })
}
