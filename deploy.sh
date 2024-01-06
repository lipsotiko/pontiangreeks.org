BUCKET="pontiangreeks"

if [ "$1" = "preview" ]; then
    BUCKET="$BUCKET.preview" 
fi

aws s3 sync . "s3://$BUCKET" --exclude "node_modules/*" --exclude ".git/*"  --delete
echo "http://$BUCKET.s3-website.us-east-2.amazonaws.com"
