### Create working container to run jupyter
```
docker build -t pypipenv39 .
```
### Execute container to run jupyter
```
docker run -p 8888:8888 -v $(pwd):/app pypipenv39
```

