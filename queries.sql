DROP TABLE IF EXISTS organization;
CREATE TABLE organization (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

DROP TABLE IF EXISTS channel;
CREATE TABLE channel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  organization_id INTEGER REFERENCES organization(id)
);

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

DROP TABLE IF EXISTS message;
CREATE TABLE message (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  content TEXT,
  user_id INTEGER REFERENCES user(id),
  channel_id INTEGER REFERENCES channel(id)
);



