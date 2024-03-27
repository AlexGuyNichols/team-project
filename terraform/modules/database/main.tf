module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "appdb"

  engine            = "postgres"
  engine_version    = "16.1"
  instance_class    = "db.t3.small"
  allocated_storage = 5

  db_name  = "appdb"
  username = "myuser"
  port     = "3306"

  manage_master_user_password = true

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = var.subnet_ids

#   # DB parameter group
  family = "postgres16"

  # Database Deletion Protection
  deletion_protection = false

  major_engine_version = "5.7"

  skip_final_snapshot = true
}