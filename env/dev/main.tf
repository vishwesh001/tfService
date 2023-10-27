module "gechub_vista_bucket" {
  source         = "one-two-uc.a.run.app/exp/cloud-storage/gcp"
  version        =  "1.5.4"
  name           = "gechub_vista_bucket"
  gcp_project_id = "ksdjhiudguisdgugsd"
  gcp_region     = "us-central1"
  read = [
    "serviceAccount:dev.com",
    "serviceAccount:dev.iam.gserviceaccount.com",    
    "group:group.com"
  ]
  write = [
    "serviceAccount:dev.com",
    "serviceAccount:dev.iam.gserviceaccount.com",    
    "group:group.com"
  ]
}



module "cloud_dcds_bucket" {
  source         = "one-two-uc.a.run.app/exp/cloud-storage/gcp"
  version        =  "1.5.4"
  name           = "cloud_dcds_bucket"
  gcp_project_id = "ksdjhiudguisdgugsd"
  gcp_region     = "us-central1"
  read = [
    "serviceAccount:dev.com",
    "serviceAccount:dev.iam.gserviceaccount.com",    
    "group:group.com"
  ]
  write = [
   "serviceAccount:dev.com",
    "serviceAccount:dev.iam.gserviceaccount.com",    
    "group:group.com"
  ]
}

module "pubsub" {
  source                 = "one-two-uc.a.run.app/exp/pubsub/gcp"
  project_id             = var.gcp_project_id


}

module "scheduler" {
  source           = "one@github.exp.com:gcp/tfm-scheduler.git"

}

locals {
 
}

module "pqsql-singlezone" {
  source               = "one-two-uc.a.run.app/exp/postgresql/gcp"
  version      		   =  "2.7.19"  
}

resource "google_sql_ssl_cert" "client_certdev" {
  common_name = "jhs"

}


module "loginsecret" {
  source = "one-two-uc.a.run.app/exp/secret-manager/gcp"

}

module "client-cert-secret" {
  source = "one-two-uc.a.run.app/exp/secret-manager/gcp"
}



module "additional-users-secret1" {
  source       = "one-two-uc.a.run.app/exp/secret-manager/gcp"
}


resource "google_sql_user" "iam_account_idsdev" {
  

}






terraform {
  required_providers {
    postgresql = {
      source = "postgresql"
      version = "5"
    }
  }
}

provider "postgresql" {
  
 }

resource "postgresql_extension" "my_extensiondev" {
  
}


resource "google_service_account" "wif_service_accountdev" {
 
}

resource "google_service_account_iam_member" "admin-account-iamdev" {

}


resource "google_service_account" "dcds_service_accountdev" {
 
}


resource "google_service_account_iam_member" "dcds_adfs_wif_service_account_iamdev" {  
 
}

resource "google_service_account" "db_service_accountdev" {
 
}

resource "google_cloud_scheduler_job" "Stop-Job-weekdaysdev" {
 
 
}


resource "google_cloud_scheduler_job" "Start-Job-Weekdaysdev" {
 }

resource "google_logging_project_bucket_config" "caas-logs-us-central1dev" {

}