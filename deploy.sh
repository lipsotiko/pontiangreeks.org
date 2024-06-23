npm run generate

BUCKET="pontiangreeks"

if [ "$1" = "preview" ]; then
    BUCKET="$BUCKET.preview" 
fi

aws s3 sync ./.output/public "s3://$BUCKET"  --delete

if [ "$1" != "preview" ]; then
    aws cloudfront create-invalidation --distribution-id 'E1VLRNGBJIIGJ1' --paths '/*'
fi

echo "http://$BUCKET.s3-website.us-east-2.amazonaws.com"
