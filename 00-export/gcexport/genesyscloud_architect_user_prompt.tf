resource "genesyscloud_architect_user_prompt" "RJV_MoH_asmallmiracle" {
  resources {
    file_content_hash = "${filesha256("audio_prompts/de-de-c60f14a3-457a-455a-b3d5-2c801303476e.wav")}"
    filename          = "audio_prompts/de-de-c60f14a3-457a-455a-b3d5-2c801303476e.wav"
    language          = "de-de"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-gb-c60f14a3-457a-455a-b3d5-2c801303476e.wav")}"
    filename          = "audio_prompts/en-gb-c60f14a3-457a-455a-b3d5-2c801303476e.wav"
    language          = "en-gb"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-us-c60f14a3-457a-455a-b3d5-2c801303476e.wav")}"
    filename          = "audio_prompts/en-us-c60f14a3-457a-455a-b3d5-2c801303476e.wav"
    language          = "en-us"
  }
  resources {
    language          = "fr-fr"
    file_content_hash = "${filesha256("audio_prompts/fr-fr-c60f14a3-457a-455a-b3d5-2c801303476e.wav")}"
    filename          = "audio_prompts/fr-fr-c60f14a3-457a-455a-b3d5-2c801303476e.wav"
  }
  resources {
    filename          = "audio_prompts/nl-nl-c60f14a3-457a-455a-b3d5-2c801303476e.wav"
    language          = "nl-nl"
    file_content_hash = "${filesha256("audio_prompts/nl-nl-c60f14a3-457a-455a-b3d5-2c801303476e.wav")}"
  }
  name = "RJV_MoH_asmallmiracle"
}

resource "genesyscloud_architect_user_prompt" "RJV_MoH_abstractfashion_RJV" {
  name = "RJV_MoH_abstractfashion_RJV"
  resources {
    language          = "de-de"
    file_content_hash = "${filesha256("audio_prompts/de-de-de8ade8e-8902-4ee4-af54-14ba537af09d.wav")}"
    filename          = "audio_prompts/de-de-de8ade8e-8902-4ee4-af54-14ba537af09d.wav"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-gb-de8ade8e-8902-4ee4-af54-14ba537af09d.wav")}"
    filename          = "audio_prompts/en-gb-de8ade8e-8902-4ee4-af54-14ba537af09d.wav"
    language          = "en-gb"
  }
  resources {
    language          = "en-us"
    file_content_hash = "${filesha256("audio_prompts/en-us-de8ade8e-8902-4ee4-af54-14ba537af09d.wav")}"
    filename          = "audio_prompts/en-us-de8ade8e-8902-4ee4-af54-14ba537af09d.wav"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/fr-fr-de8ade8e-8902-4ee4-af54-14ba537af09d.wav")}"
    filename          = "audio_prompts/fr-fr-de8ade8e-8902-4ee4-af54-14ba537af09d.wav"
    language          = "fr-fr"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/nl-nl-de8ade8e-8902-4ee4-af54-14ba537af09d.wav")}"
    filename          = "audio_prompts/nl-nl-de8ade8e-8902-4ee4-af54-14ba537af09d.wav"
    language          = "nl-nl"
  }
}

resource "genesyscloud_architect_user_prompt" "RJV_MoH_abstractfashion" {
  name = "RJV_MoH_abstractfashion"
  resources {
    file_content_hash = "${filesha256("audio_prompts/de-de-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav")}"
    filename          = "audio_prompts/de-de-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav"
    language          = "de-de"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-gb-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav")}"
    filename          = "audio_prompts/en-gb-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav"
    language          = "en-gb"
  }
  resources {
    language          = "en-us"
    file_content_hash = "${filesha256("audio_prompts/en-us-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav")}"
    filename          = "audio_prompts/en-us-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/fr-fr-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav")}"
    filename          = "audio_prompts/fr-fr-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav"
    language          = "fr-fr"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/nl-nl-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav")}"
    filename          = "audio_prompts/nl-nl-9b27f3c7-e83e-4378-ac3b-d9f12a7f75e0.wav"
    language          = "nl-nl"
  }
}

resource "genesyscloud_architect_user_prompt" "Prompt_Lang_CR_Menu_RJV" {
  name = "Prompt_Lang_CR_Menu_RJV"
  resources {
    filename          = "audio_prompts/de-de-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav"
    language          = "de-de"
    file_content_hash = "${filesha256("audio_prompts/de-de-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav")}"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-gb-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav")}"
    filename          = "audio_prompts/en-gb-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav"
    language          = "en-gb"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-us-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav")}"
    filename          = "audio_prompts/en-us-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav"
    language          = "en-us"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/fr-fr-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav")}"
    filename          = "audio_prompts/fr-fr-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav"
    language          = "fr-fr"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/nl-nl-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav")}"
    filename          = "audio_prompts/nl-nl-f1927f5c-5fa0-4d9d-b714-bc8ee5aad5a5.wav"
    language          = "nl-nl"
  }
}

resource "genesyscloud_architect_user_prompt" "Prompt_Lang_CR_Menu" {
  name = "Prompt_Lang_CR_Menu"
  resources {
    file_content_hash = "${filesha256("audio_prompts/de-de-695a9b02-bc88-4868-9793-92eedae00752.wav")}"
    filename          = "audio_prompts/de-de-695a9b02-bc88-4868-9793-92eedae00752.wav"
    language          = "de-de"
  }
  resources {
    language          = "en-gb"
    file_content_hash = "${filesha256("audio_prompts/en-gb-695a9b02-bc88-4868-9793-92eedae00752.wav")}"
    filename          = "audio_prompts/en-gb-695a9b02-bc88-4868-9793-92eedae00752.wav"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/fr-fr-695a9b02-bc88-4868-9793-92eedae00752.wav")}"
    filename          = "audio_prompts/fr-fr-695a9b02-bc88-4868-9793-92eedae00752.wav"
    language          = "fr-fr"
  }
  resources {
    filename          = "audio_prompts/nl-nl-695a9b02-bc88-4868-9793-92eedae00752.wav"
    language          = "nl-nl"
    file_content_hash = "${filesha256("audio_prompts/nl-nl-695a9b02-bc88-4868-9793-92eedae00752.wav")}"
  }
}

resource "genesyscloud_architect_user_prompt" "RJV_MoH_asmallmiracle_RJV" {
  name = "RJV_MoH_asmallmiracle_RJV"
  resources {
    language          = "de-de"
    file_content_hash = "${filesha256("audio_prompts/de-de-6b188b09-d674-43b3-86ac-742a01cd46bf.wav")}"
    filename          = "audio_prompts/de-de-6b188b09-d674-43b3-86ac-742a01cd46bf.wav"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-gb-6b188b09-d674-43b3-86ac-742a01cd46bf.wav")}"
    filename          = "audio_prompts/en-gb-6b188b09-d674-43b3-86ac-742a01cd46bf.wav"
    language          = "en-gb"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/en-us-6b188b09-d674-43b3-86ac-742a01cd46bf.wav")}"
    filename          = "audio_prompts/en-us-6b188b09-d674-43b3-86ac-742a01cd46bf.wav"
    language          = "en-us"
  }
  resources {
    filename          = "audio_prompts/fr-fr-6b188b09-d674-43b3-86ac-742a01cd46bf.wav"
    language          = "fr-fr"
    file_content_hash = "${filesha256("audio_prompts/fr-fr-6b188b09-d674-43b3-86ac-742a01cd46bf.wav")}"
  }
  resources {
    file_content_hash = "${filesha256("audio_prompts/nl-nl-6b188b09-d674-43b3-86ac-742a01cd46bf.wav")}"
    filename          = "audio_prompts/nl-nl-6b188b09-d674-43b3-86ac-742a01cd46bf.wav"
    language          = "nl-nl"
  }
}

