CREATE CONSTRAINT movieConstraint IF NOT EXISTS for (m:Movie) require m.mongoId IS UNIQUE;
CREATE CONSTRAINT genreConstraint IF NOT EXISTS for (g:Genre) require g.name IS UNIQUE;
CREATE CONSTRAINT yearConstraint IF NOT EXISTS for (y:Year) require y.year IS UNIQUE;
CREATE CONSTRAINT personConstraint IF NOT EXISTS for (d:Person) require d.name IS UNIQUE;


CREATE CONSTRAINT objectConstraint IF NOT EXISTS for (o:Object) require o.mongoId IS UNIQUE;
CREATE CONSTRAINT propertyConstraint IF NOT EXISTS for (p:Property) require p.mongoId IS UNIQUE;
CREATE CONSTRAINT relationConstraint IF NOT EXISTS for (r:Relation) require r.mongoId IS UNIQUE;
