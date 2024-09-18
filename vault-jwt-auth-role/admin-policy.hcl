path "auth/token/lookup-self" {
  capabilities = ["read"]
}

path "auth/token/renew-self" {
    capabilities = ["update"]
}

path "auth/token/revoke-self" {
    capabilities = ["update"]
}

path "secret/*" {
  capabilities = ["read"]
}

path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

path "sys/auth" {
  capabilities = ["read"]
}

path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/mounts" {
  capabilities = ["read"]
}

path "aws-master-account/" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "aws-master-account/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/policy/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/policy/" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
