This project create a vpc, subnets, 2 load balancers, 2 autoscaling groups, 1 s3 bucket, 2 rds instances with passwords stored in ssm, 3 DNS records route traffic to load balancers and s3 buckets.

1. acm_certs.tf: create TLS certificate for domain

2. alb_asc_policy.tf: create autoscaling policy for autoscaling groups

3. alb_asc.tf: create autoscaling group for Application Load Balancer 

4. alb_listeners.tf: create listeners on ports 80 & 443 for alb

5. alb_tg.tf: create target group for ALB

6. alb.tf: create Application Load Balancer 

7. config.tf: create terraform config (like version)

8. data.tf: aws data

9. ec2_instances.tf: create ec2 instances

10. elastic_ips.tf: create elastic ips for load balancers

11. iam_policies.tf: create iam policies

12. internet_gateway.tf: create internet gateway and attach to VPC

13. key_pairs.tf: create key_pair from existing public key

14. launch_templates.tf: create launch template for ec2, use for autoscaling group

15. nat_gateways.tf: create nat gateway for private & database subnets

16. network_acl.tf: create rules for network access control list

17. nlb_asc.tf: create autoscaling group for network load balancer

18. nlb_listeners.tf: create listener on port 80 for network load balancer

19. nlb_tg.tf: create target group and health check for autoscaling group

20. nlb.tf: create network load balancer

21. outputs.tf: show application and network load balancer DNS names

22. providers.tf: set region and profile

23. random_password.tf: generate password for rds instance

24. rds_instances.tf: create mysql instance and mysql serverless

25. rds_subnet_groups.tf: create subnet group for database instances

26. roles.tf: create and attach iam role to ec2 instances

27. route_tables.tf: create route tables for public,private and database subnets

28. route53_dns_records.tf: create dns records on route53 for application, network balancers and s3 bucket.

29. rtb_association.tf: attach subnets to route tables.

30. s3_buckets.tf: create bucket for static website

31. security_groups.tf: create security groups for public,private and database instances

32. ssm_parameters.tf: get password and paste to rds instance

33. subnets.tf: create public,private and database subnets inside vpc

34. variables.tf: create variables to reuse

35. vpc: create vpc


Commands to use terraform:
1.  Initialize a new or existing Terraform working directory:
terraform init

2. Generates a speculative execution plan
terraform plan

3. Creates or updates infrastructure according to Terraform configuration files in the current directory
terraform apply

4. show resources:
terraform show

5. delete resources:
terraform destroy