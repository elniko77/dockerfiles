## Localstack


#### Ejemplo para probarlo: #### 

##### Instalar las tools de aws: #####

    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install

    aws configure
    (usar por ej, region sa-east-1 y formato json)

##### Agregar en .basrc el alias pasa que aws se comunique con los endpoints locales: ##### 

    alias aws='aws --endpoint-url http://localhost:4566'
    complete -C '/usr/local/bin/aws_completer' aws

##### Ejemplo para s3 ##### 
    
    aws s3 mb s3://mibucket
    aws s3 ls
    aws s3 cp test.txt s3://mibucket/test.txt
    aws s3 ls s3://mibucket

##### Dynamodb #####
    Crear tabla:
     aws --endpoint-url=http://localhost:4569 dynamodb create-table --table-name test_table  --attribute-definitions AttributeName=first,AttributeType=S AttributeName=second,AttributeType=N --key-schema AttributeName=first,KeyType=HASH AttributeName=second,KeyType=RANGE --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
    Listar tablas:
     aws --endpoint-url=http://localhost:4569 dynamodb list-tables
    Describir tablas:
     aws --endpoint-url=http://localhost:4569 dynamodb describe-table --table-name test_table
    Agregar datos:
     aws --endpoint-url=http://localhost:4569 dynamodb put-item --table-name test_table  --item '{"first":{"S":"Jack"},"second":{"N":"42"}}'
     aws --endpoint-url=http://localhost:4569 dynamodb put-item --table-name test_table  --item '{"first":{"S":"Manish"},"second":{"N":"40"}}'
    Scan de la tabla:
     aws --endpoint-url=http://localhost:4569 dynamodb scan --table-name test_table
    Obtener un dato:
     aws --endpoint-url=http://localhost:4569 dynamodb get-item --table-name test_table  --key '{"first":{"S":"Manish"},"second":{"N":"40"}}'
    Consultar base:
     aws --endpoint-url=http://localhost:4569 dynamodb query --table-name test_table --projection-expression "#first, #second" --key-condition-expression "#first = :value" --expression-attribute-values '{":value" : {"S":"Manish"}}' --expression-attribute-names '{"#first":"first", "#second":"second"}'


##### sns (Simple Notification Service #####
    Listar:
     aws --endpoint-url=http://localhost:4575 sns list-topics
    Crear notificacion:
     aws --endpoint-url=http://localhost:4575 sns create-topic --name minotif
    Suscripcion al tema:
     aws --endpoint-url=http://localhost:4575 sns subscribe --topic-arn arn:aws:sns:sa-east-1:000000000000:minotif --protocol email --notification-endpoint testmail@gmail.com
    Listar suscripciones:
     aws --endpoint-url=http://localhost:4575 sns list-subscriptions
    Enviar notificacion:
     aws --endpoint-url=http://localhost:4575 sns publish  --topic-arn arn:aws:sns:sa-east-1:000000000000:minotif --message 'Mi vieja mula...!'

##### sqs (Simple Queue Service #####
    Crear cola:
     aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name colaprueba
    Listar colas:
     aws --endpoint-url=http://localhost:4576 sqs list-queues
    Enviar mensaje:
     aws --endpoint-url=http://localhost:4576 sqs send-message --queue-url http://localhost:4576/000000000000/colaprueba --message-body 'Mi vieja mula...!'
    Consumir mensaje:
     aws --endpoint-url=http://localhost:4576 sqs receive-message --queue-url http://localhost:4576/000000000000/colaprueba
     


##### aws-local (https://github.com/localstack/awscli-local) ##### 

   Para no tener que poner los endpoints, instalar awscli-local

    pip install awscli-local

   Variables de entorno:
   
    LOCALSTACK_HOST: ip donde corre localstack
    USE_SSL: usar ssl hacia local  (false por default)
    
