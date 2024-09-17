resource "hcp_hvn" "secureops_hvn" {
  hvn_id         = "hvn"
  cloud_provider = "aws"
  region         = "ap-northeast-1"
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_vault_cluster" "secureops_vault_cluster" {
  cluster_id = "secureops-vault-cluster"
  hvn_id     = hcp_hvn.secureops_hvn.hvn_id
  tier       = "dev"
  public_endpoint = true
}