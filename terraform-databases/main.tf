
module "mongodb" {
    source                  = "./vendor/modules/mongodb/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
    ENV                     = var.ENV
    AZ                      = var.AZ
    DOCDB_ENGINE_VERSION    = var.DOCDB_ENGINE_VERSION
    DOCDB_INSTANCE_COUNT    = var.DOCDB_INSTANCE_COUNT
    DOCDB_INSTANCE_TYPE     = var.DOCDB_INSTANCE_TYPE
    DOCDB_PORT              = var.DOCDB_PORT
}

# module "mysql" {
#     source                  = "./vendor/modules/mongodb/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
#     ENV                     = var.ENV
#     AZ                      = var.AZ
    
# }


# module "redis" {
#     source                  = "./vendor/modules/mongodb/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
#     ENV                     = var.ENV
#     AZ                      = var.AZ
  
# }

# module "rabbitmq" {
#     source                  = "./vendor/modules/mongodb/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
#     ENV                     = var.ENV
#     AZ                      = var.AZ
    
# }