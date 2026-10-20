# --------------------------------
# APP IDs müssen angepasst werden!
# --------------------------------

locals {
  
}

# --------------------------------
# Subaccount Administrator
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_C_Administrator" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_C_Administrator"
  description   = "Administrative access to the subaccount: Manage destination configurations, certificates, and subaccount trust via the Destination editor in the SAP BTP cockpit. Read-write authorizations for trusted identity providers, role collections, roles, and users at subaccount level. Read-write authorizations for viewing subaccount entitlements and for creating and deleting environment instances. Administrative access to service brokers and environments at subaccount level. View the data transmission tunnels used by the Cloud Connector to communicate with back-end systems. Manage apps, services, and space-scoped service brokers in a space."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Administrator"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Administrator"
    },
    {
      name                 = "Subaccount Admin"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Admin"
    },
    {
      name                 = "Subaccount Service Administrator"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Administrator"
    },
    {
      name                 = "User and Role Administrator"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_admin"
    }
  ]
}

# --------------------------------
# Subaccount Light-Admin
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_C_LightAdmin_DEV" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_C_LightAdmin_DEV"
  description   = "Limited administrative access to the subaccount: Manage destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. Manage apps, services and space-scoped service brokers in a space. Includes read authorizations for viewing subaccount entitlement. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Administrator"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Administrator"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Administrator"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_admin"
    }
  ]
}

resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_C_LightAdmin_QA" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_C_LightAdmin_QA"
  description   = "Limited administrative access to the subaccount: Manage destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. Manage apps, services and space-scoped service brokers in a space. Includes read authorizations for viewing subaccount entitlement. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Administrator"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Administrator"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_C_LightAdmin_PRD" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_C_LightAdmin_PRD"
  description   = "Limited administrative access to the subaccount: Manage destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. Manage apps, services and space-scoped service brokers in a space. Includes read authorizations for viewing subaccount entitlement. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Administrator"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Administrator"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

# --------------------------------
# Subaccount Viewer
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_R_Viewer" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_R_Viewer"
  description   = "Read-only access to the subaccount"

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Viewer"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Viewer"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

# --------------------------------
# Cloud Connector Administrator
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_CloudConnector_C_Administrator" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_CloudConnector_C_Administrator"
  description   = "Cloud Connector Administrator"

  roles = [
    {
      name                 = "Cloud Connector Administrator"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Administrator"
    }
  ]
}

# --------------------------------
# Space Developer
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_R_Space_Developer_DEV" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_R_Space_Developer_DEV"
  description   = "Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. View destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for viewing subaccount entitlements and for creating and deleting environment instances. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Viewer"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Viewer"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_R_Space_Developer_QA" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_R_Space_Developer_QA"
  description   = "Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. View destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for viewing subaccount entitlements and for creating and deleting environment instances. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Viewer"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Viewer"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_R_Space_Developer_PRD" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_R_Space_Developer_PRD"
  description   = "View the data transmission tunnels used by the Cloud connector to communicate with back-end systems."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    }
  ]
}

# --------------------------------
# Space Support
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_PRC_Subaccount_R_Space_Support" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_PRC_Subaccount_R_Space_Support"
  description   = "Read authorizations for trusted identity providers and users. View the data transmission tunnels used by the Cloud connector to communicate with back-end systems. View destination configurations, certificates and subaccount trust via the Destination editor in the SAP BTP cockpit. Read authorizations for viewing subaccount entitlements and for creating and deleting environment instances. Read-only access to service brokers and environments on a subaccount level."

  roles = [
    {
      name                 = "Cloud Connector Auditor"
      role_template_app_id = "connectivity!b7"
      role_template_name   = "Cloud_Connector_Auditor"
    },
    {
      name                 = "Destination Viewer"
      role_template_app_id = "destination-xsappname!b62"
      role_template_name   = "Destination_Viewer"
    },
    {
      name                 = "Subaccount Service Auditor"
      role_template_app_id = "service-manager!b1476"
      role_template_name   = "Subaccount_Service_Auditor"
    },
    {
      name                 = "Subaccount Viewer"
      role_template_app_id = "cis-local!b4"
      role_template_name   = "Subaccount_Viewer"
    },
    {
      name                 = "User and Role Auditor"
      role_template_app_id = "xsuaa!t8"
      role_template_name   = "xsuaa_auditor"
    }
  ]
}

# --------------------------------
# Audit Viewer
# --------------------------------
resource "btp_subaccount_role_collection" "TRIAL_BRC_AuditViewer_R_View" {
  subaccount_id = var.subaccount_id
  name          = "TRIAL_BRC_AuditViewer_R_View"
  description   = "Allows extension developers to deploy simple extensions."

  roles = [
    {
      name                 = "Auditlog_Auditor"
      role_template_app_id = "auditlog-management!b1187"
      role_template_name   = "Auditlog_Auditor"
    },
    {
      name                 = "Auditlog_Auditor"
      role_template_app_id = "auditlog-viewer-initial-content!t1187" # ANDERE APP ID 
      role_template_name   = "Auditlog_Auditor"
    }
  ]
}


