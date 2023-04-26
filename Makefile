CF_STACK_NAME_STAGE_DEV=aws-sam-cli-managed-dev-pipeline-resources
CF_STACK_NAME_STAGE_PROD=aws-sam-cli-managed-prod-pipeline-resources

infra-bootstrap:
	aws cloudformation create-stack \
		--stack-name $(CF_STACK_NAME_STAGE_DEV) \
		--template-body file://infra/bootstrap.yaml \
		--capabilities CAPABILITY_IAM

	#Note: pass pipeline user arn created from dev (above) into prod (below) via SSM parameter store

	PIPELINE_USER_ARN=

	aws cloudformation create-stack \
		--stack-name $(CF_STACK_NAME_STAGE_PROD) \
		--template-body file://infra/bootstrap.yaml \
		--capabilities CAPABILITY_IAM \
		--parameters \
			ParameterKey=CreateImageRepository,ParameterValue=false \
			ParameterKey=PipelineUserArn,ParameterValue$(PIPELINE_USER_ARN) 