
# hi
# manu_terraform

keywords needs to be remembered
- datasource
- count               ( if count is 3 then it will be in iindex form [0,1,2] so count.index will fetch the values)
- popular functions 
- depends_on
- modules  - make our own modules and keep it in remote ( module sources can be from terraform registry, local or remotely)


## how to pass data from one module to another (follow the steps below )
## task is from security group module get the sg id and attach it with the ec2 instance which is in different module

- on sg module take the output 
- on root module on main file inside ec2 block declare that output
- then on ec2 module declare a empty variable and pass that variable on sg id

## dynamic blocks
suppose we have multi ingress to attach in security groups

