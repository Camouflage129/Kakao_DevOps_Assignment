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
<br>
<code>
cd /terraform <br>
vi provider.tf <br>
#위의 AWS 리소스를 생성할 수 있는 IAM User의 access key, secret key 입력 <br>
terraform init <br>
terraform plan <br>
terraform apply -auto-approve 
</code>

   3. EKS Cluster / Managed Nodegroup 생성
      1. EKS Cluster 변수 세팅
<br>
<code>
cd /eksctl <br>
vi variable.sh <br>
#생성 된 subnet id 작성
</code>
      2. Cluster & Managed Nodegroup 생성
<br>
<code>
./create_cluster.sh <br>
./create_nodegroup.sh
</code>

      3. kubernetes 리소스 배포
<br>
<code>
cd /kubectl_apply <br>
./deploy.sh
</code>

   4. 테스트 수행

   5. 리소스 삭제
      1. kubernetes 리소스 삭제
<br>
<code>
cd kubectl_apply/remove.sh
</code>
      2. Nodegroup & Cluster 삭제
<br>
<code>
cd /eksctl
eksctl delete nodegroup --config-file=nodegroup.yaml
eksctl delete cluster --name SPDJ-TEST-EKS
</code>
      1. AWS 리소스 삭제
<br>
<code>
cd /terraform
terraform destroy -auto-approve
</code>