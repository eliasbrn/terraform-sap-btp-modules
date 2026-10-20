variable "subaccount_stage" {
  description = "Stage of the Subaccount"
   type = string
   
   validation {
    condition = contains(
      ["SBX", "DEV", "QA", "INT", "PRD"],
      var.subaccount_stage
    )
    error_message = "subaccount_stage must be one of: SBX, DEV, QA, INT, PRD."
  }
}