# 42docker

## Usage
### container
```sh
docker build -t 42docker .
docker run -it --rm -v $(pwd):/libasm 42docker
# or
docker pull solareenlo/42docker
docker run -it --rm -v $(pwd):/libasm solareenlo/42docker
```

### valgrind
```sh
valgrind --leak-check=full ./a.out
```

### libasm
```sh
vim hello.asm
asm hello
```

### minishell
```sh
# bash の syscall や signal を確認
strace -o trace.txt -f bash -c "<commandline>"
```
