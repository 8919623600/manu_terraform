
# hi
# manu_terraform

keywords needs to be remembered
- datasource
- count               ( if count is 3 then it will be in iindex form [0,1,2] so count.index will fetch the values)
- popular functions 
- depends_on
- modules  - make our own modules and keep it in remote ( module sources can be from terraform registry, local or remotely)
- for_each (looping)
- Ifelse condition (condition ? true_val : false_val)

## how to pass data from one module to another (follow the steps below )
## task is from security group module get the sg id and attach it with the ec2 instance which is in different module

- on sg module get the output 
- on root module on main file inside ec2 block declare that output 
- then on ec2 module declare a empty variable and pass that variable on sg id

## dynamic blocks
suppose we have multi ingress to attach in security groups. first create a variable.tf where we declare all the variables i list format. then on ec2 moudle create a dynamic block dynamic{} then perform a loop calling the variable values.

## locals
on local blocl locals {} we can set the variables and call it as local.<name> , local.<>. We declare locals and call it by local.<>

## Provisioners
- Local  ( if i want to execute something where my terraform is running)
- Remote ( if i want to execute some on remote machines which is created by terraform)
- file   ( if i want to copy something to remote)
- connection ( if i want make a connection to remote)

## if i want different instance with different properties

## install step of terrafile 
- wget https://github.com/coretech/terrafile/releases/download/v0.7/terrafile_0.7_Linux_i386.tar.gz
- tar -xf terrafile_0.7_Linux_i386.tar.gz 
- sudo mv terrafile /usr/local/bin/  
