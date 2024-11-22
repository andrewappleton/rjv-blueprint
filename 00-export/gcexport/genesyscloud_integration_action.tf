resource "genesyscloud_integration_action" "RJV_Get_onQueue_Agent_by_QueueId" {
  config_request {
    request_template     = "{\"filter\": \n {\"type\": \"or\", \n \"predicates\": \n [{\"type\": \"dimension\",\n\"dimension\": \"queueId\",\n\"operator\": \"matches\",\n\"value\": \"$${input.QueueID}\"}]},\n\"metrics\": [\n\"oOnQueueUsers\",\n\"oUserPresences\"]}"
    request_type         = "POST"
    request_url_template = "/api/v2/analytics/queues/observations/query"
  }
  config_response {
    success_template = "{\"onQueueIdle\": \"$${successTemplateUtils.firstFromArray($${onQueueIdle})}\", \"onQueueInteracting\": \"$${successTemplateUtils.firstFromArray($${onQueueInteracting})}\",\"onQueueNotResponding\": \"$${successTemplateUtils.firstFromArray($${onQueueNotResponding})}\",\"onQueueCommunicating\": \"$${successTemplateUtils.firstFromArray($${onQueueCommunicating})}\",\"onQueueUserCount\": \"$${successTemplateUtils.firstFromArray($${onQueueUserCount})}\"}"
    translation_map = {
      onQueueCommunicating = "$..data[?(@.metric == 'oOnQueueUsers' && @.qualifier == 'COMMUNICATING')].stats.count"
      onQueueIdle          = "$..data[?(@.metric == 'oOnQueueUsers' && @.qualifier == 'IDLE')].stats.count"
      onQueueInteracting   = "$..data[?(@.metric == 'oOnQueueUsers' && @.qualifier == 'INTERACTING')].stats.count"
      onQueueNotResponding = "$..data[?(@.metric == 'oOnQueueUsers' && @.qualifier == 'NOT_RESPONDING')].stats.count"
      onQueueUserCount     = "$..data[?(@.metric == 'oUserPresences' && @.qualifier == 'e08eaf1b-ee47-4fa9-a231-1200e284798f')].stats.count"
    }
  }
  contract_input  = jsonencode({
		"$schema": "http://json-schema.org/draft-04/schema#",
		"additionalProperties": true,
		"properties": {
				"QueueID": {
						"description": "Specify the QueueID (use Get Queue ID by Name action)",
						"type": "string"
				}
		},
		"required": [
				"QueueID"
		],
		"type": "object"
	})
  integration_id  = "${genesyscloud_integration.RJV__Genesys_Cloud_Data_Actions.id}"
  name            = "RJV Get onQueue Agent by QueueId"
  category        = "RJV  Genesys Cloud Data Actions"
  secure          = false
  contract_output = jsonencode({
		"$schema": "http://json-schema.org/draft-04/schema#",
		"additionalProperties": true,
		"properties": {
				"onQueueCommunicating": {
						"description": "Number of communicating on-queue agents",
						"type": "string"
				},
				"onQueueIdle": {
						"description": "Number of idle on-queue agents",
						"type": "string"
				},
				"onQueueInteracting": {
						"description": "Number of interacting on-queue agents",
						"type": "string"
				},
				"onQueueNotResponding": {
						"description": "Number of not responding on-queue agents",
						"type": "string"
				},
				"onQueueUserCount": {
						"description": "Number of on-queue agents",
						"type": "string"
				}
		},
		"type": "object"
	})
}

resource "genesyscloud_integration_action" "RJV_Get_Last_Agent_Handled_a_Voice_Interaction_by_Phone_Number" {
  integration_id = "${genesyscloud_integration.RJV__Genesys_Cloud_Data_Actions.id}"
  name           = "RJV Get Last Agent Handled a Voice Interaction by Phone Number"
  secure         = false
  category       = "RJV Genesys Cloud Data Actions"
  config_request {
    request_template     = "{\n\t\"interval\": \"$${input.Interval}\",\n\t\"order\": \"desc\",\n\t\"orderBy\": \"conversationStart\",\n\t\"segmentFilters\":[\n\t\t{\n\t\t\t\t\t\"type\":\"and\",\n\t\t\t\t\t\"predicates\":[\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\":\"mediaType\",\n\t\t\t\t\t\t\t\"value\":\"VOICE\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\": \"ANI\",\n\t\t\t\t\t\t\t\"value\": \"$${input.CustomerPhoneNumber}\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"dimension\": \"purpose\",\n\t\t\t\t\t\t\t\"value\": \"customer\"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\t}\n\t\t\t],\n \"conversationFilters\": [\n  {\n   \"type\": \"and\",\n   \"predicates\": [\n    {\n     \"type\": \"metric\",\n     \"metric\": \"tTalk\",\n     \"range\": {\n      \"gte\": 0\n     }\n    }\n   ]\n  }\n ]\n}"
    request_type         = "POST"
    request_url_template = "/api/v2/analytics/conversations/details/query"
    headers = {
      Content-Type = "application/json"
    }
  }
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
  contract_input  = jsonencode({
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
}

