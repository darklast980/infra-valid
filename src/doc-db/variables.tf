variable region {}

variable cluster_identifier{ 
  default = ""
  description = "(Optional, Forces new resource) The indentifier for the DocDB instance, if omitted, Terraform will assign a random, unique identifier."
}

variable instance_class {
  default = "db.t3.medium"
}

variable deletion_protection {
    default = false
    description = "Delete protection instance"
}

variable skip_final_snapshot {
    default = true
    description = "Disable snapshot"
}

variable cluster_instances_count {
  default = 1
}

variable master_username {}

variable master_password {} 