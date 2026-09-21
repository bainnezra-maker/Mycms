-- Already applied to the production Supabase project.
create or replace view public.person_profile_summary with (security_invoker=true) as
select p.id,p.organization_id,p.branch_id,p.first_name,p.middle_name,p.last_name,p.preferred_name,p.phone,p.email,p.gender,p.date_of_birth,p.address,p.occupation,p.marital_status,p.stage,p.joined_at,p.created_at,
(select count(*) from public.attendance_records a where a.person_id=p.id and a.organization_id=p.organization_id) attendance_count,
(select max(a.checked_in_at) from public.attendance_records a where a.person_id=p.id and a.organization_id=p.organization_id) last_attended_at,
(select coalesce(sum(g.amount),0) from public.giving_records g where g.person_id=p.id and g.organization_id=p.organization_id) lifetime_giving,
(select count(*) from public.follow_up_interactions f where f.person_id=p.id and f.organization_id=p.organization_id) follow_up_count
from public.people p;
grant select on public.person_profile_summary to authenticated;
