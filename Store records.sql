-- Column: public.store."store records"

-- ALTER TABLE IF EXISTS public.store DROP COLUMN IF EXISTS "store records";

ALTER TABLE IF EXISTS public.store
    ADD COLUMN "store records" integer;