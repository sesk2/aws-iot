FROM python:3.7 as builder
WORKDIR /app
RUN curl https://www.amazontrust.com/repository/AmazonRootCA1.pem > root-CA.crt
RUN git clone https://github.com/aws/aws-iot-device-sdk-python.git


FROM python:3.7-alpine
COPY --from=builder /app /app
WORKDIR /app/aws-iot-device-sdk-python
RUN python setup.py install
WORKDIR /app
