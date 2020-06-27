# Kakao_DevOps_Assignment
*지원자 박현호*
1. Project 설명
   <br>사전 과제 요구사항에 맞도록 어플리케이션 빌드 및 세팅 

2. 프로젝트 정보
   1. 설치 (최신버전)
		- AWS CLI
		- EKSCTL
		- Terraform	
   2. 세팅 방법
      1. VPC, Subnets, IGW, Route Table, NAT 생성 (아래 명령어 수행)
         - cd /terraform
         - vi provider.tf #위의 AWS 리소스를 생성할 수 있는 IAM User의 access key, secret key 입력
         - terraform init
         - terraform plan
         - terraform apply -auto-approve

      2. EKS Cluster / Managed Nodegroup 생성
         1. EKS Cluster 변수 세팅
            - cd /eksctl
            - vi variable.sh #생성 된 subnet id 작성
         2. Cluster & Managed Nodegroup 생성
            - ./create_cluster.sh
            - ./create_nodegroup.sh

      3. kubernetes 리소스 배포
         - cd /kubectl_apply
         - ./deploy.sh

      1. 과제 검토

      2. 리소스 삭제
         1. kubernetes 리소스 삭제
            - cd kubectl_apply
            - ./remove.sh
         2. Nodegroup & Cluster 삭제
            - cd /eksctl
            - eksctl delete nodegroup --config-file=nodegroup.yaml
            - eksctl delete cluster --name SPDJ-TEST-EKS
         3. AWS 리소스 삭제
     		- cd /terraform
     		- terraform destroy -auto-approve