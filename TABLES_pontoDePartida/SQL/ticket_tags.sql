CREATE TABLE tickets_tags(
id_tickets INT NOT NULL,
id_tags INT NOT NULL,
FOREIGN KEY (id_tickets) REFERENCES tickets(id),
FOREIGN KEY (id_tags) REFERENCES tags(id)
);