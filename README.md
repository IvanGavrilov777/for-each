# for-each
Simple repo with code which creates EC2 instances using for-each with local set with different VM sizes.

## Prerequisites
* AWS access

## Variables/Local values
* region
* VMsizes

## Usage
* Clone the repo with the following command: `git clone https://github.com/IvanGavrilov777/for-each.git`
* Edit `variables.tf` while adding your values, if the are not changed VMs will be created in AWS region `us-west-1` with the following sizes:

```
t2.nano
t2.micro
t2.large
``` 
