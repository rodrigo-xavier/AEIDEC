# Conexão WordPress local com banco de dados remoto

---

Se você possui banco de dados remoto, em uma hospedagem, uma cloud ou o que seja, e deseja conectar o seu contâiner wordpress à esse banco de dados, basta utilizar o docker-compose aqui colocado.

Baseando-se no arquivo example.env neste diretório, crie um arquivo de nome `.env` e preencha-o conforme suas necessidades. Em seguida, basta acessar o host escolhido na porta escolhida. No exemplo em questão, basta acessar `127.0.0.1:8002` e `127.0.0.1:8003`