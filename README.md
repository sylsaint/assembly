### How to write 64-bit assembly on MacOSX ?

[http://www.idryman.org/blog/2014/12/02/writing-64-bit-assembly-on-mac-os-x/](http://www.idryman.org/blog/2014/12/02/writing-64-bit-assembly-on-mac-os-x/)

### 打开文件并修改

[https://stackoverflow.com/questions/8312290/how-to-open-a-file-in-assembler-and-modify-it](https://stackoverflow.com/questions/8312290/how-to-open-a-file-in-assembler-and-modify-it)

### 如何在 macOS 下查找文件系统状态码

文件地址：`/usr/include/sys/fcntl.h`

```
#define O_RDONLY    0x0000      /* open for reading only */
#define O_WRONLY    0x0001      /* open for writing only */
#define O_RDWR      0x0002      /* open for reading and writing */
#define O_ACCMODE   0x0003      /* mask for above modes */
```

### 系统中断

[https://x86asm.fandom.com/wiki/Int_21h](https://x86asm.fandom.com/wiki/Int_21h)

解读：在 64 位系统下，可以使用 syscall 进行系统调用

### 系统调用约定

[https://introspelliam.github.io/2017/08/06/pwn/%E7%B3%BB%E7%BB%9F%E8%B0%83%E7%94%A8%E7%BA%A6%E5%AE%9A/](https://introspelliam.github.io/2017/08/06/pwn/%E7%B3%BB%E7%BB%9F%E8%B0%83%E7%94%A8%E7%BA%A6%E5%AE%9A/)

用户模式的系统调用依次传递的寄存器为:

rdi，rsi，rdx，rcx，r8 和 r9
