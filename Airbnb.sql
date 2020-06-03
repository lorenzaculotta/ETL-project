-- DROP TABLE IF EXISTS listing,neighborhood; 

CREATE TABLE "listing" (
    "id" INT NOT NULL,
    "name" VARCHAR(500) NOT NULL,
    "host_id" INT NOT NULL,
    "host_name" VARCHAR(100) NOT NULL,
    "neighborhood" VARCHAR(100),
    "latitude" FLOAT NOT NULL,
    "longitude" FLOAT NOT NULL,
    "room_type" VARCHAR(100) NOT NULL,
    "price" FLOAT NOT NULL,
    "minimum_nights" INT NOT NULL,
    "number_of_reviews" INT NOT NULL,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INT NOT NULL,
    "availability_365" INT NOT NULL,
    CONSTRAINT "pk_listing" PRIMARY KEY (
        "id"
     )
);
CREATE TABLE "neighborhood" (
    "id" INT NOT NULL,
    "SizeRank" INT NOT NULL,
    "Neighborhood" VARCHAR(100) NOT NULL,
    "State" VARCHAR(100),
    "City" VARCHAR(100),
    "Metro" VARCHAR(100),
    "CountyName" VARCHAR(100),
    "2019-01-31" INT, 
    "2019-02-28" INT, 
    "2019-03-31" INT, 
    "2019-04-30" INT, 
    "2019-05-31" INT, 
    "2019-06-30" INT, 
    "2019-07-31" INT, 
    "2019-08-31" INT, 
    "2019-09-30" INT, 
    "2019-10-31" INT, 
    "2019-11-30" INT, 
    "2019-12-31" INT, 
    "2020-01-31" INT, 
    "2020-02-29" INT, 
    "2020-03-31" INT, 
    "2020-04-30" INT, 
    CONSTRAINT "pk_neighborhood" PRIMARY KEY (
        "id"
     )
);

-- Insert a new column for average price
ALTER TABLE neighborhood
ADD COLUMN AvgPrice FLOAT;

-- check if everything is populating correctly
SELECT * FROM neighborhood
ORDER BY id DESC;

-- Create a new table for merged df
-- DROP TABLE IF EXISTS listing_neighborhood;
CREATE TABLE "listing_neighborhood" (
    "id" INT NOT NULL,
    "name" VARCHAR(500) NOT NULL,
    "host_id" INT NOT NULL,
    "host_name" VARCHAR(100) NOT NULL,
    "neighborhood" VARCHAR(100),
    "latitude" FLOAT NOT NULL,
    "longitude" FLOAT NOT NULL,
    "room_type" VARCHAR(100) NOT NULL,
    "price" FLOAT NOT NULL,
    "minimum_nights" INT NOT NULL,
    "number_of_reviews" INT NOT NULL,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INT NOT NULL,
    "availability_365" INT NOT NULL,
    "SizeRank" INT NOT NULL,
    "State" VARCHAR(100),
    "City" VARCHAR(100),
    "Metro" VARCHAR(100),
    "CountyName" VARCHAR(100),
    "avgprice" FLOAT
);
