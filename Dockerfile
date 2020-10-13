## Emacs, make this -*- mode: sh; -*-
 
FROM granatumx/gbox-r-base:1.0.0

RUN R -e 'install.packages(c("dplyr", "tibble", "tidyr", "purrr"))'
RUN R -e 'install.packages(c("ggplot2"))'
RUN R -e 'install.packages(c("limma"))'
RUN R -e 'install.packages(c("reshape2"))'

COPY . .
