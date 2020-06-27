# Kakao_DevOps_Assignment

지원자 박현호

###실행 방법
=====
1. VPC, Subnets, IGW, Route Table, NAT 생성 (아래 명령어 수행)
	- cd /terraform
	- vi provider.tf (위의 AWS 리소스를 생성할 수 있는 IAM User의 access key, secret key 입력)
	- terraform init
	- terraform plan
	- terraform apply -auto-approve 

2. EKS Cluster / Managed Nodegroup 생성
	*EKS Cluster 변수 세팅
		- cd /eksctl
		- vi variable.sh (생성 된 subnet id 작성)
	*Cluster & Managed Nodegroup 생성
		- ./create_cluster.sh
		- ./create_nodegroup.sh

3. kubernetes 리소스 배포
	- cd /kubectl_apply 
	- ./deploy.sh

4. 테스트 수행

5. 리소스 삭제
	*kubernetes 리소스 삭제
		- cd kubectl_apply/remove.sh
	*Nodegroup & Cluster 삭제
		- cd /eksctl
		- eksctl delete nodegroup --config-file=nodegroup.yaml
		- eksctl delete cluster --name SPDJ-TEST-EKS
	*AWS 리소스 삭제
		- cd /terraform
		- terraform destroy -auto-approve