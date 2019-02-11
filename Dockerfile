FROM archlinux/base

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm avr-libc avr-gcc avr-gdb make 
