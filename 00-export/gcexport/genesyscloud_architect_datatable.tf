resource "genesyscloud_architect_datatable" "RJV_Routing_Queueing" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_Queueing"
  properties {
    title = "DestinationName"
    type  = "string"
    name  = "key"
  }
  properties {
    default = "false"
    name    = "PlayEWT"
    title   = "PlayEWT"
    type    = "boolean"
  }
  properties {
    name    = "PlayPosInQueue"
    title   = "PlayPosInQueue"
    type    = "boolean"
    default = "false"
  }
  properties {
    type    = "boolean"
    default = "false"
    name    = "OfferCallback"
    title   = "OfferCallback"
  }
  properties {
    type    = "boolean"
    default = "false"
    name    = "OfferVoiceMail"
    title   = "OfferVoiceMail"
  }
  properties {
    name  = "CallbackEwtThreshold"
    title = "CallbackEwtThreshold"
    type  = "integer"
  }
  properties {
    default = "false"
    name    = "CallbackRepeat"
    title   = "CallbackRepeat"
    type    = "boolean"
  }
  properties {
    name  = "CallbackScheduleGroup"
    title = "CallbackScheduleGroup"
    type  = "string"
  }
  properties {
    name  = "QueueMusic"
    title = "QueueMusic"
    type  = "string"
  }
  properties {
    type  = "integer"
    name  = "QueueMusic_Time"
    title = "QueueMusic_Time"
  }
  properties {
    name  = "QueueStartPrompt"
    title = "QueueStartPrompt"
    type  = "string"
  }
  properties {
    name  = "QueueStartPrompt2"
    title = "QueueStartPrompt2"
    type  = "string"
  }
  properties {
    name  = "QueueStartPrompt3"
    title = "QueueStartPrompt3"
    type  = "string"
  }
  properties {
    title = "QueueWaitPrompt"
    type  = "string"
    name  = "QueueWaitPrompt"
  }
  properties {
    type  = "integer"
    name  = "QueueWaitPromptThreshold"
    title = "QueueWaitPromptThreshold"
  }
  properties {
    type    = "boolean"
    default = "false"
    name    = "QueueWaitPromptRepeat"
    title   = "QueueWaitPromptRepeat"
  }
  properties {
    type  = "string"
    name  = "QueueWaitPrompt2"
    title = "QueueWaitPrompt2"
  }
  properties {
    name  = "QueueWaitPrompt2Threshold"
    title = "QueueWaitPrompt2Threshold"
    type  = "integer"
  }
  properties {
    title   = "QueueWaitPrompt2Repeat"
    type    = "boolean"
    default = "false"
    name    = "QueueWaitPrompt2Repeat"
  }
  properties {
    name  = "QueueWaitRepeats"
    title = "QueueLoopRepeats"
    type  = "integer"
  }
  properties {
    name  = "EndOfLoopPrompt"
    title = "EndOfLoopPrompt"
    type  = "string"
  }
  properties {
    title = "EndOfLoopTreatment"
    type  = "string"
    name  = "EndOfLoopTreatment"
  }
  properties {
    name  = "EndOfLoopTransferNumber"
    title = "EndOfLoopTransferNumber"
    type  = "string"
  }
}

resource "genesyscloud_architect_datatable" "RJV_Routing_DNIS" {
  name = "RJV_Routing_DNIS"
  properties {
    name  = "key"
    title = "DNIS"
    type  = "string"
  }
  properties {
    name  = "Rap_Entry"
    title = "Rap_Entry"
    type  = "string"
  }
  properties {
    name  = "FirstDestination"
    title = "FirstDestination"
    type  = "string"
  }
  properties {
    name  = "PriorityDNIS"
    title = "PriorityDNIS"
    type  = "integer"
  }
  properties {
    name  = "LanguageDefault"
    title = "LanguageDefault"
    type  = "string"
  }
  properties {
    name  = "LanguageSkillDefault"
    title = "LanguageSkillDefault"
    type  = "string"
  }
  properties {
    name  = "SkillLine"
    title = "SkillLine"
    type  = "string"
  }
  properties {
    name  = "Voice"
    title = "Voice"
    type  = "string"
  }
  properties {
    title   = "NumberActive"
    type    = "boolean"
    default = "false"
    name    = "NumberActive"
  }
  properties {
    name  = "DestinationNotActive"
    title = "DestinationNotActive"
    type  = "string"
  }
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
}

resource "genesyscloud_architect_datatable" "RJV_Routing_Specialties" {
  name = "RJV_Routing_Specialties"
  properties {
    name  = "key"
    title = "SpecName"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Rap_SpecDest"
    title = "Rap_SpecDest"
  }
  properties {
    name  = "NextDestination"
    title = "NextDestination"
    type  = "string"
  }
  properties {
    name  = "Dest_Default"
    title = "Dest_Default"
    type  = "string"
  }
  properties {
    name  = "Transfer_ExternalNumber"
    title = "Transfer_ExternalNumber"
    type  = "string"
  }
  properties {
    name  = "Transfer_FlowName"
    title = "Transfer_FlowName"
    type  = "string"
  }
  properties {
    title = "QueueNameCheckOnQueue"
    type  = "string"
    name  = "QueueNameCheckOnQueue"
  }
  properties {
    name  = "NoAgentsOnQueue_Destination"
    title = "NoAgentsOnQueue_Destination"
    type  = "string"
  }
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
}

resource "genesyscloud_architect_datatable" "RJV_Routing_Menu" {
  properties {
    name  = "key"
    title = "MenuName"
    type  = "string"
  }
  properties {
    name  = "Rap_Menu"
    title = "Rap_Menu"
    type  = "string"
  }
  properties {
    name  = "PromptMenu"
    title = "PromptMenu"
    type  = "string"
  }
  properties {
    type  = "integer"
    name  = "Repeats"
    title = "Repeats"
  }
  properties {
    name  = "Timeout"
    title = "Timeout"
    type  = "integer"
  }
  properties {
    name  = "Option1"
    title = "Option1"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt1"
    title = "Rap_Opt1"
    type  = "string"
  }
  properties {
    title = "Option2"
    type  = "string"
    name  = "Option2"
  }
  properties {
    name  = "Rap_Opt2"
    title = "Rap_Opt2"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Option3"
    title = "Option3"
  }
  properties {
    name  = "Rap_Opt3"
    title = "Rap_Opt3"
    type  = "string"
  }
  properties {
    name  = "Option4"
    title = "Option4"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt4"
    title = "Rap_Opt4"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Option5"
    title = "Option5"
  }
  properties {
    name  = "Rap_Opt5"
    title = "Rap_Opt5"
    type  = "string"
  }
  properties {
    name  = "Option6"
    title = "Option6"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt6"
    title = "Rap_Opt6"
    type  = "string"
  }
  properties {
    name  = "Option7"
    title = "Option7"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Rap_Opt7"
    title = "Rap_Opt7"
  }
  properties {
    type  = "string"
    name  = "Option8"
    title = "Option8"
  }
  properties {
    name  = "Rap_Opt8"
    title = "Rap_Opt8"
    type  = "string"
  }
  properties {
    name  = "Option9"
    title = "Option9"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt9"
    title = "Rap_Opt9"
    type  = "string"
  }
  properties {
    name  = "Option0"
    title = "Option0"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt0"
    title = "Rap_Opt0"
    type  = "string"
  }
  properties {
    name  = "Option#"
    title = "Option#"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt#"
    title = "Rap_Opt#"
    type  = "string"
  }
  properties {
    name  = "Option*"
    title = "Option*"
    type  = "string"
  }
  properties {
    name  = "Rap_Opt*"
    title = "Rap_Opt*"
    type  = "string"
  }
  properties {
    name  = "Default"
    title = "Default"
    type  = "string"
  }
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_Menu"
}

resource "genesyscloud_architect_datatable" "RJV_Routing_Destination" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_Destination"
  properties {
    name  = "key"
    title = "DestinationName"
    type  = "string"
  }
  properties {
    name  = "Rap_Dest"
    title = "Rap_Dest"
    type  = "string"
  }
  properties {
    name  = "QueueName"
    title = "QueueName"
    type  = "string"
  }
  properties {
    name  = "In-Queue"
    title = "In-Queue"
    type  = "string"
  }
  properties {
    name  = "Skill_1"
    title = "Skill_1"
    type  = "string"
  }
  properties {
    name  = "Skill_2"
    title = "Skill_2"
    type  = "string"
  }
  properties {
    name  = "Priority"
    title = "Priority"
    type  = "integer"
  }
  properties {
    name  = "Script"
    title = "Script"
    type  = "string"
  }
  properties {
    default = "false"
    name    = "Recording"
    title   = "Recording"
    type    = "boolean"
  }
  properties {
    default = "false"
    name    = "Rec_Consent"
    title   = "Rec_Consent"
    type    = "boolean"
  }
  properties {
    default = "false"
    name    = "Recording_OptOut"
    title   = "Recording_OptOut"
    type    = "boolean"
  }
  properties {
    name    = "OfferCallback"
    title   = "OfferCallback"
    type    = "boolean"
    default = "false"
  }
  properties {
    name  = "CallbackEwtThreshold"
    title = "CallbackEwtThreshold"
    type  = "integer"
  }
  properties {
    default = "false"
    name    = "LAR"
    title   = "LAR"
    type    = "boolean"
  }
  properties {
    name  = "LAR_Threshold"
    title = "LAR_Threshold"
    type  = "integer"
  }
  properties {
    default = "100"
    name    = "LoadBalancePercentage"
    title   = "LoadBalancePercentage"
    type    = "integer"
  }
  properties {
    name  = "LoadBalanceDestination"
    title = "LoadBalanceDestination"
    type  = "string"
  }
  properties {
    type    = "boolean"
    default = "false"
    name    = "Survey"
    title   = "Survey"
  }
  properties {
    default = "false"
    name    = "Survey_Consent"
    title   = "Survey_Consent"
    type    = "boolean"
  }
  properties {
    default = "false"
    name    = "Survey_OptOut"
    title   = "Survey_OptOut"
    type    = "boolean"
  }
  properties {
    type  = "string"
    name  = "SurveyFlowName"
    title = "SurveyFlowName"
  }
  properties {
    name  = "WhisperText"
    title = "WhisperText"
    type  = "string"
  }
  properties {
    name  = "ScriptDisplayText"
    title = "ScriptDisplayText"
    type  = "string"
  }
  properties {
    name  = "ScriptDisplayText2"
    title = "ScriptDisplayText2"
    type  = "string"
  }
}

resource "genesyscloud_architect_datatable" "RJV_Routing_Prompts" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_Prompts"
  properties {
    type  = "string"
    name  = "key"
    title = "PromptKey"
  }
  properties {
    name  = "PromptName"
    title = "PromptName"
    type  = "string"
  }
  properties {
    name  = "Rap_Entry"
    title = "Rap_Entry"
    type  = "string"
  }
  properties {
    name  = "NextDestination"
    title = "NextDestination"
    type  = "string"
  }
  properties {
    name  = "TTS_nl-nl"
    title = "TTS_nl-nl"
    type  = "string"
  }
  properties {
    name  = "TTS_fr-fr"
    title = "TTS_fr-fr"
    type  = "string"
  }
  properties {
    name  = "TTS_en-gb"
    title = "TTS_en-gb"
    type  = "string"
  }
  properties {
    name  = "TTS_de-de"
    title = "TTS_de-de"
    type  = "string"
  }
  properties {
    name  = "TTS_en-us"
    title = "TTS_en-us"
    type  = "string"
  }
}

resource "genesyscloud_architect_datatable" "RJV_Global_TablesDivision" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Global_TablesDivision"
  properties {
    type  = "string"
    name  = "key"
    title = "DivisionCode"
  }
  properties {
    name  = "Division"
    title = "Division"
    type  = "string"
  }
}

resource "genesyscloud_architect_datatable" "RJV_Routing_LanguageMenu" {
  properties {
    title = "MenuLanguage"
    type  = "string"
    name  = "key"
  }
  properties {
    name  = "Rap_LangMenu"
    title = "Rap_LangMenu"
    type  = "string"
  }
  properties {
    name  = "PromptMenu"
    title = "PromptMenu"
    type  = "string"
  }
  properties {
    name  = "Repeats"
    title = "Repeats"
    type  = "integer"
  }
  properties {
    type  = "integer"
    name  = "Timeout"
    title = "Timeout"
  }
  properties {
    name  = "Option1"
    title = "Option1"
    type  = "string"
  }
  properties {
    name  = "Option1_Destination"
    title = "Option1_Destination"
    type  = "string"
  }
  properties {
    name  = "Option1_LangSkill"
    title = "Option1_LangSkill"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Rap_Lang1"
    title = "Rap_Lang1"
  }
  properties {
    name  = "Option2"
    title = "Option2"
    type  = "string"
  }
  properties {
    title = "Option2_Destination"
    type  = "string"
    name  = "Option2_Destination"
  }
  properties {
    name  = "Option2_LangSkill"
    title = "Option2_LangSkill"
    type  = "string"
  }
  properties {
    name  = "Rap_Lang2"
    title = "Rap_Lang2"
    type  = "string"
  }
  properties {
    title = "Option3"
    type  = "string"
    name  = "Option3"
  }
  properties {
    name  = "Option3_Destination"
    title = "Option3_Destination"
    type  = "string"
  }
  properties {
    name  = "Option3_LangSkill"
    title = "Option3_LangSkill"
    type  = "string"
  }
  properties {
    name  = "Rap_Lang3"
    title = "Rap_Lang3"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Option4"
    title = "Option4"
  }
  properties {
    name  = "Option4_Destination"
    title = "Option4_Destination"
    type  = "string"
  }
  properties {
    name  = "Option4_LangSkill"
    title = "Option4_LangSkill"
    type  = "string"
  }
  properties {
    name  = "Rap_Lang4"
    title = "Rap_Lang4"
    type  = "string"
  }
  properties {
    name  = "Option5"
    title = "Option5"
    type  = "string"
  }
  properties {
    name  = "Option5_Destination"
    title = "Option5_Destination"
    type  = "string"
  }
  properties {
    name  = "Option5_LangSkill"
    title = "Option5_LangSkill"
    type  = "string"
  }
  properties {
    name  = "Rap_Lang5"
    title = "Rap_Lang5"
    type  = "string"
  }
  properties {
    name  = "Option9"
    title = "Option9"
    type  = "string"
  }
  properties {
    name  = "Option9_Destination"
    title = "Option9_Destination"
    type  = "string"
  }
  properties {
    name  = "Option9_LangSkill"
    title = "Option9_LangSkill"
    type  = "string"
  }
  properties {
    name  = "Rap_Lang9"
    title = "Rap_Lang9"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "Default"
    title = "Default"
  }
  properties {
    name  = "Defaut_Destination"
    title = "Default_Destination"
    type  = "string"
  }
  properties {
    name  = "Default_LangSkill"
    title = "Default_LangSkill"
    type  = "string"
  }
  properties {
    name  = "NextDestination"
    title = "String_01"
    type  = "string"
  }
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_LanguageMenu"
}

resource "genesyscloud_architect_datatable" "RJV_Routing_Scheduling" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV_Routing_Scheduling"
  properties {
    name  = "key"
    title = "ScheduleKey"
    type  = "string"
  }
  properties {
    name  = "ScheduleGroup"
    title = "ScheduleGroup"
    type  = "string"
  }
  properties {
    name  = "Rap_Entry"
    title = "Rap_Entry"
    type  = "string"
  }
  properties {
    title = "EmergencyGroup"
    type  = "string"
    name  = "EmergencyGroup"
  }
  properties {
    name  = "NextDestination"
    title = "NextDestination"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "DestinationClosed"
    title = "DestinationClosed"
  }
  properties {
    name  = "DestinationHoliday"
    title = "DestinationHoliday"
    type  = "string"
  }
  properties {
    type  = "string"
    name  = "DestinationEmergency"
    title = "DestinationEmergency"
  }
}

