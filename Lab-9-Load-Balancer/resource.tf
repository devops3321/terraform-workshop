resource "aws_elb" "mylb"{
    name = var.elb_name
    availabilty_zones = var.az
    listner{
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }
    health_check{
        healthy_thershold = 2
        unhealthy_thershold = 2
        timeout = var.timeout
        interval = 10
        target = "HTTP:80/"
    }
    cross_zone_load_balancing = true
    idle_timoout = var.timeout
    connection_draining = true
    connection_draining_timeout = var.timeout
    tags = {
        Name = var.elb_name
    }
}