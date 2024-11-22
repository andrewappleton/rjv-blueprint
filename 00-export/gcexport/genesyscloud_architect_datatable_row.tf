resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackGreeting" {
  key_value       = "CallbackGreeting"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackGreeting",
		"TTS_de-de": "Bitte erzählen Sie uns von Ihrem Anruf. Wenn Sie fertig sind, können Sie auflegen.",
		"TTS_en-gb": "Please tell us about you called us. When you are finished, you can hang up.",
		"TTS_en-us": "Please tell us about you called us. When you are finished, you can hang up.",
		"TTS_fr-fr": "S'il vous plaît, parlez-nous de votre appel. Lorsque vous avez terminé, vous pouvez raccrocher.",
		"TTS_nl-nl": "Vertel ons alstublieft waarom u ons heeft gebeld. Als u klaar bent, kunt u ophangen."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More20Minutes" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More20Minutes"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More20Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 20 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 20 minutes",
		"TTS_en-us": "Your expected wait time is more then 20 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 20 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 20 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingMenu_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingMenu_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten dieses Gespräch aufzeichnen. Wenn Sie damit einverstanden sind, drücken Sie bitte die 1",
		"TTS_en-gb": "We would like to record this conversation. If you agree, please press 1",
		"TTS_en-us": "We would like to record this conversation. If you agree, please press 1",
		"TTS_fr-fr": "Nous souhaiterions enregistrer cette conversation. Si vous êtes d'accord, veuillez appuyer sur 1",
		"TTS_nl-nl": "Wij willen dit gesprek opnemen. Als u akkoord gaat, druk dan op 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_NoneAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_NoneAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Sie stehen als Erster in der Warteschlange",
		"TTS_en-gb": "You are first in queue",
		"TTS_en-us": "You are first in queue",
		"TTS_fr-fr": "Vous êtes le premier dans la file d'attente",
		"TTS_nl-nl": "Je bent de eerste in de rij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_OneAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_OneAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Sie sind der Zweite in der Warteschlange",
		"TTS_en-gb": "You are the second in queue",
		"TTS_en-us": "You are the second in queue",
		"TTS_fr-fr": "Vous êtes le deuxième dans la file d'attente",
		"TTS_nl-nl": "Er is 1 wachtende voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyMenu_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "SurveyMenu_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten Sie bitten, im Anschluss an das Interview einen kurzen Fragebogen zu beantworten. Wenn Sie teilnehmen möchten, drücken Sie die 1",
		"TTS_en-gb": "We would like to ask you to complete a short questionnaire after the interview. If you would like to participate, press 1",
		"TTS_en-us": "We would like to ask you to complete a short questionnaire after the interview. If you would like to participate, press 1",
		"TTS_fr-fr": "Nous aimerions vous demander de répondre à un court questionnaire après l’entretien. Si vous souhaitez participer, appuyez sur 1",
		"TTS_nl-nl": "Wij willen u vragen na het gesprek een korte vragenlijst te beantwoorden. Als u hieraan wilt meewerken, druk 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Destination_Dest_CR_Sales" {
  properties_json = jsonencode({
		"CallbackEwtThreshold": 10,
		"In-Queue": "RJV Menhir In-Queue New",
		"LAR": false,
		"LAR_Threshold": 0,
		"LoadBalanceDestination": "",
		"LoadBalancePercentage": 100,
		"OfferCallback": true,
		"Priority": 0,
		"QueueName": "RJV_Menhir_Voice2",
		"Rap_Dest": "Dest_CR_Sales",
		"Rec_Consent": false,
		"Recording": true,
		"Recording_OptOut": false,
		"Script": "Menhir",
		"ScriptDisplayText": "Sales",
		"ScriptDisplayText2": "",
		"Skill_1": "",
		"Skill_2": "",
		"Survey": false,
		"SurveyFlowName": "RJV_MenhirVoiceSurvey",
		"Survey_Consent": false,
		"Survey_OptOut": false,
		"WhisperText": "CR_Sales"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Destination.id}"
  key_value       = "Dest_CR_Sales"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_SevenAhead_RJV" {
  key_value       = "PPIQ_SevenAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 7 Anrufer.",
		"TTS_en-gb": "There are 7 callers ahead of you in the queue.",
		"TTS_en-us": "There are 7 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 7 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 7 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More20Minutes_RJV" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More20Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 20 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 20 minutes",
		"TTS_en-us": "Your expected wait time is more then 20 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 20 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 20 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More20Minutes_RJV"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Scheduling_ScheduleGroup_CR_RJV" {
  properties_json = jsonencode({
		"DestinationClosed": "Prompt_CR_Closed",
		"DestinationEmergency": "Prompt_CR_Closed",
		"DestinationHoliday": "Prompt_CR_Closed",
		"EmergencyGroup": "RJV_EmergencyGroup_CR",
		"NextDestination": "Menu_CR_Main",
		"Rap_Entry": "ScheduleGroup_CR_RJV",
		"ScheduleGroup": "RJV_ScheduleGroup_CR"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Scheduling.id}"
  key_value       = "ScheduleGroup_CR_RJV"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_Closed_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_Closed_RJV"
  properties_json = jsonencode({
		"NextDestination": "Disconnect_CR",
		"PromptName": "",
		"Rap_Entry": "Prompt_CR_Closed",
		"TTS_de-de": "Aktuell können wir Ihnen nicht weiterhelfen. Sie erreichen uns werktags zwischen 8 und 18 Uhr.",
		"TTS_en-gb": "We are currently unable to assist you. You can reach us on working days between 8 a.m. and 6 p.m.",
		"TTS_en-us": "We are currently unable to assist you. You can reach us on working days between 8 a.m. and 6 p.m.",
		"TTS_fr-fr": "Nous ne sommes actuellement pas en mesure de vous aider. Vous pouvez nous joindre les jours ouvrables entre 8h et 18h.",
		"TTS_nl-nl": "Op dit moment zijn wij niet in staat om u te woord te staan. U kunt ons bereiken op werkdagen, tussen 8 uur smorgens en 6 uur in de avond."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackOnANI_RJV" {
  key_value       = "CallbackOnANI_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackOnANI",
		"TTS_de-de": "Möchten Sie, dass wir Sie unter der Nummer zurückrufen, mit der Sie anrufen? Drücken Sie die 1 für Ja oder die 2, um eine andere Nummer einzugeben.",
		"TTS_en-gb": "Do you want us to call you back on the number you are calling with? Press 1 for yes, or press 2 to enter another number.",
		"TTS_en-us": "Do you want us to call you back on the number you are calling with? Press 1 for yes, or press 2 to enter another number.",
		"TTS_fr-fr": "Souhaitez-vous que nous vous rappelions sur le numéro avec lequel vous appelez ? Appuyez sur 1 pour oui ou appuyez sur 2 pour saisir un autre numéro.",
		"TTS_nl-nl": "Wilt u dat wij u terugbellen op het nummer waarmee u belt? Druk op 1 voor ja, of druk op 2 om een ander nummer in te voeren."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackOfferMenu" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallbackOfferMenu"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Möchten Sie zurückgerufen werden? Drücken Sie die 1 für „Ja“, oder die 2, wenn Sie auf einen Mitarbeiter warten möchten.",
		"TTS_en-gb": "Do you want us to call you back? Press 1 for yes, press 2 if you want to wait for an agent.",
		"TTS_en-us": "Do you want us to call you back? Press 1 for yes, press 2 if you want to wait for an agent.",
		"TTS_fr-fr": "Voulez-vous qu'on vous rappelle ? Appuyez sur 1 pour oui, appuyez sur 2 si vous souhaitez attendre un agent.",
		"TTS_nl-nl": "Wilt u dat wij u terugbellen? Druk op 1 voor ja, druk op 2 als u op een agent wilt wachten."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_EntryNotValid" {
  key_value       = "Menu_EntryNotValid"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Das war keine gültige Auswahl. Bitte versuchen Sie es erneut.",
		"TTS_en-gb": "That was not a valid choice, please try again.",
		"TTS_en-us": "That was not a valid choice, please try again.",
		"TTS_fr-fr": "Ce n'était pas un choix valable, veuillez réessayer.",
		"TTS_nl-nl": "Dat was geen geldige keuze, probeer het nog een keer."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Lang_CR_Menu" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_Lang_CR_Menu"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "Prompt_Lang_CR_Menu",
		"Rap_Entry": "Prompt_Lang_CR_Menu",
		"TTS_de-de": "",
		"TTS_en-gb": "",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less2Minutes" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less2Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 2 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 2 minutes",
		"TTS_en-us": "Your expected wait time is less then 2 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 2 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 2 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less2Minutes"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_LargeQueue" {
  properties_json = jsonencode({
		"NextDestination": "Dest_CR_Sales",
		"PromptName": "",
		"Rap_Entry": "Prompt_LargeQueue",
		"TTS_de-de": "Momentan herrscht großer Andrang, die Wartezeit kann länger sein, als Sie es von uns gewohnt sind.",
		"TTS_en-gb": "It is very busy at the moment, the waiting time may be longer than you are used to from us.",
		"TTS_en-us": "It is very busy at the moment, the waiting time may be longer than you are used to from us.",
		"TTS_fr-fr": "Il y a beaucoup de monde en ce moment, le temps d'attente peut être plus long que ce à quoi vous êtes habitué de notre part.",
		"TTS_nl-nl": "Het is op het moment erg druk, de wachttijd kan langer zijn dan dat u van ons gewend bent."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_LargeQueue"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_EntryNotValid_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Menu_EntryNotValid_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Das war keine gültige Auswahl. Bitte versuchen Sie es erneut.",
		"TTS_en-gb": "That was not a valid choice, please try again.",
		"TTS_en-us": "That was not a valid choice, please try again.",
		"TTS_fr-fr": "Ce n'était pas un choix valable, veuillez réessayer.",
		"TTS_nl-nl": "Dat was geen geldige keuze, probeer het nog een keer."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_TwoAhead" {
  key_value       = "PPIQ_TwoAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind zwei Anrufer.",
		"TTS_en-gb": "There are 2 callers ahead of you in the queue.",
		"TTS_en-us": "There are 2 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 2 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 2 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueWaitPrompt" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueWaitPrompt"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueWaitPrompt",
		"TTS_de-de": "Alle Mitarbeiter sind im Gespräch, wir werden Ihnen so schnell wie möglich helfen",
		"TTS_en-gb": "All employees are in discussions, we will help you as quickly as possible",
		"TTS_en-us": "All employees are in discussions, we will help you as quickly as possible",
		"TTS_fr-fr": "Tous les collaborateurs sont en discussions, nous vous aiderons le plus rapidement possible",
		"TTS_nl-nl": "Alle medewerkers zijn in gesprek, wij helpen u zo snel mogelijk"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_SixAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_SixAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 6 Anrufer.",
		"TTS_en-gb": "There are 6 callers ahead of you in the queue.",
		"TTS_en-us": "There are 6 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 6 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 6 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Menu_CR_Main" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_Menu_CR_Main"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "Prompt_Menu_CR_Main",
		"TTS_de-de": "Drücken Sie 1 für den Vertrieb, drücken Sie 2 für Fragen zu unseren Produkten. ",
		"TTS_en-gb": "Press 1 for Sales, press 2 for questions about our products.",
		"TTS_en-us": "Press 1 for Sales, press 2 for questions about our products. ",
		"TTS_fr-fr": "Appuyez sur 1 pour les ventes, appuyez sur 2 pour des questions sur nos produits. ",
		"TTS_nl-nl": "Druk 1 voor Verkoop, druk 2 voor vragen over onze producten. "
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less3Minutes_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less3Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less3Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 3 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 3 minutes",
		"TTS_en-us": "Your expected wait time is less then 3 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 3 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 3 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_SevenAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_SevenAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 7 Anrufer.",
		"TTS_en-gb": "There are 7 callers ahead of you in the queue.",
		"TTS_en-us": "There are 7 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 7 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 7 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_MoreEightAhead" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Es sind mehr als 8 Anrufer vor Ihnen in der Warteschleife.",
		"TTS_en-gb": "There are more than 8 callers ahead of you in the queue.",
		"TTS_en-us": "There are more than 8 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a plus de 8 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn meer dan 8 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_MoreEightAhead"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_OneAhead" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Sie sind der Zweite in der Warteschlange",
		"TTS_en-gb": "You are the second in queue",
		"TTS_en-us": "You are the second in queue",
		"TTS_fr-fr": "Vous êtes le deuxième dans la file d'attente",
		"TTS_nl-nl": "Er is 1 wachtende voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_OneAhead"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_FourAhead_RJV" {
  key_value       = "PPIQ_FourAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 4 Anrufer.",
		"TTS_en-gb": "There are 4 callers ahead of you in the queue.",
		"TTS_en-us": "There are 4 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 4 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 4 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_NoneAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_NoneAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Sie stehen als Erster in der Warteschlange",
		"TTS_en-gb": "You are first in queue",
		"TTS_en-us": "You are first in queue",
		"TTS_fr-fr": "Vous êtes le premier dans la file d'attente",
		"TTS_nl-nl": "Je bent de eerste in de rij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_FiveAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_FiveAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 5 Anrufer.",
		"TTS_en-gb": "There are 5 callers ahead of you in the queue.",
		"TTS_en-us": "There are 5 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 5 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 5 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_FiveAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_FiveAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 5 Anrufer.",
		"TTS_en-gb": "There are 5 callers ahead of you in the queue.",
		"TTS_en-us": "There are 5 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 5 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 5 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyMenuOptOut" {
  key_value       = "SurveyMenuOptOut"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten Sie bitten, im Anschluss an das Interview einen kurzen Fragebogen zu beantworten. Wenn Sie nicht kooperieren möchten, drücken Sie 1",
		"TTS_en-gb": "We would like to ask you to complete a short questionnaire after the interview. If you do not wish to participate, press 1",
		"TTS_en-us": "We would like to ask you to complete a short questionnaire after the interview. If you do not wish to participate, press 1",
		"TTS_fr-fr": "Nous aimerions vous demander de répondre à un court questionnaire après l’entretien. Si vous ne souhaitez pas coopérer, appuyez sur 1",
		"TTS_nl-nl": "Wij willen u vragen na het gesprek een korte vragenlijst te beantwoorden. Als u hieraan niet wilt meewerken, druk 1"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More10Minutes_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More10Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More10Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 10 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 10 minutes",
		"TTS_en-us": "Your expected wait time is more then 10 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 10 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 10 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_FourAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_FourAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 4 Anrufer.",
		"TTS_en-gb": "There are 4 callers ahead of you in the queue.",
		"TTS_en-us": "There are 4 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 4 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 4 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_Welcome" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_Welcome"
  properties_json = jsonencode({
		"NextDestination": "Lang_CR_Menu",
		"PromptName": "",
		"Rap_Entry": "Prompt_CR_Welcome",
		"TTS_de-de": "Willkommen bei C and R Solutions",
		"TTS_en-gb": "Welcome to C and R Solutions",
		"TTS_en-us": "Welcome to C and R Solutions",
		"TTS_fr-fr": "Bienvenue chez C en R Oplossingen",
		"TTS_nl-nl": "Welkom bij C en R Oplossingen"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Specialties_Disconnect_CR" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Specialties.id}"
  key_value       = "Disconnect_CR"
  properties_json = jsonencode({
		"Dest_Default": "",
		"NextDestination": "",
		"NoAgentsOnQueue_Destination": "",
		"QueueNameCheckOnQueue": "",
		"Rap_SpecDest": "Disconnect_CR",
		"Transfer_ExternalNumber": "",
		"Transfer_FlowName": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyMenuOptOut_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "SurveyMenuOptOut_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten Sie bitten, im Anschluss an das Interview einen kurzen Fragebogen zu beantworten. Wenn Sie nicht kooperieren möchten, drücken Sie 1",
		"TTS_en-gb": "We would like to ask you to complete a short questionnaire after the interview. If you do not wish to participate, press 1",
		"TTS_en-us": "We would like to ask you to complete a short questionnaire after the interview. If you do not wish to participate, press 1",
		"TTS_fr-fr": "Nous aimerions vous demander de répondre à un court questionnaire après l’entretien. Si vous ne souhaitez pas coopérer, appuyez sur 1",
		"TTS_nl-nl": "Wij willen u vragen na het gesprek een korte vragenlijst te beantwoorden. Als u hieraan niet wilt meewerken, druk 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_ThreeAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_ThreeAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 3 Anrufer.",
		"TTS_en-gb": "There are 3 callers ahead of you in the queue.",
		"TTS_en-us": "There are 3 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 3 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 3 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_MoreEightAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_MoreEightAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Es sind mehr als 8 Anrufer vor Ihnen in der Warteschleife.",
		"TTS_en-gb": "There are more than 8 callers ahead of you in the queue.",
		"TTS_en-us": "There are more than 8 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a plus de 8 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn meer dan 8 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less2Minutes_RJV" {
  key_value       = "EWT_Less2Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less2Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 2 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 2 minutes",
		"TTS_en-us": "Your expected wait time is less then 2 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 2 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 2 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt2_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt2_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt2",
		"TTS_de-de": "Dies ist die zweite Ansage in der Warteschlange",
		"TTS_en-gb": "This is the second prompt in the queue",
		"TTS_en-us": "This is the second prompt in the queue",
		"TTS_fr-fr": "Ceci est la deuxième invite dans la file d'attente",
		"TTS_nl-nl": "Dit is de tweede prompt in de wachtrij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less5Minutes" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less5Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 5 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 5 minutes",
		"TTS_en-us": "Your expected wait time is less then 5 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 5 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 5 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less5Minutes"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt",
		"TTS_de-de": "Dies ist die erste Ansage in der Warteschlange",
		"TTS_en-gb": "This is the first prompt in the queue",
		"TTS_en-us": "This is the first prompt in the queue",
		"TTS_fr-fr": "Ceci est la première invite de la file d'attente",
		"TTS_nl-nl": "Dit is de eerste prompt in de wachtrij"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_ThreeAhead" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_ThreeAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 3 Anrufer.",
		"TTS_en-gb": "There are 3 callers ahead of you in the queue.",
		"TTS_en-us": "There are 3 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 3 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 3 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Destination_Dest_CR_ProductQuestions" {
  properties_json = jsonencode({
		"CallbackEwtThreshold": 0,
		"In-Queue": "RJV Menhir In-Queue New",
		"LAR": false,
		"LAR_Threshold": 0,
		"LoadBalanceDestination": "Dest_CR_Sales",
		"LoadBalancePercentage": 100,
		"OfferCallback": false,
		"Priority": 0,
		"QueueName": "RJV_Menhir_Voice",
		"Rap_Dest": "Dest_CR_ProductQuestions",
		"Rec_Consent": false,
		"Recording": false,
		"Recording_OptOut": false,
		"Script": "Menhir",
		"ScriptDisplayText": "ProductQuestions",
		"ScriptDisplayText2": "",
		"Skill_1": "",
		"Skill_2": "",
		"Survey": true,
		"SurveyFlowName": "RJV_MenhirVoiceSurvey",
		"Survey_Consent": true,
		"Survey_OptOut": false,
		"WhisperText": "CR_ProductQuestions"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Destination.id}"
  key_value       = "Dest_CR_ProductQuestions"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Closed" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_Closed"
  properties_json = jsonencode({
		"NextDestination": "Disconnect",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "",
		"TTS_en-gb": "Sorry, we are closed",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_DNIS__31294799036" {
  key_value       = "+31294799036"
  properties_json = jsonencode({
		"DestinationNotActive": "",
		"FirstDestination": "Prompt_CR_Welcome",
		"LanguageDefault": "en-gb",
		"LanguageSkillDefault": "English_Voice",
		"NumberActive": true,
		"PriorityDNIS": 0,
		"Rap_Entry": "C\u0026R_MainNumber",
		"SkillLine": "",
		"Voice": "RJV"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_DNIS.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_MaxTries_RJV" {
  key_value       = "Menu_MaxTries_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir haben keine gültige Auswahl erhalten, bitte bleiben Sie am Apparat.",
		"TTS_en-gb": "We have not received a valid choice, please hold the line.",
		"TTS_en-us": "We have not received a valid choice, please hold the line.",
		"TTS_fr-fr": "Nous n'avons pas reçu de choix valide, veuillez garder la ligne.",
		"TTS_nl-nl": "We hebben geen geldige keuze ontvangen, blijf aan de lijn."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackOnANI" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallbackOnANI"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackOnANI",
		"TTS_de-de": "Möchten Sie, dass wir Sie unter der Nummer zurückrufen, mit der Sie anrufen? Drücken Sie die 1 für Ja oder die 2, um eine andere Nummer einzugeben.",
		"TTS_en-gb": "Do you want us to call you back on the number you are calling with? Press 1 for yes, or press 2 to enter another number.",
		"TTS_en-us": "Do you want us to call you back on the number you are calling with? Press 1 for yes, or press 2 to enter another number.",
		"TTS_fr-fr": "Souhaitez-vous que nous vous rappelions sur le numéro avec lequel vous appelez ? Appuyez sur 1 pour oui ou appuyez sur 2 pour saisir un autre numéro.",
		"TTS_nl-nl": "Wilt u dat wij u terugbellen op het nummer waarmee u belt? Druk op 1 voor ja, of druk op 2 om een ander nummer in te voeren."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_LargeQueue_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_LargeQueue_RJV"
  properties_json = jsonencode({
		"NextDestination": "Dest_CR_Sales",
		"PromptName": "",
		"Rap_Entry": "Prompt_LargeQueue",
		"TTS_de-de": "Momentan herrscht großer Andrang, die Wartezeit kann länger sein, als Sie es von uns gewohnt sind.",
		"TTS_en-gb": "It is very busy at the moment, the waiting time may be longer than you are used to from us.",
		"TTS_en-us": "It is very busy at the moment, the waiting time may be longer than you are used to from us.",
		"TTS_fr-fr": "Il y a beaucoup de monde en ce moment, le temps d'attente peut être plus long que ce à quoi vous êtes habitué de notre part.",
		"TTS_nl-nl": "Het is op het moment erg druk, de wachttijd kan langer zijn dan dat u van ons gewend bent."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less10Minutes_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less10Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less10Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 10 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 10 minutes",
		"TTS_en-us": "Your expected wait time is less then 10 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 10 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 10 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingMenuOptOut" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingMenuOptOut"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten dieses Gespräch aufzeichnen. Wenn Sie damit nicht einverstanden sind, drücken Sie bitte die 1",
		"TTS_en-gb": "We would like to record this conversation. If you do not agree, please press 1",
		"TTS_en-us": "We would like to record this conversation. If you do not agree, please press 1",
		"TTS_fr-fr": "Nous souhaitons enregistrer cette conversation. Si vous n'êtes pas d'accord, veuillez appuyer sur 1",
		"TTS_nl-nl": "Wij willen dit gesprek opnemen. Als u het er niet mee eens bent, druk dan op 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PromptEndOfLoop_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PromptEndOfLoop_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "PromptEndOfLoop",
		"TTS_de-de": "",
		"TTS_en-gb": "We regret we could not transfer you to an agent on time. Please register a callback and we will get back to you as soon as possible.",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingInfo" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingInfo"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir könnten dieses Gespräch zu Schulungszwecken aufzeichnen",
		"TTS_en-gb": "We might record this conversation for training purposes",
		"TTS_en-us": "We might record this conversation for training purposes",
		"TTS_fr-fr": "Nous pourrions enregistrer cette conversation à des fins de formation",
		"TTS_nl-nl": "We kunnen dit gesprek opnemen voor trainingsdoeleinden"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Specialties_Disconnect" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Specialties.id}"
  key_value       = "Disconnect"
  properties_json = jsonencode({
		"Dest_Default": "",
		"NextDestination": "",
		"NoAgentsOnQueue_Destination": "",
		"QueueNameCheckOnQueue": "",
		"Rap_SpecDest": "",
		"Transfer_ExternalNumber": "",
		"Transfer_FlowName": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_SixAhead_RJV" {
  key_value       = "PPIQ_SixAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 6 Anrufer.",
		"TTS_en-gb": "There are 6 callers ahead of you in the queue.",
		"TTS_en-us": "There are 6 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 6 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 6 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_TwoAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_TwoAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind zwei Anrufer.",
		"TTS_en-gb": "There are 2 callers ahead of you in the queue.",
		"TTS_en-us": "There are 2 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 2 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 2 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less10Minutes" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less10Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 10 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 10 minutes",
		"TTS_en-us": "Your expected wait time is less then 10 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 10 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 10 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less10Minutes"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingMenu" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingMenu"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten dieses Gespräch aufzeichnen. Wenn Sie damit einverstanden sind, drücken Sie bitte die 1",
		"TTS_en-gb": "We would like to record this conversation. If you agree, please press 1",
		"TTS_en-us": "We would like to record this conversation. If you agree, please press 1",
		"TTS_fr-fr": "Nous souhaiterions enregistrer cette conversation. Si vous êtes d'accord, veuillez appuyer sur 1",
		"TTS_nl-nl": "Wij willen dit gesprek opnemen. Als u akkoord gaat, druk dan op 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallBackNewNumber_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallBackNewNumber_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallBackNewNumber",
		"TTS_de-de": "Geben Sie die Telefonnummer ein, unter der wir Sie anrufen sollen, gefolgt von der Raute",
		"TTS_en-gb": "Enter the phone number you want us to call you on, followed by hash",
		"TTS_en-us": "Enter the phone number you want us to call you on, followed by hash",
		"TTS_fr-fr": "Entrez le numéro de téléphone sur lequel vous souhaitez que nous vous appelions, suivi du dièse",
		"TTS_nl-nl": "Voer het telefoonnummer in waarop u wilt dat wij u bellen, gevolgd door een hekje"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More30Minutes" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More30Minutes"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More30Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 30 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 30 minutes",
		"TTS_en-us": "Your expected wait time is more then 30 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 30 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 30 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_EightAhead" {
  key_value       = "PPIQ_EightAhead"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 8 Anrufer.",
		"TTS_en-gb": "There are 8 callers ahead of you in the queue.",
		"TTS_en-us": "There are 8 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 8 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 8 wachtenden voor je"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More30Minutes_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More30Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More30Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 30 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 30 minutes",
		"TTS_en-us": "Your expected wait time is more then 30 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 30 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 30 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueWaitPrompt_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueWaitPrompt_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueWaitPrompt",
		"TTS_de-de": "Alle Mitarbeiter sind im Gespräch, wir werden Ihnen so schnell wie möglich helfen",
		"TTS_en-gb": "All employees are in discussions, we will help you as quickly as possible",
		"TTS_en-us": "All employees are in discussions, we will help you as quickly as possible",
		"TTS_fr-fr": "Tous les collaborateurs sont en discussions, nous vous aiderons le plus rapidement possible",
		"TTS_nl-nl": "Alle medewerkers zijn in gesprek, wij helpen u zo snel mogelijk"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackGreeting_RJV" {
  key_value       = "CallbackGreeting_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackGreeting",
		"TTS_de-de": "Bitte erzählen Sie uns von Ihrem Anruf. Wenn Sie fertig sind, können Sie auflegen.",
		"TTS_en-gb": "Please tell us about you called us. When you are finished, you can hang up.",
		"TTS_en-us": "Please tell us about you called us. When you are finished, you can hang up.",
		"TTS_fr-fr": "S'il vous plaît, parlez-nous de votre appel. Lorsque vous avez terminé, vous pouvez raccrocher.",
		"TTS_nl-nl": "Vertel ons alstublieft waarom u ons heeft gebeld. Als u klaar bent, kunt u ophangen."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt2" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt2"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt2",
		"TTS_de-de": "Dies ist die zweite Ansage in der Warteschlange",
		"TTS_en-gb": "This is the second prompt in the queue",
		"TTS_en-us": "This is the second prompt in the queue",
		"TTS_fr-fr": "Ceci est la deuxième invite dans la file d'attente",
		"TTS_nl-nl": "Dit is de tweede prompt in de wachtrij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Lang_CR_Menu_RJV" {
  key_value       = "Prompt_Lang_CR_Menu_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "Prompt_Lang_CR_Menu",
		"Rap_Entry": "Prompt_Lang_CR_Menu",
		"TTS_de-de": "",
		"TTS_en-gb": "",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Specialties_Tran_Supplier" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Specialties.id}"
  key_value       = "Tran_Supplier"
  properties_json = jsonencode({
		"Dest_Default": "",
		"NextDestination": "",
		"NoAgentsOnQueue_Destination": "",
		"QueueNameCheckOnQueue": "",
		"Rap_SpecDest": "Tran_Supplier",
		"Transfer_ExternalNumber": "+31621220925",
		"Transfer_FlowName": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackConformation_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallbackConformation_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackConformation",
		"TTS_de-de": "Ihr Rückruf wurde registriert, die Leitung wird nun getrennt.",
		"TTS_en-gb": "Your callback has been registered, the line will now be disconnected.",
		"TTS_en-us": "Your callback has been registered, the line will now be disconnected.",
		"TTS_fr-fr": "Votre rappel a été enregistré, la ligne va désormais être déconnectée.",
		"TTS_nl-nl": "Uw terugbelverzoek is geregistreerd, de lijn wordt nu verbroken."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingInfo_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingInfo_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir könnten dieses Gespräch zu Schulungszwecken aufzeichnen",
		"TTS_en-gb": "We might record this conversation for training purposes",
		"TTS_en-us": "We might record this conversation for training purposes",
		"TTS_fr-fr": "Nous pourrions enregistrer cette conversation à des fins de formation",
		"TTS_nl-nl": "We kunnen dit gesprek opnemen voor trainingsdoeleinden"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_RecordingMenuOptOut_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "RecordingMenuOptOut_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten dieses Gespräch aufzeichnen. Wenn Sie damit nicht einverstanden sind, drücken Sie bitte die 1",
		"TTS_en-gb": "We would like to record this conversation. If you do not agree, please press 1",
		"TTS_en-us": "We would like to record this conversation. If you do not agree, please press 1",
		"TTS_fr-fr": "Nous souhaitons enregistrer cette conversation. Si vous n'êtes pas d'accord, veuillez appuyer sur 1",
		"TTS_nl-nl": "Wij willen dit gesprek opnemen. Als u het er niet mee eens bent, druk dan op 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt",
		"TTS_de-de": "Dies ist die erste Ansage in der Warteschlange",
		"TTS_en-gb": "This is the first prompt in the queue",
		"TTS_en-us": "This is the first prompt in the queue",
		"TTS_fr-fr": "Ceci est la première invite de la file d'attente",
		"TTS_nl-nl": "Dit is de eerste prompt in de wachtrij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Specialties_Flow_RJV_TransferToFlowExample" {
  key_value       = "Flow_RJV_TransferToFlowExample"
  properties_json = jsonencode({
		"Dest_Default": "",
		"NextDestination": "",
		"NoAgentsOnQueue_Destination": "",
		"QueueNameCheckOnQueue": "",
		"Rap_SpecDest": "",
		"Transfer_ExternalNumber": "",
		"Transfer_FlowName": "RJV_TransferToFlowExample"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Specialties.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_More10Minutes" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_More10Minutes"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_More10Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt mehr als 10 Minuten",
		"TTS_en-gb": "Your expected wait time is more then 10 minutes",
		"TTS_en-us": "Your expected wait time is more then 10 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est supérieur à 10 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is meer dan 10 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyInfo_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "SurveyInfo_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir bitten Sie, im Anschluss an das Gespräch einen kurzen Fragebogen zu beantworten",
		"TTS_en-gb": "We ask you to complete a short questionnaire after the interview",
		"TTS_en-us": "We ask you to complete a short questionnaire after the interview",
		"TTS_fr-fr": "Nous vous demandons de répondre à un court questionnaire après l'entretien",
		"TTS_nl-nl": "Wij vragen u om na het gesprek een korte vragenlijst te beantwoorden"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackOfferMenu_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallbackOfferMenu_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Möchten Sie zurückgerufen werden? Drücken Sie die 1 für „Ja“, oder die 2, wenn Sie auf einen Mitarbeiter warten möchten.",
		"TTS_en-gb": "Do you want us to call you back? Press 1 for yes, press 2 if you want to wait for an agent.",
		"TTS_en-us": "Do you want us to call you back? Press 1 for yes, press 2 if you want to wait for an agent.",
		"TTS_fr-fr": "Voulez-vous qu'on vous rappelle ? Appuyez sur 1 pour oui, appuyez sur 2 si vous souhaitez attendre un agent.",
		"TTS_nl-nl": "Wilt u dat wij u terugbellen? Druk op 1 voor ja, druk op 2 als u op een agent wilt wachten."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_NoEntry" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Menu_NoEntry"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "Menu_NoEntry",
		"TTS_de-de": "Wir haben keine Auswahl erhalten, bitte versuchen Sie es erneut.",
		"TTS_en-gb": "We did not receive a choice, please try again.",
		"TTS_en-us": "We did not receive a choice, please try again.",
		"TTS_fr-fr": "Nous n'avons pas reçu de choix, veuillez réessayer.",
		"TTS_nl-nl": "We hebben geen keuze ontvangen, probeer het nog een keer."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less3Minutes" {
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less3Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 3 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 3 minutes",
		"TTS_en-us": "Your expected wait time is less then 3 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 3 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 3 minuten"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less3Minutes"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_NoEntry_RJV" {
  key_value       = "Menu_NoEntry_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "Menu_NoEntry",
		"TTS_de-de": "Wir haben keine Auswahl erhalten, bitte versuchen Sie es erneut.",
		"TTS_en-gb": "We did not receive a choice, please try again.",
		"TTS_en-us": "We did not receive a choice, please try again.",
		"TTS_fr-fr": "Nous n'avons pas reçu de choix, veuillez réessayer.",
		"TTS_nl-nl": "We hebben geen keuze ontvangen, probeer het nog een keer."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyMenu" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "SurveyMenu"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir möchten Sie bitten, im Anschluss an das Interview einen kurzen Fragebogen zu beantworten. Wenn Sie teilnehmen möchten, drücken Sie die 1",
		"TTS_en-gb": "We would like to ask you to complete a short questionnaire after the interview. If you would like to participate, press 1",
		"TTS_en-us": "We would like to ask you to complete a short questionnaire after the interview. If you would like to participate, press 1",
		"TTS_fr-fr": "Nous aimerions vous demander de répondre à un court questionnaire après l’entretien. Si vous souhaitez participer, appuyez sur 1",
		"TTS_nl-nl": "Wij willen u vragen na het gesprek een korte vragenlijst te beantwoorden. Als u hieraan wilt meewerken, druk 1"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Menu_Menu_CR_Main" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Menu.id}"
  key_value       = "Menu_CR_Main"
  properties_json = jsonencode({
		"Default": "Dest_CR_ProductQuestions",
		"Option#": "Menu_CR_Main",
		"Option*": "",
		"Option0": "",
		"Option1": "Dest_CR_Sales",
		"Option2": "Dest_CR_ProductQuestions",
		"Option3": "",
		"Option4": "",
		"Option5": "",
		"Option6": "",
		"Option7": "",
		"Option8": "",
		"Option9": "",
		"PromptMenu": "Prompt_Menu_CR_Main",
		"Rap_Menu": "Menu_CR_Main",
		"Rap_Opt#": "Repeat_Menu_CR_Main",
		"Rap_Opt*": "",
		"Rap_Opt0": "",
		"Rap_Opt1": "Dest_CR_Sales",
		"Rap_Opt2": "Dest_CR_ProductQuestions",
		"Rap_Opt3": "",
		"Rap_Opt4": "",
		"Rap_Opt5": "",
		"Rap_Opt6": "",
		"Rap_Opt7": "",
		"Rap_Opt8": "",
		"Rap_Opt9": "",
		"Repeats": 2,
		"Timeout": 8
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt3_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt3_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt3",
		"TTS_de-de": "Dies ist die dritte Ansage in der Warteschlange",
		"TTS_en-gb": "This is the third prompt in the queue",
		"TTS_en-us": "This is the third prompt in the queue",
		"TTS_fr-fr": "Ceci est la troisième invite dans la file d'attente",
		"TTS_nl-nl": "Dit is de derde prompt in de wachtrij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_EWT_Less5Minutes_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "EWT_Less5Minutes_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "EWT_Less5Minutes",
		"TTS_de-de": "Ihre voraussichtliche Wartezeit beträgt weniger als 5 Minuten",
		"TTS_en-gb": "Your expected wait time is less then 5 minutes",
		"TTS_en-us": "Your expected wait time is less then 5 minutes",
		"TTS_fr-fr": "Votre temps d'attente prévu est inférieur à 5 minutes",
		"TTS_nl-nl": "Uw verwachte wachttijd is minder dan 5 minuten"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PPIQ_EightAhead_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "PPIQ_EightAhead_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Vor Ihnen in der Warteschleife sind 8 Anrufer.",
		"TTS_en-gb": "There are 8 callers ahead of you in the queue.",
		"TTS_en-us": "There are 8 callers ahead of you in the queue.",
		"TTS_fr-fr": "Il y a 8 appelants devant vous dans la file d'attente.",
		"TTS_nl-nl": "Er zijn 8 wachtenden voor je"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Global_TablesDivision_31" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Global_TablesDivision.id}"
  key_value       = "31"
  properties_json = jsonencode({
		"Division": "RJV"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_QueueStartPrompt3" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "QueueStartPrompt3"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "QueueStartPrompt3",
		"TTS_de-de": "Dies ist die dritte Ansage in der Warteschlange",
		"TTS_en-gb": "This is the third prompt in the queue",
		"TTS_en-us": "This is the third prompt in the queue",
		"TTS_fr-fr": "Ceci est la troisième invite dans la file d'attente",
		"TTS_nl-nl": "Dit is de derde prompt in de wachtrij"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_PromptEndOfLoop" {
  key_value       = "PromptEndOfLoop"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "PromptEndOfLoop",
		"TTS_de-de": "",
		"TTS_en-gb": "We regret we could not transfer you to an agent on time. Please register a callback and we will get back to you as soon as possible.",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Closed_RJV" {
  key_value       = "Prompt_Closed_RJV"
  properties_json = jsonencode({
		"NextDestination": "Disconnect",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "",
		"TTS_en-gb": "Sorry, we are closed",
		"TTS_en-us": "",
		"TTS_fr-fr": "",
		"TTS_nl-nl": ""
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallbackConformation" {
  key_value       = "CallbackConformation"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallbackConformation",
		"TTS_de-de": "Ihr Rückruf wurde registriert, die Leitung wird nun getrennt.",
		"TTS_en-gb": "Your callback has been registered, the line will now be disconnected.",
		"TTS_en-us": "Your callback has been registered, the line will now be disconnected.",
		"TTS_fr-fr": "Votre rappel a été enregistré, la ligne va désormais être déconnectée.",
		"TTS_nl-nl": "Uw terugbelverzoek is geregistreerd, de lijn wordt nu verbroken."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_SurveyInfo" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "SurveyInfo"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir bitten Sie, im Anschluss an das Gespräch einen kurzen Fragebogen zu beantworten",
		"TTS_en-gb": "We ask you to complete a short questionnaire after the interview",
		"TTS_en-us": "We ask you to complete a short questionnaire after the interview",
		"TTS_fr-fr": "Nous vous demandons de répondre à un court questionnaire après l'entretien",
		"TTS_nl-nl": "Wij vragen u om na het gesprek een korte vragenlijst te beantwoorden"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_Welcome_RJV" {
  properties_json = jsonencode({
		"NextDestination": "Lang_CR_Menu",
		"PromptName": "",
		"Rap_Entry": "Prompt_CR_Welcome",
		"TTS_de-de": "Willkommen bei C and R Solutions",
		"TTS_en-gb": "Welcome to C and R Solutions, your partner to solve problems!",
		"TTS_en-us": "Welcome to C and R Solutions, your partner to solve problems!",
		"TTS_fr-fr": "Bienvenue chez C en R Oplossingen",
		"TTS_nl-nl": "Welkom bij C en R Oplossingen, uw partner voor probleemoplossingen!"
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_Welcome_RJV"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_CR_Closed" {
  properties_json = jsonencode({
		"NextDestination": "Disconnect_CR",
		"PromptName": "",
		"Rap_Entry": "Prompt_CR_Closed",
		"TTS_de-de": "Aktuell können wir Ihnen nicht weiterhelfen. Sie erreichen uns werktags zwischen 8 und 18 Uhr.",
		"TTS_en-gb": "We are currently unable to assist you. You can reach us on working days between 8 a.m. and 6 p.m.",
		"TTS_en-us": "We are currently unable to assist you. You can reach us on working days between 8 a.m. and 6 p.m.",
		"TTS_fr-fr": "Nous ne sommes actuellement pas en mesure de vous aider. Vous pouvez nous joindre les jours ouvrables entre 8h et 18h.",
		"TTS_nl-nl": "Op dit moment zijn wij niet in staat om u te woord te staan. U kunt ons bereiken op werkdagen, tussen 8 uur smorgens en 6 uur in de avond."
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_CR_Closed"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Menu_MaxTries" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Menu_MaxTries"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "",
		"TTS_de-de": "Wir haben keine gültige Auswahl erhalten, bitte bleiben Sie am Apparat.",
		"TTS_en-gb": "We have not received a valid choice, please hold the line.",
		"TTS_en-us": "We have not received a valid choice, please hold the line.",
		"TTS_fr-fr": "Nous n'avons pas reçu de choix valide, veuillez garder la ligne.",
		"TTS_nl-nl": "We hebben geen geldige keuze ontvangen, blijf aan de lijn."
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_LanguageMenu_Lang_CR_Menu" {
  properties_json = jsonencode({
		"Default": "en-gb",
		"Default_LangSkill": "English_Voice",
		"Defaut_Destination": "ScheduleGroup_CR_RJV",
		"NextDestination": "",
		"Option1": "nl-nl",
		"Option1_Destination": "ScheduleGroup_CR_RJV",
		"Option1_LangSkill": "Dutch_Voice",
		"Option2": "fr-fr",
		"Option2_Destination": "ScheduleGroup_CR_RJV",
		"Option2_LangSkill": "French_Voice",
		"Option3": "en-gb",
		"Option3_Destination": "ScheduleGroup_CR_RJV",
		"Option3_LangSkill": "English_Voice",
		"Option4": "de-de",
		"Option4_Destination": "",
		"Option4_LangSkill": "German_Voice",
		"Option5": "",
		"Option5_Destination": "",
		"Option5_LangSkill": "",
		"Option9": "",
		"Option9_Destination": "",
		"Option9_LangSkill": "",
		"PromptMenu": "Prompt_Lang_CR_Menu",
		"Rap_Lang1": "NL",
		"Rap_Lang2": "FR",
		"Rap_Lang3": "GB",
		"Rap_Lang4": "DE",
		"Rap_Lang5": "",
		"Rap_Lang9": "",
		"Rap_LangMenu": "LangMenu_CR_Menu",
		"Repeats": 0,
		"Timeout": 5
	})
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_LanguageMenu.id}"
  key_value       = "Lang_CR_Menu"
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_CallBackNewNumber" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "CallBackNewNumber"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "CallBackNewNumber",
		"TTS_de-de": "Geben Sie die Telefonnummer ein, unter der wir Sie anrufen sollen, gefolgt von der Raute",
		"TTS_en-gb": "Enter the phone number you want us to call you on, followed by hash",
		"TTS_en-us": "Enter the phone number you want us to call you on, followed by hash",
		"TTS_fr-fr": "Entrez le numéro de téléphone sur lequel vous souhaitez que nous vous appelions, suivi du dièse",
		"TTS_nl-nl": "Voer het telefoonnummer in waarop u wilt dat wij u bellen, gevolgd door een hekje"
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Specialties_Tran_Other" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Specialties.id}"
  key_value       = "Tran_Other"
  properties_json = jsonencode({
		"Dest_Default": "",
		"NextDestination": "",
		"NoAgentsOnQueue_Destination": "",
		"QueueNameCheckOnQueue": "",
		"Rap_SpecDest": "Tran_Other",
		"Transfer_ExternalNumber": "+31621220925",
		"Transfer_FlowName": ""
	})
}

resource "genesyscloud_architect_datatable_row" "RJV_Routing_Prompts_Prompt_Menu_CR_Main_RJV" {
  datatable_id    = "${genesyscloud_architect_datatable.RJV_Routing_Prompts.id}"
  key_value       = "Prompt_Menu_CR_Main_RJV"
  properties_json = jsonencode({
		"NextDestination": "",
		"PromptName": "",
		"Rap_Entry": "Prompt_Menu_CR_Main",
		"TTS_de-de": "Drücken Sie 1 für den Vertrieb, drücken Sie 2 für Fragen zu unseren Produkten. ",
		"TTS_en-gb": "Press 1 for Sales, press 2 for questions about our products.",
		"TTS_en-us": "Press 1 for Sales, press 2 for questions about our products. ",
		"TTS_fr-fr": "Appuyez sur 1 pour les ventes, appuyez sur 2 pour des questions sur nos produits. ",
		"TTS_nl-nl": "Druk 1 voor Verkoop, druk 2 voor vragen over onze producten. "
	})
}

