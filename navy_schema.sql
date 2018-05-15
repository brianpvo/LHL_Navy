CREATE TABLE fleet(
    id INTEGER PRIMARY KEY,
    fleet_name VARCHAR(100)
);

INSERT INTO fleet (fleet_name)
VALUES ('BEST FLEET IN THE SEA'),
    ('WORST FLEET IN THE SEA');

CREATE TABLE ship (
    id INTEGER PRIMARY KEY,
    ship_name VARCHAR(100),
    date_built DATE,
    fleet_id INTEGER NOT NULL,
    FOREIGN KEY(fleet_id) REFERENCES fleet(id)
);

INSERT INTO ship (ship_name, date_built, fleet_id)
VALUES ('The Brian Ship', 2018-05-12, 1);

-- CREATE TABLE sailor (
--     id INTEGER PRIMARY KEY,
--     sailor_name VARCHAR(100),
--     birth DATE,
--     is_on_duty INTEGER,
--     FOREIGN KEY (shipid) REFERENCES ship(id),
--     FOREIGN KEY (dutyid) REFERENCES duty(id)
-- );

-- INSERT INTO sailor (sailor_name, birth, is_on_duty, shipid, dutyid)
-- VALUES ('Brian', 1994-05-20, 1, 1, 1);

-- CREATE TABLE duty (
--     id INTEGER PRIMARY KEY,
--     duty_name VARCHAR(100),
--     start_time TIME,
--     end_time TIME,
--     ranking INTEGER,
--     FOREIGN KEY (shipid) REFERENCES ship(id)
-- );

-- INSERT INTO duty (duty_name, start_time, end_time, ranking, shipid)
-- VALUES ('Lead', '03:03:03', '12:59:59', 1, 1);


SELECT * FROM ship;