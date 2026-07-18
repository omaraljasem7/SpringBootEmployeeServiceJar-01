### To Push into The GitHub Registery, you should again build the image, but with the username of user docker.io
```bash
``` bash 
docker build . -t omaraljasem/employee-service:v1
```
### We've just added the username, such that we can push the image into our repo in docker hub

### Then run the command docker images -> you will see an new images with the name omaraljasem/employee-service:v1

```bash
docker images
```


### Push the image into the docker hub repository under your profile
```bash
docker push omaraljasem/employee-service:v1 
```
#### Here is the bash 
```text 
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker login
Authenticating with existing credentials... [Username: omaraljasem]

i Info → To login with a different account, run 'docker logout' followed by 'docker login'


Login Succeeded
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker images
                                                                                                                                                                                                       i Info →   U  In Use
IMAGE                                ID             DISK USAGE   CONTENT SIZE   EXTRA
eclipse-temurin:25-jdk-alpine-3.23   5ecfde8e5ecd        418MB          111MB        
employee-service:v1                  66089caaf436        455MB          128MB    U   
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker ps 
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker ps -a 
CONTAINER ID   IMAGE                 COMMAND               CREATED             STATUS                           PORTS     NAMES
0aba0a7eff02   employee-service:v1   "java -jar app.jar"   43 minutes ago      Exited (130) 41 minutes ago                angry_hopper
c4a5f6de5dab   employee-service:v1   "java -jar app.jar"   57 minutes ago      Exited (130) 57 minutes ago                pedantic_robinson
53ada8ae933c   employee-service:v1   "java -jar app.jar"   About an hour ago   Exited (130) About an hour ago             nostalgic_sinoussi
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker build . -t omaraljasem/employee-service:v1
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon   38.2MB
Step 1/3 : FROM eclipse-temurin:25-jdk-alpine-3.23
 ---> 5ecfde8e5ecd
Step 2/3 : COPY target/employee-service-0.0.1-SNAPSHOT.jar app.jar
 ---> Using cache
 ---> c3213732691d
Step 3/3 : ENTRYPOINT ["java","-jar","app.jar"]
 ---> Using cache
 ---> 66089caaf436
Successfully built 66089caaf436
Successfully tagged omaraljasem/employee-service:v1
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker images
                                                                                                                                                                                                       i Info →   U  In Use
IMAGE                                ID             DISK USAGE   CONTENT SIZE   EXTRA
eclipse-temurin:25-jdk-alpine-3.23   5ecfde8e5ecd        418MB          111MB        
employee-service:v1                  66089caaf436        455MB          128MB    U   
omaraljasem/employee-service:v1      66089caaf436        455MB          128MB    U   
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ docker push omaraljasem/employee-service:v1 
The push refers to repository [docker.io/omaraljasem/employee-service]
e6f31ffc071e: Mounted from library/eclipse-temurin 
95dd7d1a5704: Mounted from library/eclipse-temurin 
586ae85e2c68: Mounted from library/eclipse-temurin 
1580feaf93ee: Mounted from library/eclipse-temurin 
a81a5f1f16b3: Pushed 
84edc40c41df: Mounted from library/eclipse-temurin 
v1: digest: sha256:66089caaf4363eea2c26d1e884193c7d106bf488b8c441fb7f2cd8932127f357 size: 1623
omar@omar-yoga-slim7-pro:~/IdeaProjects/employee-service$ 
```