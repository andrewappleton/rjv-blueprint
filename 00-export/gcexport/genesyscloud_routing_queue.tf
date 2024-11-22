resource "genesyscloud_routing_queue" "RJV_Menhir_Email" {
  auto_answer_only = false
  outbound_email_address {
    domain_id = "${genesyscloud_routing_email_domain.RJV_mypurecloud_ie.id}"
    route_id  = "${genesyscloud_routing_email_route.testRJV_mypurecloud_ie.id}"
  }
  suppress_in_queue_call_recording = true
  acw_timeout_ms                   = 10000
  enable_transcription             = false
  members {
    ring_num = 1
    user_id  = "${genesyscloud_user.robert_veenendaal_genesys_com.id}"
  }
  acw_wrapup_prompt        = "MANDATORY_FORCED_TIMEOUT"
  enable_manual_assignment = false
  media_settings_email {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  name = "RJV_Menhir_Email"
  media_settings_callback {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  scoring_method          = "TimestampAndPriority"
  skill_evaluation_method = "ALL"
  division_id             = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  wrapup_codes            = ["${genesyscloud_routing_wrapupcode.RJV_Menhir_Order.id}", "${genesyscloud_routing_wrapupcode.RJV_Menhir_Complaint.id}"]
  enable_audio_monitoring = false
  media_settings_call {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  media_settings_chat {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
}

resource "genesyscloud_routing_queue" "RJV_Menhir_Voice" {
  media_settings_callback {
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  suppress_in_queue_call_recording = true
  auto_answer_only                 = false
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
  }
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  members {
    ring_num = 1
    user_id  = "${genesyscloud_user.robert_veenendaal_genesys_com.id}"
  }
  acw_wrapup_prompt       = "OPTIONAL"
  enable_audio_monitoring = false
  skill_evaluation_method = "ALL"
  media_settings_chat {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  scoring_method           = "TimestampAndPriority"
  enable_manual_assignment = false
  enable_transcription     = true
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  name = "RJV_Menhir_Voice"
  outbound_email_address {
    domain_id = "${genesyscloud_routing_email_domain.RJV_mypurecloud_ie.id}"
    route_id  = "${genesyscloud_routing_email_route.testRJV_mypurecloud_ie.id}"
  }
}

