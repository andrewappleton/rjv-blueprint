resource "genesyscloud_integration_action" "ref_get_last_agent_handled_a_voice_interaction_by_phone_number" {
  config_response {
    success_template = "{\n\t\"userId\": $${userId},\n \n\t\"conversationId\": $${conversationId}\n}"
    translation_map = {
      conversationId = "$.conversations[?('agent' in @.participants[*].purpose)].conversationId"
      userId         = "$.conversations[*].participants[?(@.purpose == 'agent')].userId"
    }
    translation_map_defaults = {
      conversationId = "[\"Not Found\"]"
      userId         = "[\"Not Found\"]"
    }
  }
  contract_output = jsonencode({
		"additionalProperties": true,
		"properties": {
				"conversationId": {
						"description": "String array of conversationIds",
						"items": {
								"type": "string"
						},
						"type": "array"
				},
				"userId": {
						"description": "String array of userIds",
						"items": {
								"type": "string"
						},
						"type": "array"
				}
		},
		"title": "List of last userIds / conversationIds ordered conversationStart desc",
		"type": "object"
	})
  integration_id  = genesyscloud_integration.ref_integration.id
  name            = "${var.RESOURCE_PREFIX} Last Agent Handled a Voice Interaction by Phone Number"
  category        = "${var.RESOURCE_PREFIX} Genesys Cloud Data Actions"
  config_request {
    request_template     = "{\n\t\"interval\": \"$${input.Interval}\",\n\t\"order\": \"desc\",\n\t\"orderBy\": \"conversationStart\",\n\t\"segmentFilters\":[\n\t\t{\n\t\t\t\t\t\"type\":\"and\",\n\t\t\t\t\t\"predicates\":[\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\":\"mediaType\",\n\t\t\t\t\t\t\t\"value\":\"VOICE\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\": \"ANI\",\n\t\t\t\t\t\t\t\"value\": \"$${input.CustomerPhoneNumber}\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\": \"purpose\",\n\t\t\t\t\t\t\t\"value\": \"customer\"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\t}\n\t\t\t],\n \"conversationFilters\": [\n  {\n   \"type\": \"and\",\n   \"predicates\": [\n    {\n     \"type\": \"metric\",\n     \"metric\": \"tTalk\",\n     \"range\": {\n      \"gte\": 0\n     }\n    }\n   ]\n  }\n ]\n}"
    request_type         = "POST"
    request_url_template = "/api/v2/analytics/conversations/details/query"
    headers = {
      Content-Type = "application/json"
    }
  }
  secure         = false
  contract_input = jsonencode({
		"$schema": "http://json-schema.org/draft-04/schema#",
		"additionalProperties": true,
		"description": "Fields needed in the body of the POST to create a query.",
		"properties": {
				"CustomerPhoneNumber": {
						"description": "Phone number in E.164 format",
						"type": "string"
				},
				"Interval": {
						"description": "Specifies the date and time range of data being queried. Results will include conversations that both started on a day touched by the interval AND either started, ended, or any activity during the interval. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss",
						"type": "string"
				}
		},
		"required": [
				"Interval",
				"CustomerPhoneNumber"
		],
		"title": "Query for last  inbound/outbound voice conversation related to a phone number.",
		"type": "object"
	})
}

