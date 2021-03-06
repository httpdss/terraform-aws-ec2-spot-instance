######
# EC2 spot instance
######
resource "aws_spot_instance_request" "this" {
  count = var.instance_count

  ami                    = var.ami
  instance_type          = var.instance_type
  user_data              = var.user_data
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  monitoring             = var.monitoring
  vpc_security_group_ids = var.vpc_security_group_ids
  iam_instance_profile   = var.iam_instance_profile

  associate_public_ip_address = var.associate_public_ip_address
  private_ip                  = var.private_ip
  ipv6_address_count          = var.ipv6_address_count
  ipv6_addresses              = var.ipv6_addresses

  source_dest_check                    = var.source_dest_check
  disable_api_termination              = var.disable_api_termination
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  availability_zone                    = var.availability_zone
  placement_group                      = var.placement_group
  tenancy                              = var.tenancy

  spot_price                      = var.spot_price
  wait_for_fulfillment            = var.wait_for_fulfillment
  spot_type                       = var.spot_type
  instance_interruption_behaviour = var.instance_interruption_behaviour
  launch_group                    = var.launch_group
  block_duration_minutes          = var.block_duration_minutes

  timeouts {
    create = var.create_timeout
    delete = var.delete_timeout
  }
}
