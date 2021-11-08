CREATE TABLE users
(
    id SERIAL,
    name VARCHAR(125) NOT NULL,
    password VARCHAR(125) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

CREATE TABLE items
(
    id SERIAL,
    user_id INTEGER REFERENCES users(id),
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE categories
(
    id SERIAL,
    item_id INTEGER REFERENCES items(id),
    category VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO users(name, password) VALUES('user01', 'user01password');
INSERT INTO users(name, password) VALUES('user02', 'user02password');
INSERT INTO users(name, password) VALUES('user03', 'user03password');
INSERT INTO items(user_id, name, description) VALUES(1, 'item01', 'item01');
INSERT INTO items(user_id, name, description) VALUES(1, 'item02', 'item02');
INSERT INTO items(user_id, name, description) VALUES(1, 'item03', 'item03');
INSERT INTO items(user_id, name, description) VALUES(2, 'item04', 'item04');
INSERT INTO items(user_id, name, description) VALUES(2, 'item05', 'item05');
INSERT INTO items(user_id, name, description) VALUES(2, 'item06', 'item06');
INSERT INTO items(user_id, name, description) VALUES(2, 'item07', 'item07');
INSERT INTO items(user_id, name, description) VALUES(3, 'item08', 'item08');
INSERT INTO items(user_id, name, description) VALUES(3, 'item09', 'item09');
INSERT INTO categories(item_id, category) VALUES(1, 'category01');
INSERT INTO categories(item_id, category) VALUES(1, 'category02');
INSERT INTO categories(item_id, category) VALUES(1, 'category03');
INSERT INTO categories(item_id, category) VALUES(2, 'category04');
INSERT INTO categories(item_id, category) VALUES(2, 'category05');
INSERT INTO categories(item_id, category) VALUES(2, 'category06');
INSERT INTO categories(item_id, category) VALUES(3, 'category07');
INSERT INTO categories(item_id, category) VALUES(3, 'category08');
INSERT INTO categories(item_id, category) VALUES(3, 'category09');
INSERT INTO categories(item_id, category) VALUES(4, 'category10');
INSERT INTO categories(item_id, category) VALUES(4, 'category11');
INSERT INTO categories(item_id, category) VALUES(4, 'category12');
INSERT INTO categories(item_id, category) VALUES(5, 'category13');
INSERT INTO categories(item_id, category) VALUES(5, 'category14');
INSERT INTO categories(item_id, category) VALUES(5, 'category15');
INSERT INTO categories(item_id, category) VALUES(6, 'category16');
INSERT INTO categories(item_id, category) VALUES(6, 'category17');
INSERT INTO categories(item_id, category) VALUES(6, 'category18');
INSERT INTO categories(item_id, category) VALUES(7, 'category19');
INSERT INTO categories(item_id, category) VALUES(7, 'category20');
INSERT INTO categories(item_id, category) VALUES(7, 'category21');
INSERT INTO categories(item_id, category) VALUES(8, 'category22');
INSERT INTO categories(item_id, category) VALUES(8, 'category23');
INSERT INTO categories(item_id, category) VALUES(8, 'category24');
INSERT INTO categories(item_id, category) VALUES(9, 'category25');
INSERT INTO categories(item_id, category) VALUES(9, 'category26');
INSERT INTO categories(item_id, category) VALUES(9, 'category27');

COMMIT;