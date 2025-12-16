
CREATE TABLE "author" (
  "idauthor" varchar(255)  NOT NULL,
  "name" varchar(25)  DEFAULT NULL,
  PRIMARY KEY ("idauthor")
) ;



CREATE TABLE "book" (
  "isbn" char(15)  NOT NULL,
  "title" varchar(60)  NOT NULL,
  "author" char(4)  NOT NULL,
  "purchaseprice" DECIMAL(10,2)  DEFAULT '0',
  "saleprice" DECIMAL(10,2)  DEFAULT '0',
  PRIMARY KEY ("isbn")
) ;



CREATE TABLE "author_book" (
  "isbn" char(15)  NOT NULL,
  "author" varchar(255)  NOT NULL,
  PRIMARY KEY ("isbn","author"),
  CONSTRAINT "author_book_ibfk_1" FOREIGN KEY ("author") REFERENCES "author" ("idauthor"),
  CONSTRAINT "author_book_ibfk_2" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn")
) ;


CREATE TABLE "client" (
  "idclient" char(10)  NOT NULL,
  "name" varchar(25)  NOT NULL,
  "address" varchar(60)  NOT NULL,
  "numcc" char(16)  NOT NULL,
  PRIMARY KEY ("idclient")
) ;


CREATE TABLE "orders" (
  "idorder" char(10)  NOT NULL,
  "idclient" char(10)  NOT NULL,
  "dateorder" date DEFAULT NULL,
  "dateexped" date DEFAULT NULL,
  PRIMARY KEY ("idorder"),
  CONSTRAINT "orders_fk_0_0" FOREIGN KEY ("idclient") REFERENCES "client" ("idclient") ON DELETE CASCADE
) ;


CREATE TABLE "books_order" (
  "isbn" char(15)  NOT NULL,
  "idorder" char(10)  NOT NULL,
  "amount" int DEFAULT NULL,
  PRIMARY KEY ("isbn","idorder"),
  CONSTRAINT "book_fk" FOREIGN KEY ("isbn") REFERENCES "book" ("isbn") ON DELETE CASCADE,
  CONSTRAINT "pedido_fk" FOREIGN KEY ("idorder") REFERENCES "orders" ("idorder") ON DELETE CASCADE,
  CONSTRAINT "books_order_chk_1" CHECK (("amount" > 0))
) ;




