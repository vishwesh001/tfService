module "gechub_vista_bucket2prod" {
  source         = "one-two-uc.a.run.app/prod/cloud-storage/gcp"
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



module "cloud_dcds_bucketprod" {
  source         = "one-two-uc.a.run.app/prod/cloud-storage/gcp"
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

module "pubsubprod" {
  source                 = "one-two-uc.a.run.app/prod/pubsub/gcp"
  project_id             = var.gcp_project_id


}

module "schedulerprod" {
  source           = "one@github.exp.com:gcp/tfm-scheduler.git"

}

locals {
 
}

module "pqsql-singlezoneprod" {
  source               = "one-two-uc.a.run.app/prod/postgresql/gcp"
  version      		   =  "2.7.19"  
}

resource "google_sql_ssl_cert" "client_certprod" {
  common_name = "jhs"

}


module "loginsecretprod" {
  source = "one-two-uc.a.run.app/prod/secret-manager/gcp"

}

module "client-cert-secretprod" {
  source = "one-two-uc.a.run.app/prod/secret-manager/gcp"
}



module "additional-users-secret1prod" {
  source       = "one-two-uc.a.run.app/prod/secret-manager/gcp"
}


resource "google_sql_user" "iam_account_idsprod" {
  

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

resource "postgresql_extension" "my_extensionprod" {
  
}


resource "google_service_account" "wif_service_accountprod" {
 
}

resource "google_service_account_iam_member" "admin-account-iamprod" {

}


resource "google_service_account" "dcds_service_accountprod" {
 
}


resource "google_service_account_iam_member" "dcds_adfs_wif_service_account_iamprod" {  
 
}

resource "google_service_account" "db_service_accountprod" {
 
}

resource "google_cloud_scheduler_job" "Stop-Job-weekdaysprod" {
 
 
}


resource "google_cloud_scheduler_job" "Start-Job-Weekdaysprod" {
 }

resource "google_logging_project_bucket_config" "caas-logs-us-central1prod" {

}