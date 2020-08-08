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



