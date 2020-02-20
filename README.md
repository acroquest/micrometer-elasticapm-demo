# Micrometer & Elastic APM Demo
This is a demonstration of [Micrometer Kibana Dashboard](https://github.com/acroquest/micrometer-kibana-dashboard) and Elastic APM.

![Demo](https://github.com/acroquest/micrometer-elasticapm-demo/blob/media/Demo.gif)

# Installation

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
cd ../micrometer-kibana-dashboard
./kibana_setup.sh
```
for Windows:
```
cd ../micrometer-kibana-dashboard
kibana_setup.bat
```

## Build Application
Build angular application using docker-compose-application_build.yml
```
cd ../demo
docker-compose -f docker-compose-application_build.yml up
```

## Run applications
Run sample applications using docker-compose-application.yml
```
docker-compose -f docker-compose-application.yml up -d
```

# Stop Elastic Stack and Applicaions

## Stop applications.
```
docker-compose -f docker-compose-application.yml stop
```

## Stop Elastic Stack.
```
docker-compose -f docker-compose-elastic.yml stop
```

# Restart Elastic Stack and Applications

## Restart Elastic Stack.
```
docker-compose -f docker-compose-elastic.yml start
```

## Restart applications.
```
docker-compose -f docker-compose-application.yml start
```

# Stop and remove Elastic Stack and Applications

## Down applications.
```
docker-compose -f docker-compose-application.yml down
```

## Down Elastic Stack.
```
docker-compose -f docker-compose-elastic.yml down
```
