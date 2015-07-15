DROP TABLE IF EXISTS public.user;
CREATE TABLE public.user(
  id bigint
  ,full_name text
  ,external_id text ARRAY
  ,default_currency text
  ,rating float
  ,phone_number bigint
  ,email text
  ,base_location text
);

DROP TABLE IF EXISTS public.request;
CREATE TABLE public.request(
  id bigint
  ,amount float
  ,base_currency text
  ,desired_currency text
  ,status text -- PENDING,SUCCEEDED,FAILED
  ,worst_rate float
  ,waiting_time interval
  ,user_id bigint
  ,final_match_id bigint
);

DROP TABLE IF EXISTS public.match;
CREATE TABLE public.match(
  id bigint
  ,request_id_1 bigint
  ,request_id_2 bigint
  ,rate float
);
