#!/usr/bin/env bash

# POST method predict.  Put your lambda function here
curl -d '{  
   "Weight":200
}'\
     -H "Content-Type: application/json" \
     -X POST https://3w8jtf5ywl.execute-api.ap-southeast-2.amazonaws.com/Prod/predict