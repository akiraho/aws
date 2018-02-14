# AWS CloudFormation / High Availability Auto-Scaled LAMP Stack Proof of Concept

This is an AWS CloudFormation Proof of Concept for a high availability, auto-scaled LAMP stack configuration.

[AWS CloudFormation Template](cloudformation/lamp.json)

## Network Topology & Security

A Virtual Private Network (VPC) is created. Inside the VPC a public subnet and a private subnet are created for each Availability Zone. The public subnets are attached to an Internet Gateway while the private subnets are not.

Application server instances are launched in the public subnets across Availability Zones. An Amazon Aurora Database Cluster with a Read Replica is deployed to the private subnets also across Availability Zones. The Subnetting design makes sure the database servers remain private and are not reachable from the Internet.

Three Security Groups are set up for application servers, database servers and the load balancer respectively. The load balancer accepts HTTP/S traffic from the Internet. Application servers accept HTTP connections from the load balancer and SSH connections for management purposes. Database servers only accept MySQL/Aurora connections from the application servers.

## Auto Scaling Architecture

An Elastic Load Balancer sits on top of the infrastructure and directs client requests to the underlying application server EC2 instances. An Auto Scaling Group controls the number of running application servers across Availability Zones. A Target Tracking Auto Scaling Policy is set up to maintain average CPU utilization at the required level. The Auto Scaling Group would then launch and teminate EC2 application server instances as needed to main that level.
