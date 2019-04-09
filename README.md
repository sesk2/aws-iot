# python3.7 with aws-iot sdk

## start container
```
export IOT_ARN={awsiot_arn}
docker-compose up -d
docker-compose ps
```

## put certificate files in ./cert
```
ls ./cert
 cert.pem  private.key  public.key
```

## run test
```
# login container terminal
docker exec -it awsiot-device sh
# run test script
python aws-iot-device-sdk-python/samples/basicPubSub/basicPubSub.py -e $IOT_ARN -r $ROOT_CA -c $CLIENT_CERT -k $PRIVATE_KEY
```

## login container
```
docker exec -it awsiot-device sh
```

## run scripts
1. put script files in ./src
2. run app by a command below.
```
docker exec -it awsiot-device python {script_file} {args}
```

## check logs
```
docker logs node8
```





