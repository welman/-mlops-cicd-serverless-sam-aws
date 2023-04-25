#!/usr/bin/env bash

# POST method predict.  Put your lambda function here
curl -d '{  
   "Weight":200
}'\
     -H "Content-Type: application/json" \
     -X POST https://sh2s4mhqs3.execute-api.ap-southeast-2.amazonaws.com/Prod/predict