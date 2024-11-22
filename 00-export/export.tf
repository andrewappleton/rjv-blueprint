resource "genesyscloud_tf_export" "exp" {
  directory = "./gcexport"
  #compress = true
  enable_dependency_resolution = true
  #ignore_cyclic_deps = true
  #include_state_file = true
  #log_permission_errors = true
  export_as_hcl = true
  split_files_by_resource = true
  include_filter_resources = [
    # Data Actions
    "genesyscloud_integration_action::RJV Get Last Agent Handled a Voice Interaction by Phone Number",
    "genesyscloud_integration_action::RJV Get onQueue Agent by QueueId",
    # Data Tables
    "genesyscloud_architect_datatable::RJV_Routing_Prompts",
    "genesyscloud_architect_datatable::RJV_Routing_Destination",
    "genesyscloud_architect_datatable::RJV_Routing_Specialties",
    "genesyscloud_architect_datatable::RJV_Routing_Menu",
    "genesyscloud_architect_datatable::RJV_Routing_Scheduling",
    "genesyscloud_architect_datatable::RJV_Routing_LanguageMenu",
    "genesyscloud_architect_datatable::RJV_Routing_DNIS",
    "genesyscloud_architect_datatable::RJV_Global_TablesDivision",
    # Data Table Rows
    "genesyscloud_architect_datatable_row::RJV_Routing_Prompts",
    "genesyscloud_architect_datatable_row::RJV_Routing_Destination",
    "genesyscloud_architect_datatable_row::RJV_Routing_Specialties",
    "genesyscloud_architect_datatable_row::RJV_Routing_Menu",
    "genesyscloud_architect_datatable_row::RJV_Routing_Scheduling",
    "genesyscloud_architect_datatable_row::RJV_Routing_LanguageMenu",
    "genesyscloud_architect_datatable_row::RJV_Routing_DNIS",
    "genesyscloud_architect_datatable_row::RJV_Global_TablesDivision",
    # Script
    "genesyscloud_script::RJV Menhir",
    # Flows: Common Modules
    "genesyscloud_flow::RJV LastAgentRouting",
    "genesyscloud_flow::RJV PlayPrompt DirectTable",
    "genesyscloud_flow::RJV SetLanguage",
    "genesyscloud_flow::RJV Customer Journey",
    # Flows: Inbound Call
    "genesyscloud_flow::RJV Menhir Direct Tables",
    "genesyscloud_flow::RJV_TransferToFlowExample",
    # Flows: In-Queue
    "genesyscloud_flow::RJV Menhir In-Queue New",
    # Flows: Survey Flows
    "genesyscloud_flow::RJV_MenhirVoiceSurvey_FR",
    "genesyscloud_flow::RJV_MenhirVoiceSurvey_DE",
    "genesyscloud_flow::RJV_MenhirVoiceSurvey_EN",
    "genesyscloud_flow::RJV_MenhirVoiceSurvey_NL",
    "genesyscloud_architect_user_prompt:RJV_MoH_abstractfashion",
    "genesyscloud_architect_user_prompt:RJV_MoH_abstractfashion_RJV",
    "genesyscloud_architect_user_prompt:RJV_MoH_asmallmiracle",
    "genesyscloud_architect_user_prompt:RJV_MoH_asmallmiracle_RJV",
    # Prompts
    "genesyscloud_architect_user_prompt::RJV_MoH_abstractfashion",
    "genesyscloud_architect_user_prompt::RJV_MoH_abstractfashion_RJV",
    "genesyscloud_architect_user_prompt::RJV_MoH_asmallmiracle",
    "genesyscloud_architect_user_prompt::RJV_MoH_asmallmiracle_RJV",
    "genesyscloud_architect_user_prompt::Prompt_Lang_CR_Menu",
    "genesyscloud_architect_user_prompt::Prompt_Lang_CR_Menu_RJV"
  ]
  #exclude_attributes = []
  #exclude_filter_resources = []
  #replace_with_datasource = []
}