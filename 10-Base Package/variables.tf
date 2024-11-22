variable "RESOURCE_PREFIX" {
  type = string
}

variable "DIVISION" {
  type = string
}

variable "DATA_ACTION_OAUTHCLIENT_ID" {
  type = string
}

variable "DATA_ACTION_OAUTHCLIENT_SECRET" {
  type = string
}

variable "EMAIL_DOMAIN" {
  type = string
}

variable "EMAIL_ADDRESS" {
  type = string
}

variable "EMAIL_FROM_NAME" {
  type = string
}

variable "USER_ID" {
  # Not sure about this - it is a member of the queue.  Perhaps a group would be better?
  type = string
}