variable "elb_name"{
    type = string
    default = "thinknyx-demo-lb"
}
variable "timeout"{
    type = number
    default = "5"
}
variable "az"{
    type = list
}