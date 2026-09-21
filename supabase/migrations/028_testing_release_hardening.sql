-- Security/correctness hardening used by the complete testing build.
create index if not exists member_statements_person_idx on public.member_statements(person_id);
