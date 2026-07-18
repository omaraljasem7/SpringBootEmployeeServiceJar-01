### See The Images after the command

### First go the Folder where the Dockerfile is located 
``` bash 
docker build . -t employee-service:v1
```

```bash 
docker  images 
```
``` text
IMAGE                                ID             DISK USAGE   CONTENT SIZE   EXTRA
eclipse-temurin:25-jdk-alpine-3.23   5ecfde8e5ecd        418MB          111MB        
employee-service:v1                  66089caaf436        455MB          128MB   U    
```

#### Run the image using the command: 

```bash
docker run -p 8080:8080 employee-service:v1
```
#### USE The Mapping -p 8080:8080 otherwise the Application will not run properly