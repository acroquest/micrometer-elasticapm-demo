# Micrometer & Elastic APM Demo

## Get repository and submodules.
```
git clone https://github.com/acroquest/micrometer-elasticapm-demo.git
cd micrometer-elasticapm-demo
git submodule update -i
```

## Proxy settings
Add proxy settings if necessary.
- demo/Dockerfile_angular
 ```
# RUN npm -g config set proxy "http://xxx.xxx.xxx.xxx:xxxx/"
# RUN npm -g config set https-proxy "http://xxx.xxx.xxx.xxx:xxxx/"
```
- spring-petclinic-rest/.mvn/jvm.config
```
-Dhttp.proxyHost=
-Dhttp.proxyPort=
-Dhttps.proxyHost=
-Dhttps.proxyPort=
```

## Run Elastic Stack
Run Elastic Stack services using docker-compose-elastic.yml
```
cd demo
docker-compose -f docker-compose-elastic.yml up -d
```

## Setup Kibana Dashboards
Run Kibana Dashboard setup script after Kibana started.
```
./setup.sh
```
for Windows:
```
setup.bat
```

## Run applications
Run sample applications using docker-compose-application.yml
```
  docker-compose -f docker-compose-application.yml up -d
```
