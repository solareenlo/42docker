# 42docker

## Usage
### Image and Container
```sh
git clone git@github.com:solareenlo/42docker.git
cd 42docker
docker build -t 42docker .
docker run -it --rm -v $(pwd):/code 42docker
# or
docker pull solareenlo/42docker
docker run -it --rm -v $(pwd):/code solareenlo/42docker

docker rmi 42docker:latest
docker rmi solareenlo/42docker:latest
```

### Norminette
```sh
docker run -it --rm -v $(pwd):/code solareenlo/42docker norminette
```

### Valgrind
```sh
valgrind --leak-check=full ./a.out
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

## References
- [42School/norminette](https://github.com/42School/norminette)
