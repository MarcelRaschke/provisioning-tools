Repository gateway with multiple release managers
=================================================

This directory includes an Ansible playbook and associated files used to provision a CernVM-FS repository gateway and multiple release managers.

Features:
---------

* Uses the latest stable CernVM-FS packages
* The CernVM-FS repository is backed by CERN S3
* Conveyor job service

Usage:
------

The ansible playbook needs an inventory file with two types of hosts:

1. The repository gateway, in section `cvmfs_gw`
2. The release managers, in section `cvmfs_rm`

Additionally, the playbook uses the following variables:

1. `repo_name` - CernVM-FS repository name
2. `s3_bucket_name` - name of the S3 bucket used to store the repository
3. `s3_access_key` - access key for the S3 service
4. `s3_secret_key` - secret key for the S3 service
5. `gw_key_id` - public id of the gateway API key shared between gateway and release managers
6. `gw_key_secret` - secret of the gateway API key
7. `rm_upstream` - CernVM-FS repository upstream configuration string (used on the release managers, points to the gateway)

Once the inventory and variable files are created, the playbook can be run as follows:

```bash
# ansible-play -e @var_file -i inventory_file setup.yml
```