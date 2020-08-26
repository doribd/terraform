# This block use an optional way to configure the terraform engine
terraform {
    required_version=">=0.12.0"
}

# here we define the name of the resource we will create
variable "bucket_name" {
    type = string
}

# local variables also support operators such as + - & > < =
locals {
    currentTimeAndDate = timestamp()
    stringDecleration = "this is a string"
    numberDecleration = 2.49
    booleanDecleration = false
    mapDecleration = {
        key = "value"
    }

    # below a list decleration of bucket names
    buckets = [
        "dorbucket1","dorbucket2"
    ]
}
# here we define the resource in the cloud that we want to create
resource "aws_s3_bucket" "bucketE" {
    # looping over the list
    for_each = toset(local.buckets)
    bucket = "${each.value}"
    # an option to get variable from the user
    # bucket = var.bucket_name
    # we can depend on different resource
    #tags = {
        #dependency = aws_s3_bucket.dorbucket1.arn
    #}
}

# here we define a data source which terraform will fill with the details it takes from the cloud
# terraform doesn't manage it
data "aws_availability_zones" "available" {
    state = "available"
}


# data.type.label is the way we reference to what we defined above
output "aws_availability_zones" {
    value = data.aws_availability_zones.available
}

# here we can set the provider by its prefix like aws,gcp, azure or random 
provider "aws" {
    version = "~> 3.0"
    region = "us-west-1"  
}
