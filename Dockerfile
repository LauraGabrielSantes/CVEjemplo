# Usa una imagen base de Debian
FROM debian:buster-slim

# Instala TeX Live, latexmk, Perl, Bash, Pandoc y dependencias necesarias
RUN apt-get update && apt-get install -y  \
    texlive-full \
    texlive-fonts-extra \
    texlive-lang-all \
    latexmk \
    perl \
    bash \
    pandoc \
    xpdf \
    fonts-noto-color-emoji \
    fonts-noto-cjk \

    && rm -rf /var/lib/apt/lists/*
ENV MAIN_TEX=
ENV SHELL=
# Establece el directorio de trabajo en el contenedor
WORKDIR /documents

# Deja el CMD vacío para definirlo en docker-compose.yml
CMD []
