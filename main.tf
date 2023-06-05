module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0f9821369424b7443"

  private_subnets = ["subnet-01f4c1184d5a87dd5","subnet-02b80b544bf674494"]
  public_subnets  = ["subnet-0892819acfeef551c","subnet-0c58faa42dd68e478"]

}