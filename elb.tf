#   Create Load Balance
resource "aws_elb" "prod_elb" {
  name               = "prod-elb"
  availability_zones = ["sa-east-1a", "sa-east-1b", "sa-east-1c"]

  /*access_logs {
    bucket        = "foo"
    bucket_prefix = "bar"
    interval      = 60
  }*/

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  /*listener {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }*/

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/check.html"
    interval            = 30
  }

  instances                   = [aws_instance.ec2-web01.id,aws_instance.ec2-web02.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "prod-elb"
  }
}