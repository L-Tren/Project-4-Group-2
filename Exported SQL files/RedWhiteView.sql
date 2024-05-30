-- View: public.Wines

-- DROP VIEW public."Wines";

CREATE OR REPLACE VIEW public."Wines"
 AS
 SELECT "RedWine".id,
    "RedWine".type,
    "RedWine".fixed_acidity,
    "RedWine".volatile_acidity,
    "RedWine".citric_acid,
    "RedWine".residual_sugar,
    "RedWine".chlorides,
    "RedWine".free_sulfur_dioxide,
    "RedWine".total_sulfur_dioxide,
    "RedWine".density,
    "RedWine".ph,
    "RedWine".sulphates,
    "RedWine".alcohol_wine,
    "RedWine".quality,
    "RedWine".quality_categorisation
   FROM "RedWine"
UNION
 SELECT "WhiteWine".id,
    "WhiteWine".type,
    "WhiteWine".fixed_acidity,
    "WhiteWine".volatile_acidity,
    "WhiteWine".citric_acid,
    "WhiteWine".residual_sugar,
    "WhiteWine".chlorides,
    "WhiteWine".free_sulfur_dioxide,
    "WhiteWine".total_sulfur_dioxide,
    "WhiteWine".density,
    "WhiteWine".ph,
    "WhiteWine".sulphates,
    "WhiteWine".alcohol_wine,
    "WhiteWine".quality,
    "WhiteWine".quality_categorisation
   FROM "WhiteWine";

ALTER TABLE public."Wines"
    OWNER TO postgres;

