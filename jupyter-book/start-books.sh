#!/bin/bash
# to turn this file into executable for the ubuntu system, run:
# sudo chmod +x start_docker.sh

# docker-compose -f /home/cyber/git/jupyter/docker-compose.yml up -d

docker-compose -f /home/cyber/git/jupyter/business-plan/docker-compose.yml up -d jupyter-book-build-business-plan
# docker-compose -f /home/cyber/git/jupyter/necronomicon/docker-compose.yml up -d jupyter-book-build-necronomicon
# docker-compose -f /home/cyber/git/jupyter/Doc/docker-compose.yml up -d jupyter-book-build-Doc
# docker-compose -f /home/cyber/git/jupyter/NNASS-doc/docker-compose.yml up -d jupyter-book-build-NNASS-doc
# docker-compose -f /home/cyber/git/jupyter/Separacao-de-Fonte-Sonora-Doc/docker-compose.yml up -d jupyter-book-build-Separacao-de-Fonte-Sonora-Doc

docker-compose -f /home/cyber/git/jupyter/business-plan/docker-compose.yml up -d jupyter-book-rebuild-business-plan
# docker-compose -f /home/cyber/git/jupyter/necronomicon/docker-compose.yml up -d jupyter-book-rebuild-necronomicon
# docker-compose -f /home/cyber/git/jupyter/NNASS-doc/docker-compose.yml up -d jupyter-book-rebuild-NNASS-doc
# docker-compose -f /home/cyber/git/jupyter/Doc/docker-compose.yml up -d jupyter-book-rebuild-Doc
# docker-compose -f /home/cyber/git/jupyter/Separacao-de-Fonte-Sonora-Doc/docker-compose.yml up -d jupyter-book-rebuild-Separacao-de-Fonte-Sonora-Doc

# docker-compose -f /home/cyber/git/jupyter/Doc/docker-compose.yml up -d jupyter-book-migrate-Doc-toc
# docker-compose -f /home/cyber/git/jupyter/Separacao-de-Fonte-Sonora-Doc/docker-compose.yml up -d jupyter-book-migrate-Separacao-de-Fonte-Sonora-Doc-toc
# docker-compose -f /home/cyber/git/jupyter/NNASS-doc/docker-compose.yml up -d jupyter-book-migrate-NNASS-doc-toc
# docker-compose -f /home/cyber/git/jupyter/necronomicon/docker-compose.yml up -d jupyter-book-migrate-necronomicon-toc
# docker-compose -f /home/cyber/git/jupyter/business-plan/docker-compose.yml up -d jupyter-book-migrate-business-plan-toc