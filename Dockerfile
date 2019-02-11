FROM archlinux/base

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm avr-libc avr-gcc avr-gdb make 
RUN pacman -S --noconfirm darkhttpd
RUN pacman -S --noconfirm iproute

RUN mkdir -p /usr/share/avr-docs
COPY docs/ /usr/share/avr-docs/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
