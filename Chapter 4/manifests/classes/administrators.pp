class administrators inherits virt_users {
       realize(
       Group["administration"]
   )
       User["jsmith"] { groups => "administration" }
}
