#!/usr/bin/env bash

export AWS_PROFILE=real2u
aws s3 sync . s3://renatocobra.com.br/ --exclude ".idea/*" 
DISTRIBUTION_ID=E3ODIYXFXTYD0Y
aws cloudfront create-invalidation --distribution-id=$DISTRIBUTION_ID --paths \
	/\* \
	/css/\* \
	/js/\* \
	/fonts/\* \
	/img/\* 
