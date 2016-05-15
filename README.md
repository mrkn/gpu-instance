# gpu-instance

This is an Itamae recipe to provision CUDA and CuDNN available machine.
AWS's GPU instance is assumed, so it install CUDA version 7.0.

## Instance

Launch g2.2xlarge or g2.8xlarge instance with Ubuntu 14.04.
I recommend you to enlarge the root device more than 10GB.

## Get CuDNN

You must get CuDNN archive file (`cudnn-7.0-linux-x64-v4.0-prod.tgz`) and put it into `tmp` directory in this repository.

## Provisioning

```
$ bundle install
$ bundle exec itamae ssh -h <hostname> -u <user> -i <identity> --ssh roles/ml.rb
```
