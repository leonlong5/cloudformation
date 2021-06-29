
NAME='serverless-vpc'
REGIONS='us-east-1 us-east-2 us-west-1 us-west-2'

for REGION in $REGIONS; do
  sam deploy \
    --region $REGION \
    --stack-name $NAME \
    --template-file ../templates/vpc.yml \
    --capabilities CAPABILITY_NAMED_IAM \
    --tags "Name=$NAME"
done;
