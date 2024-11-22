resource "genesyscloud_flow" "INBOUNDEMAIL_RJV_Menir" {
  name              = "RJV_Menir"
  type              = "INBOUNDEMAIL"
  depends_on        = [genesyscloud_routing_queue.RJV_Menhir_Email, genesyscloud_flow.INQUEUEEMAIL_RJV_Default_In-Queue_Email]
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDEMAIL_RJV_Menir_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDEMAIL_RJV_Menir_filepath}"
}

resource "genesyscloud_flow" "INQUEUEEMAIL_RJV_Default_In-Queue_Email" {
  file_content_hash = "${filesha256(var.genesyscloud_flow_INQUEUEEMAIL_RJV_Default_In-Queue_Email_filepath)}"
  filepath          = "${var.genesyscloud_flow_INQUEUEEMAIL_RJV_Default_In-Queue_Email_filepath}"
  name              = "RJV Default In-Queue Email"
  type              = "INQUEUEEMAIL"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_Callback_Direct_Table" {
  name              = "RJV Callback Direct Table"
  type              = "COMMONMODULE"
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_Callback_Direct_Table_filepath)}"
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_Callback_Direct_Table_filepath}"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_Voicemail" {
  type              = "COMMONMODULE"
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_Voicemail_filepath)}"
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_Voicemail_filepath}"
  name              = "RJV Voicemail"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_LastAgentRouting" {
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_LastAgentRouting_filepath}"
  name              = "RJV LastAgentRouting"
  type              = "COMMONMODULE"
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_LastAgentRouting_filepath)}"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_SetLanguage" {
  type              = "COMMONMODULE"
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_SetLanguage_filepath)}"
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_SetLanguage_filepath}"
  name              = "RJV SetLanguage"
}

resource "genesyscloud_flow" "VOICESURVEY_RJV_MenhirVoiceSurvey_FR" {
  name              = "RJV_MenhirVoiceSurvey_FR"
  type              = "VOICESURVEY"
  file_content_hash = "${filesha256(var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_FR_filepath)}"
  filepath          = "${var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_FR_filepath}"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_Customer_Journey" {
  name              = "RJV Customer Journey"
  type              = "COMMONMODULE"
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_Customer_Journey_filepath)}"
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_Customer_Journey_filepath}"
}

resource "genesyscloud_flow" "INBOUNDCALL_RJV_TransferToFlowExample" {
  type              = "INBOUNDCALL"
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_RJV_TransferToFlowExample_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_RJV_TransferToFlowExample_filepath}"
  name              = "RJV_TransferToFlowExample"
}

resource "genesyscloud_flow" "VOICESURVEY_RJV_MenhirVoiceSurvey_EN" {
  name              = "RJV_MenhirVoiceSurvey_EN"
  type              = "VOICESURVEY"
  file_content_hash = "${filesha256(var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_EN_filepath)}"
  filepath          = "${var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_EN_filepath}"
}

resource "genesyscloud_flow" "INBOUNDCALL_RJV_Menhir_Direct_Tables" {
  name              = "RJV Menhir Direct Tables"
  type              = "INBOUNDCALL"
  depends_on        = [genesyscloud_architect_datatable.RJV_Routing_Destination, genesyscloud_architect_datatable.RJV_Routing_DNIS, genesyscloud_flow.COMMONMODULE_RJV_LastAgentRouting, genesyscloud_flow.COMMONMODULE_RJV_PlayPrompt_DirectTable, genesyscloud_flow.INQUEUECALL_RJV_Menhir_In-Queue_New, genesyscloud_architect_datatable.RJV_Routing_Specialties, genesyscloud_architect_datatable.RJV_Global_TablesDivision, genesyscloud_flow.COMMONMODULE_RJV_SetLanguage, genesyscloud_script.RJV_Menhir, genesyscloud_architect_datatable.RJV_Routing_LanguageMenu, genesyscloud_architect_datatable.RJV_Routing_Menu, genesyscloud_integration_action.RJV_Get_Last_Agent_Handled_a_Voice_Interaction_by_Phone_Number, genesyscloud_integration_action.RJV_Get_onQueue_Agent_by_QueueId, genesyscloud_flow.COMMONMODULE_RJV_Customer_Journey, genesyscloud_architect_datatable.RJV_Routing_Scheduling, genesyscloud_architect_datatable.RJV_Routing_Prompts, genesyscloud_flow.INBOUNDCALL_RJV_TransferToFlowExample]
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_RJV_Menhir_Direct_Tables_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_RJV_Menhir_Direct_Tables_filepath}"
}

resource "genesyscloud_flow" "VOICESURVEY_RJV_MenhirVoiceSurvey_DE" {
  type              = "VOICESURVEY"
  file_content_hash = "${filesha256(var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_DE_filepath)}"
  filepath          = "${var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_DE_filepath}"
  name              = "RJV_MenhirVoiceSurvey_DE"
}

resource "genesyscloud_flow" "COMMONMODULE_RJV_PlayPrompt_DirectTable" {
  file_content_hash = "${filesha256(var.genesyscloud_flow_COMMONMODULE_RJV_PlayPrompt_DirectTable_filepath)}"
  filepath          = "${var.genesyscloud_flow_COMMONMODULE_RJV_PlayPrompt_DirectTable_filepath}"
  name              = "RJV PlayPrompt DirectTable"
  type              = "COMMONMODULE"
}

resource "genesyscloud_flow" "INQUEUECALL_RJV_Menhir_In-Queue_New" {
  depends_on        = [genesyscloud_script.RJV_Menhir, genesyscloud_architect_datatable.RJV_Routing_Queueing, genesyscloud_flow.COMMONMODULE_RJV_Customer_Journey, genesyscloud_architect_datatable.RJV_Routing_Prompts, genesyscloud_flow.COMMONMODULE_RJV_PlayPrompt_DirectTable, genesyscloud_architect_user_prompt.RJV_MoH_asmallmiracle, genesyscloud_flow.COMMONMODULE_RJV_Voicemail, genesyscloud_flow.COMMONMODULE_RJV_Callback_Direct_Table]
  file_content_hash = "${filesha256(var.genesyscloud_flow_INQUEUECALL_RJV_Menhir_In-Queue_New_filepath)}"
  filepath          = "${var.genesyscloud_flow_INQUEUECALL_RJV_Menhir_In-Queue_New_filepath}"
  name              = "RJV Menhir In-Queue New"
  type              = "INQUEUECALL"
}

resource "genesyscloud_flow" "VOICESURVEY_RJV_MenhirVoiceSurvey_NL" {
  name              = "RJV_MenhirVoiceSurvey_NL"
  type              = "VOICESURVEY"
  file_content_hash = "${filesha256(var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_NL_filepath)}"
  filepath          = "${var.genesyscloud_flow_VOICESURVEY_RJV_MenhirVoiceSurvey_NL_filepath}"
}

