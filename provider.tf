# using AWS cloud 

provider "aws" {
    region = "ap-south-1"

    # here first setup the access_key and secret_key in the command line. for security purpose we are using profile otherwise
    # we can use access_key and secret_key here.


    profile = "default"
}