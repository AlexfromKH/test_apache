# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include generate::apache
class apache_test {
  if $environment == 'production' {
    notify { lookup('apache_test::message_prod'):}
  } else {
    notify { 'default_message':
      message => lookup('$message_not_prod'),
    }
  }
}
