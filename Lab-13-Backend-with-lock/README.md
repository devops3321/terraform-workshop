## Instructions
* Create a Dynamo DB table from the AWS Console
    * Go to DynamoDB page
    * Create table
    * define a name
    * Put primary key as "LockID" and click create button
* Before utilising this, make sure your User/role do have permissions to access your Dynamo DB table
* Update the region id in ```provider.tf```
* Update AMI id ```vm.tf```
* Update the Backend Bucket Name, Region and Dynamo DB table name in ```backend.tf```
