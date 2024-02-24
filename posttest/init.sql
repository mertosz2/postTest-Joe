DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,
                       username VARCHAR(255) UNIQUE NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       phone VARCHAR(255) NOT NULL
);
CREATE TABLE lottery (
                         lottery_id SERIAL PRIMARY KEY,
                         lottery_number VARCHAR(255) UNIQUE NOT NULL,
                         price INT NOT NULL,
                         amount INT NOT NULL
);
CREATE TABLE user_ticket (
                             user_ticket_id SERIAL PRIMARY KEY,
                             user_id INTEGER REFERENCES users(user_id),
                             lottery_id INTEGER REFERENCES lottery(lottery_id),
                             amount INT NOT NULL

);


INSERT INTO users (user_id,username, password, phone) VALUES ('2110511101','John', 'password','0812345687');
INSERT INTO users (user_id,username, password, phone) VALUES ('2051110022', 'Dep', 'password', '0812345602');
INSERT INTO lottery (lottery_number, price, amount) VALUES ('123456', 50, 1);
INSERT INTO lottery (lottery_number, price, amount) VALUES ('883556', 60, 1);
INSERT INTO lottery (lottery_number, price, amount) VALUES ('999666', 70, 1);
INSERT INTO lottery (lottery_number, price, amount) VALUES ('772356', 80, 1);
INSERT INTO lottery (lottery_number, price, amount) VALUES ('998855', 90, 1);
INSERT INTO user_ticket (user_id, lottery_id, amount) VALUES (2110511101, 1, 1);
INSERT INTO user_ticket (user_id, lottery_id, amount) VALUES (2110511101, 2, 1);
INSERT INTO user_ticket (user_id, lottery_id, amount) VALUES (2110511101, 3, 1);


