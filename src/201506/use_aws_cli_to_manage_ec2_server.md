# 使用 AWS 命令行工具 管理 EC2

* [GITHUB](https://github.com/aws/aws-cli)
* [doc](http://docs.aws.amazon.com/cli/latest/reference/)
* [doc.ec2](http://docs.aws.amazon.com/cli/latest/reference/ec2/index.html)

### 也可以使用 命令行 help 获取帮助

```
aws help
aws ec2 help
```

## Install

```
sudo pip install awscli
```

## Config

先要去 AWS 控制台 配置一下 [IAM](https://console.aws.amazon.com/iam/home) 的账号和权限

获取 AWS Access Key ID && AWS Secret Access Key

```
aws configure
----
AWS Access Key ID: foo
AWS Secret Access Key: bar
Default region name [none]: ap-northeast-1
Default output format [None]: json
```

### about region

| region name     | area                      |
| --              | --                        |
| ap-northeast-1  | Asia Pacific (Tokyo)      |
| ap-southeast-1  | Asia Pacific (Singapore)  |
| ap-southeast-2  | Asia Pacific (Sydney)     |
| eu-central-1    | EU (Frankfurt)            |
| eu-west-1       | EU (Ireland)              |
| sa-east-1       | South America (Sao Paulo) |
| us-east-1       | US East (N. Virginia)     |
| us-west-1       | US West (N. California)   |
| us-west-2       | US West (Oregon)          |

## EC2 支持的操作（待翻译分类）

* accept-vpc-peering-connection
* allocate-address
* assign-private-ip-addresses
* associate-address
* associate-dhcp-options
* associate-route-table
* attach-classic-link-vpc
* attach-internet-gateway
* attach-network-interface
* attach-volume
* attach-vpn-gateway
* authorize-security-group-egress
* authorize-security-group-ingress
* bundle-instance
* cancel-bundle-task
* cancel-conversion-task
* cancel-export-task
* cancel-import-task
* cancel-reserved-instances-listing
* cancel-spot-fleet-requests
* cancel-spot-instance-requests
* describe-spot-price-history
* describe-subnets
* describe-tags
* describe-volume-attribute
* describe-volume-status
* describe-volumes
* describe-vpc-attribute
* describe-vpc-classic-link
* describe-vpc-endpoint-services
* describe-vpc-endpoints
* describe-vpc-peering-connections
* describe-vpcs
* describe-vpn-connections
* describe-vpn-gateways
* detach-classic-link-vpc
* detach-internet-gateway
* detach-network-interface
* detach-volume
* detach-vpn-gateway
* disable-vgw-route-propagation
* disable-vpc-classic-link
* disassociate-address
* disassociate-route-table
* enable-vgw-route-propagation
* enable-volume-io
* enable-vpc-classic-link
* get-console-output
* get-password-data
* import-image
* import-key-pair
* import-snapshot
* modify-image-attribute
* modify-instance-attribute
* modify-network-interface-attribute
* modify-reserved-instances
* modify-snapshot-attribute
* modify-subnet-attribute
* modify-volume-attribute
* modify-vpc-attribute
* modify-vpc-endpoint
* monitor-instances
* move-address-to-vpc
* purchase-reserved-instances-offering
* reboot-instances
* register-image
* reject-vpc-peering-connection
* release-address
* replace-network-acl-association
* replace-network-acl-entry
* replace-route
* replace-route-table-association
* report-instance-status
* request-spot-fleet
* request-spot-instances
* reset-image-attribute
* reset-instance-attribute
* reset-network-interface-attribute
* reset-snapshot-attribute
* restore-address-to-classic
* revoke-security-group-egress
* revoke-security-group-ingress
* run-instances
* start-instances
* stop-instances
* terminate-instances
* unassign-private-ip-addresses
* unmonitor-instances
* wait

## Codedeploy

* 不支持东京节点
* 对比 ansible
* 对比 docker
