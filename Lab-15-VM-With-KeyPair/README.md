## Instructions
* Generate a key pair on the Lab VM
    ```
    ssh-keygen
    # It will prompt you for file name, define it, and the press enter for 3 times, to keep other things default
    ```
* Update the file name of your key pair whihc you generated with last command in vm.tf
* Update the AMI id, KEY_PAIR_name in vm.tf
* Update region id in provider.tf