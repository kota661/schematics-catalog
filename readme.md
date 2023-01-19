# Multizone-VPC

VPCを１つと３Zoneにサブネットを作成します

## Usage
```

# terraform.tfvars.example　を元に　terraform.tfvars　ファイルを作ります
cp ./terraform.tfvars.example ./terraform.tfvars

# terraform.tfvarsを開きAPI-Keyなど必要事項を入力します

# Terraformのinitを実行し、実行に必要なプロバイダーなどを取得します
terraform init

# plan を実行し適用される内容を確認します
terraform plan

# 問題ないことを確認しapply を実行しクラウドにVPCを作成します
terraform apply

# 実行結果の確認
terraform output

# 削除
terraform destroy

```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= v1.1.8 |
| ibm | >=1.26.0 |

## Providers

| Name | Version |
|------|---------|
| ibm | >=1.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ibm_is_subnet.zone1](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/resources/is_subnet) | resource |
| [ibm_is_vpc.this](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/resources/is_vpc) | resource |
| [ibm_is_vpc_address_prefix.zone1](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/resources/is_vpc_address_prefix) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ibmcloud\_api\_key | n/a | `any` | n/a | yes |
| region | Region | `string` | `"jp-tok"` | no |
| resource\_group\_name | リソースグループ名 | `string` | `"Default"` | no |
| tags | タグ名 | `list(string)` | ```[ "terraform" ]``` | no |
| vpc\_name | vpc名 | `string` | `"helloworld-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| region | network |
| resource\_group\_name | n/a |
| icos\_instance\_name | COSインスタンス名 |
| cos\_instance\_id | COSインスタンスID |
## .tfvars

```hcl
ibmcloud_api_key    = "******************"
region              = "jp-tok"
resource_group_name = "Default"
tags = [
  "terraform"
]
vpc_name = "helloworld-vpc"
```

