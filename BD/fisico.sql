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