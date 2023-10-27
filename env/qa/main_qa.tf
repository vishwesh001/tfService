module "gechub_vista_bucketqa" {
  source         = "one-two-uc.a.run.app/qa/cloud-storage/gcp"
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



module "cloud_dcds_bucketqa" {
  source         = "one-two-uc.a.run.app/qa/cloud-storage/gcp"
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

module "pubsubqa" {
  source                 = "one-two-uc.a.run.app/qa/pubsub/gcp"
  project_id             = var.gcp_project_id


}

module "schedulerqa" {
  source           = "one@github.exp.com:gcp/tfm-scheduler.git"

}

locals {
 
}

module "pqsql-singlezoneqa" {
  source               = "one-two-uc.a.run.app/qa/postgresql/gcp"
  version      		   =  "2.7.19"  
}

resource "google_sql_ssl_cert" "client_certqa" {
  common_name = "jhs"

}


module "loginsecretqa" {
  source = "one-two-uc.a.run.app/qa/secret-manager/gcp"

}

module "client-cert-secretqa" {
  source = "one-two-uc.a.run.app/qa/secret-manager/gcp"
}



module "additional-users-secret1qa" {
  source       = "one-two-uc.a.run.app/qa/secret-manager/gcp"
}


resource "google_sql_user" "iam_account_idsqa" {
  

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

resource "postgresql_extension" "my_extensionqa" {
  
}


resource "google_service_account" "wif_service_accountqa" {
 
}

resource "google_service_account_iam_member" "admin-account-iamqa" {

}


resource "google_service_account" "dcds_service_accountqa" {
 
}


resource "google_service_account_iam_member" "dcds_adfs_wif_service_account_iamqa" {  
 
}

resource "google_service_account" "db_service_accountqa" {
 
}

resource "google_cloud_scheduler_job" "Stop-Job-weekdaysqa" {
 
 
}


resource "google_cloud_scheduler_job" "Start-Job-Weekdaysqa" {
 }

resource "google_logging_project_bucket_config" "caas-logs-us-central1qa" {

}