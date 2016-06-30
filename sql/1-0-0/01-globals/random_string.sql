create or replace function random_string(len int default 36)
returns text
as $$
select upper(substr( encode(membership.gen_random_bytes(len /2 +1), 'hex'), 1, len ));
$$ 
language sql;
