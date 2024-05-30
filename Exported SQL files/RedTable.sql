-- Table: public.RedWine

-- DROP TABLE IF EXISTS public."RedWine";

CREATE TABLE IF NOT EXISTS public."RedWine"
(
    id integer,
    type character varying(100) COLLATE pg_catalog."default",
    fixed_acidity double precision,
    volatile_acidity double precision,
    citric_acid double precision,
    residual_sugar double precision,
    chlorides double precision,
    free_sulfur_dioxide double precision,
    total_sulfur_dioxide double precision,
    density double precision,
    ph double precision,
    sulphates double precision,
    alcohol_wine double precision,
    quality integer,
    quality_categorisation integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."RedWine"
    OWNER to postgres;