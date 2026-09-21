# Church Management System v1.3.0

## Phase 1 completion upgrade
- Church Setup workspace added to the church portal.
- Secure staff invitation flow via Supabase Edge Function.
- Pending invitation is claimed automatically when the invited user account is created.
- Role membership is created automatically after invitation acceptance.
- Senior Pastor / Administrator onboarding status updates automatically.
- Church branding completion workflow added.
- Platform Owner activation workflow added.
- Existing church and ministry data are preserved.

## Backend deployed with this release
- Migration 024: secure staff invitation claim, branding RPC, activation RPC.
- Edge Function: invite-church-staff (JWT protected).

## Notes
- Do not commit Supabase service-role credentials to this repository.
- Staff choose/set their password through the secure Supabase invitation flow.
