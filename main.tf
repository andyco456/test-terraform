locals {
  #Base common tags for all resources
tags = {
	  DRMethod = "Template"
      Environment = "test"
      Purpose = "testing terraform - Andy PC"
      BusinessSystem = "ANDY"
	    BusinessOwner = "TECH SERVICES"
      #Application = optional addition per Licensed Application
      CoreInfrastructure = "No"
    }
}

module "module123"   {
    source = "./module1"

     # Resource Group
    rgname = "RGTAATESTAZS01"
    location = "AustraliaEast"

     #Boot Diagnostics Account
     stbootdiag = "sttaatestazs01"
     stbootdiagkind = "StorageV2"
     stbootdiagtier = "Standard"
     stbootdiagrepl = "LRS"
     stbootdiaghttps = "true"

    tags = local.tags

}
