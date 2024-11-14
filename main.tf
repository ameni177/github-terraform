provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "GithubActionsInstanz" {
  ami           = "ami-0eddb4a4e7d846d6f"
  instance_type = "t2.micro"
  tags = {
    Name = "Meine Github Actions Instanz"
  }
}

resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = var.db_username   # Using the variable for username
  password             = var.db_password   # Using the variable for password
  publicly_accessible  = true
  skip_final_snapshot  = false
  final_snapshot_identifier = "foo1" # Ensure unique snapshot name
}


variable "db_username" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}
