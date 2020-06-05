# Ubuntu minimal with jre-8u131
Image size is 283MB

## Steps in docker file
1. Install curl
2. Download jre-8u131
3. Extract and move jre1.8.0_131 to /opt
4. Clean unnecessary files
5. Set environment variables
   JAVA_HOME
   PATH

## Development

### Build
```
docker build -t ngpsanjaya/ubuntu:jre-8u131 .
```
### Push
```
docker push ngpsanjaya/ubuntu:jre-8u131
```

### Run
```
docker run -it ngpsanjaya/ubuntu:jre-8u131 /bin/bash
```
