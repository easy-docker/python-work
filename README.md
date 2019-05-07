# docker-python-work

# 使用方法
```
docker pull ghostry/python-work
docker stop gpython
docker rm gpython
docker run -d -v ~/svn:/data -p 8000:8000 --name gpython ghostry/python-work
docker exec -it gpython bash
#安装需要的版本
apt update
apt install python3.5
#进入项目路径
pipenv install
```
