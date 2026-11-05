# --------------------------------
# Workplace Mapping
# --------------------------------
locals {
  workplaces = {

    ### SPInE Foundation Team
    BTP_TRIAL_SPINE_GA_ADMIN = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    },
    BTP_TRIAL_SPINE_GA_SUPPORT = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    },
    BTP_CF_SPINE_ADMIN = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    },
    BTP_CF_SPINE_SUPPORT = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_manager", "organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    },

    ### <Functional Area> CF Subaccount
    SPINE_CF_SUBACC_ADMIN = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_Administrator"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    },
    SPINE_CF_SUBACC_ADMIN_LIGHT = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_LightAdmin_DEV"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_LightAdmin_QA"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = []
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_LightAdmin_PRD"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = []
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_LightAdmin_PRD"],
        cf_org_roles     = ["organization_auditor", "organization_user"],
        cf_space_roles   = []
      }
    },
    SPINE_CF_SUBACC_USERAUTHADMIN_LIGHT = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_C_UserAuthorizationAdministrator"],
        cf_org_roles     = [],
        cf_space_roles   = []
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_R_UserAuthorizationViewer"],
        cf_org_roles     = [],
        cf_space_roles   = []
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_R_UserAuthorizationViewer"],
        cf_org_roles     = [],
        cf_space_roles   = []
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_R_UserAuthorizationViewer"],
        cf_org_roles     = [],
        cf_space_roles   = []
      }
    },

    ### <Functional Area> CF Subaccount - Exception Workplaces 
    SPINE_CF_SUBACC_USERAUTHADMIN_Q = {
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_C_UserAuthorizationAdministrator"],
        cf_org_roles     = [],
        cf_space_roles   = []
      }
    },
    SPINE_CF_SUBACC_USERAUTHADMIN_I = {
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_C_UserAuthorizationAdministrator"],
        cf_org_roles     = [],
        cf_space_roles   = []
      }
    },
    SPINE_CF_SUBACC_USERAUTHADMIN_P = {
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_C_UserAuthorizationAdministrator"],
        cf_org_roles     = [],
        cf_space_roles   = []
      }
    },

    ### <Functional Area> CF Spaces
    BTP_CF_SPACE_DEVELOP = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Developer_DEV"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Developer_QA"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_auditor"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Developer_PRD"],
        cf_org_roles     = [],
        cf_space_roles   = []
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Developer_PRD"],
        cf_org_roles     = [],
        cf_space_roles   = []
      }
    },
    BTP_CF_SPACE_SUPPORT = {
      dev = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Support"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      qa = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Support"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      int = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Support"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_developer"]
      },
      prd = {
        role_collections = ["TRIAL_PRC_Subaccount_R_Space_Support"],
        cf_org_roles     = ["organization_user"],
        cf_space_roles   = ["space_supporter", "space_auditor"]
      }
    }
  }
}
