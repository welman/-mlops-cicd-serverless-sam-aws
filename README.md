## MLOps in AWS SAM

### Notes

* Install SAM
* `cd mlops-sam-app`
* `sam init`
* `sam build`
* `sam local invoke -e ../utils/payload.json` Runs and test request locally
* `sam deploy --guided`
* `. ../utils/predict-lambda.sh`  Test calls the lambda api gateway. First two calls may respond error -- for some reason.


If building on Cloud9, good idea to resize disk space by using utils/resize.sh.
`utils/resize.sh 30`

