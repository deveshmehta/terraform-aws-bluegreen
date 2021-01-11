variable "db_identifier" {
  description = "The name of the RDS instance"
  default = ""
}

variable "db_allocated_storage" {
  description = "The allocated storage in GB"
  default = 5
}

variable "db_name" {
  description = "The DB name to create"
  default = ""
}

variable "db_username" {
  description = "Username for the master DB user"
  default = ""
}

variable "db_password" {
  description = "Password for the master DB user"
  default = ""
}

variable "db_port" {
  description = "The port on which the DB accepts connections"
  default = 5432
}

variable "db_maintenance_window" {
  description = "The window to perform maintenance in"
  default = "Mon:00:00-Mon:03:00"
}

variable "db_backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled"
  default = "03:00-06:00"
}

variable "db_backup_retention_period" {
  description = "The days to retain backups for"
  default = 0
}