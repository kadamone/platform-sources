terraform {
  backend "remote" {
    organization = "kadamone-team"
    workspaces {
      name = "platform"
    }
  }
}
