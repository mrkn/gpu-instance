# Get CuDNN

You must get CuDNN archive file (`cudnn-7.0-linux-x64-v4.0-prod.tgz`) and put it into `tmp` directory in this repository.

# Provisioning

```
$ bundle install
$ bundle exec itamae ssh -h <hostname> -u <user> -i <identity> --ssh roles/ml.rb
```
