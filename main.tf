#data "aws_ami" "ami_details" {
#  most_recent = true
#}

resource "aws_launch_template" "lctemplate" {
  name = var.lt_name
  description = var.lt_description
  image_id = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [ var.securitygroup_id ]
  key_name = var.key_name
  user_data = filebase64("${path.module}/var.user_datascript")
  ebs_optimized = true 
  #default_version = 1
  update_default_version = true 
  block_device_mappings {
    device_name = var.instdevice_name
    ebs {
      #volume_size = 10      
      volume_size = 20               
      delete_on_termination = true
      volume_type = "gp2" 
    }
   }
  monitoring {
    enabled = true
  }   
  tag_specifications {
    resource_type = "instance"

  }  
  
}
