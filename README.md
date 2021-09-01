# vpc-example

Use terraform to stand up an aws vpc with all the basics. 

`/resources` will create each associated aws resource individually

- vpc
- public & private subnets
- internet gateway 
- public route table with default route directed to the internetgateway
- public route table association to the public subnet
- nat gateway with an associated elastic IP
- private route table with default rout directed to the nat gateway
- private route table association to the private subnet

`/modules` will craete the same thing using a terrform aws module

