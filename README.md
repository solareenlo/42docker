# [42docker](https://github.com/solareenlo/42docker)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/solareenlo/42docker/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/solareenlo/42docker)

## Usage
### Image and Container
```sh
git clone git@github.com:solareenlo/42docker.git
cd 42docker
docker build -t 42docker .
docker run -it --rm -v $PWD:/code 42docker
# or
docker pull solareenlo/42docker
docker run -it --rm -v $PWD:/code solareenlo/42docker

docker rmi 42docker:latest
docker rmi solareenlo/42docker:latest
```

### Run Container
```sh
docker run --rm -it -p '127.0.0.1:6667:6667' -v $PWD:/code solareenlo/42docker
```

### Norminette
```sh
docker run -it --rm -v $PWD:/code solareenlo/42docker norminette
docker run -it --rm -v $PWD:/code solareenlo/42docker norminette -v
docker run -it --rm -v $PWD:/code solareenlo/42docker norminette -d
docker run -it --rm -v $PWD:/code solareenlo/42docker norminette -dd
docker run -it --rm -v $PWD:/code solareenlo/42docker norminette ft_isdigit.c
```

#### Version up
```sh
docker run -it solareenlo/42docker bash
cd /usr/src/norminette
git pull
pip3 install -r requirements.txt
python3 setup.py install
exit
docker commit solareenlo/42docker
docker push solareenlo/42docker
docker container prune
docker image prune
```

References: [42School/norminette](https://github.com/42School/norminette)

### Valgrind
```sh
valgrind --leak-check=full --show-leak-kinds=all ./a.out
```

### nm
```sh
nm -u ./a.out
```

### libasm
```sh
vim hello.asm
asm hello
rmasm hello
```

### minishell
```sh
# bash の syscall や signal を確認
strace -o trace.txt -f bash -c "<commandline>"
```

## License
[GLWTPL](./LICENSE)
