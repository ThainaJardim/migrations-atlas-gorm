-- Create "breeds" table
CREATE TABLE "public"."breeds" (
  "id" bigserial NOT NULL,
  "created_at" timestamptz NULL,
  "updated_at" timestamptz NULL,
  "deleted_at" timestamptz NULL,
  "name" text NULL,
  PRIMARY KEY ("id")
);
-- Create index "idx_breeds_deleted_at" to table: "breeds"
CREATE INDEX "idx_breeds_deleted_at" ON "public"."breeds" ("deleted_at");
-- Modify "pets" table
ALTER TABLE "public"."pets" ADD COLUMN "breed_id" bigint NULL, ADD
 CONSTRAINT "fk_pets_breed" FOREIGN KEY ("breed_id") REFERENCES "public"."breeds" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
