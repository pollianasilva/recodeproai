[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Montserrat&size=30&pause=1000&color=00dbce&random=false&width=435&lines=Projeto+Agência+de+Viagens)](https://git.io/typing-svg)
<h4 align="center">
      <img alt="logo" title="logo" src="https://github.com/user-attachments/assets/82578e69-5457-4a7b-8330-e33b86eca7ba" width="200vw"/>

  **DEPLOY**: [beijaflorturismo.com](https://beijaflort2.netlify.app/)
</h4>

<br>

Desenvolva a página inicial da agência de viagens, incluindo:
- **HTML** para estruturar o conteúdo.
- **CSS** para estilização e personalização do design.
- **Bootstrap** (opcional) para criar um design responsivo e moderno.

---

### Diagramas do Banco de Dados

#### Modelo Conceitual:
![Modelo Conceitual](https://github.com/user-attachments/assets/9166f3a0-9c48-468d-beef-03c58460d009)


#### Modelo Lógico:
![Modelo Lógico](https://github.com/user-attachments/assets/2e154ff3-ad8d-4f64-8953-9afd5fbb3781)

#### Modelo Físico:
![Modelo Físico](https://github.com/user-attachments/assets/7d65d2e5-94a2-463d-ba2e-6f68136d8d14)

---


### Script SQL

```sql
CREATE DATABASE IF NOT EXISTS bflorviagens;
USE bflorviagens;

CREATE TABLE usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL, 
    cpf VARCHAR(11) NOT NULL UNIQUE, 
    endereco VARCHAR(200) NOT NULL, 
    email VARCHAR(100) NOT NULL UNIQUE, 
    senha VARCHAR(255) NOT NULL, 
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_email CHECK (email LIKE '%@%.%') -- Validação básica de email
);

CREATE TABLE viagem (
    idViagem INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INT, 
    destino_viagem VARCHAR(100) NOT NULL,
    valor_passagem DECIMAL(10, 2) NOT NULL,  
    valor_promocional DECIMAL(10, 2),
    promocao BOOLEAN DEFAULT FALSE,
    disponibilidade DATETIME NOT NULL,
    ida DATETIME NOT NULL,
    volta DATETIME,
    valor_total DECIMAL(10, 2) NOT NULL,
    status_viagem ENUM('RESERVADA', 'CONFIRMADA', 'CANCELADA') DEFAULT 'RESERVADA',
    data_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT chk_datas CHECK (volta > ida)
);


```

<div style="display: inline_block" align="center"><br>
FORAM UTILIZADOS:
<img align="center" alt="Polly-VS" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg">  
<img align="center" alt="Polly-Html" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg">
<img align="center" alt="Polly-CSS" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg">
<img align="center" alt="Polly-bootstrap" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg"> <br><br>
  
![RecodeProAI](https://img.shields.io/badge/RecodeProAI-4e41a6?style=for-the-badge&logo=chipperci&logoColor=white)
</div><br> 


