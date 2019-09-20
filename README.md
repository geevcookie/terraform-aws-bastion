# Terraform Bastion

An example terraform config that deploys a SSH bastion host to
a configurable VPC and Subnet.

## Vars

| Var                 | Description               | Default   |
| ------------------- | ------------------------- | --------- |
| project             | The name of the project.  | None      |
| vpc                 | The ID of the VPC.        | None      |
| subnetid            | The ID of the Subnet.     | None      |
| keyname             | The name of the key pair. | None      |
| allowed_cidr_blocks | The ID of the VPC.        | 0.0.0.0/0 |

## Outputs

| Output       | Description                |
| ------------ | -------------------------- |
| public_ip    | The IP of the new instance |
| instance_id  | The ID of the new instance |