# docker-python-work

# 使用方法
```
docker pull ghostry/python-work
docker container stop gpython && docker container rm gpython
docker run -d -v /data/workdir:/data -p 8000:8000 --name gpython ghostry/python-work
docker exec -it gpython bash
pipenv install
```
