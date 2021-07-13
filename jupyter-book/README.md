# Docker para Jupyter-book

---

Dockerfile e docker-compose com objetivo de fazer a construção de um novo book jupyter para cada reinicialização de container e disponibilizar essa construção num servidor local por meio de um servidor apache.

Primeiro de tudo, leia a documentação do [jupyter-book](https://jupyterbook.org/start/create.html) e descubra como construir seu próprio notebook.

Após isto, ajuste seu arquivo _toc.yml para se parecer com o _toc.yml disponível neste repositório.

Copie o Dockerfile e o docker-compose.yml disponíveis aqui para o diretório do seu book. Crie uma imagem chamada jbook a partir do Dockerfile, digitando `docker build -t jbook .` e então basta digitar `docker-compose up` no bash e abrir a página `localhost:8000`.