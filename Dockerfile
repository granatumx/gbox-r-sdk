## Emacs, make this -*- mode: sh; -*-
 
FROM granatumx/gbox-base:1.0.0

RUN apt-get install -y gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN echo "deb http://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y r-base-core r-base r-base-dev r-recommended
RUN apt-get install -y libcurl4-gnutls-dev libcurl4-gnutls-dev libssl-dev

RUN R -e 'install.packages("BiocManager")'
RUN R -e 'install.packages("remotes")'

RUN R -e 'install.packages(c("dplyr", "tibble", "tidyr", "purrr"))'
RUN R -e 'install.packages(c("ggplot2"))'
RUN R -e 'install.packages(c("limma"))'
RUN R -e 'install.packages(c("reshape2"))'
RUN R -e 'install.packages(c("jsonlite"))'

COPY . .
