class mail_team inherits virt_users {
     realize(
       Group["mail_team"]
  )
    User["mjones"] { groups => "mail_team" }
}

