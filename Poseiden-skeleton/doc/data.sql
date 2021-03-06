
CREATE TABLE BidList (
  bidListId int NOT NULL AUTO_INCREMENT,
  account VARCHAR(30) NOT NULL,
  type VARCHAR(30) NOT NULL,
  bidQuantity DOUBLE,
  askQuantity DOUBLE,
  bid DOUBLE ,
  ask DOUBLE,
  benchmark VARCHAR(125),
  bidListDate DATETIME,
  commentary VARCHAR(125),
  security VARCHAR(125),
  status VARCHAR(10),
  trader VARCHAR(125),
  book VARCHAR(125),
  creationName VARCHAR(125),
  creationDate DATETIME ,
  revisionName VARCHAR(125),
  revisionDate DATETIME ,
  dealName VARCHAR(125),
  dealType VARCHAR(125),
  sourceListId VARCHAR(125),
  side VARCHAR(125),

  PRIMARY KEY (bidListId)
);
CREATE TABLE Trade (
  tradeId int NOT NULL AUTO_INCREMENT,
  account VARCHAR(30) NOT NULL,
  type VARCHAR(30) NOT NULL,
  buyQuantity DOUBLE,
  sellQuantity DOUBLE,
  buyPrice DOUBLE ,
  sellPrice DOUBLE,
  tradeDate DATETIME,
  security VARCHAR(125),
  status VARCHAR(10),
  trader VARCHAR(125),
  benchmark VARCHAR(125),
  book VARCHAR(125),
  creationName VARCHAR(125),
  creationDate DATETIME ,
  revisionName VARCHAR(125),
  revisionDate DATETIME ,
  dealName VARCHAR(125),
  dealType VARCHAR(125),
  sourceListId VARCHAR(125),
  side VARCHAR(125),

  PRIMARY KEY (tradeId)
);

CREATE TABLE CurvePoint (
  id int NOT NULL AUTO_INCREMENT,
  curveId tinyint,
  asOfDate DATETIME,
  term DOUBLE ,
  value DOUBLE ,
  creationDate DATETIME ,

  PRIMARY KEY (id)
);

CREATE TABLE Rating (
  id int NOT NULL AUTO_INCREMENT,
  moodysRating VARCHAR(125),
  sandPRating VARCHAR(125),
  fitchRating VARCHAR(125),
  orderNumber tinyint,

  PRIMARY KEY (id)
);

CREATE TABLE RuleName (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(125),
  description VARCHAR(125),
  json VARCHAR(125),
  template VARCHAR(512),
  sqlStr VARCHAR(125),
  sqlPart VARCHAR(125),

  PRIMARY KEY (id)
);

CREATE TABLE Users (
  id int NOT NULL AUTO_INCREMENT,
  username VARCHAR(125),
  password VARCHAR(125),
  fullname VARCHAR(125),
  role VARCHAR(125),

  PRIMARY KEY (id)
);
-- password clear : Admin1234!
insert into users(fullname, username, password, role) values("ADMIN", "ADMIN", "$2a$10$wcZl3VbkiiTlAdJzcwKEDuIEhWkN8dYQ2lFQN0Fln3F531TLR5TgC", "ADMIN");