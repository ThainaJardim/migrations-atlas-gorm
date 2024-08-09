data "external_schema" "gorm" {
  program = ["go", "run", "./cmd/main.go"]
}

env "gorm" {
  src = data.external_schema.gorm.url
  dev = "docker://postgres/16/dev"
  migration {
    dir = "file://migrations"
  }

  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}