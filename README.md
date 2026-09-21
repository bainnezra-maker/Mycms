# Church Management System v0.4

Premium multi-tenant church management frontend connected to the live Supabase backend.

## v0.4 highlights
- One-login routing for Platform Owner and church users
- Platform Owner command centre
- Live church network list
- Secure multi-step Add Church wizard using `platform-create-church` Edge Function
- Platform Owner can open a church portal
- Church portal navigation for People, First Timers, Follow-Up, Attendance, Giving, Events, Ministries, Groups, Communication, Media, Testimonies, Prayer and Settings
- Responsive desktop/tablet/mobile shell

## Deployment
Keep the existing Vercel environment variables:
- VITE_SUPABASE_URL
- VITE_SUPABASE_PUBLISHABLE_KEY

Do not put the Supabase service-role key in this frontend.


## v0.4.1
Fixed Platform Owner routing: sign-in passes through the owner authorization gate; non-owner users are redirected to their church portal; Platform Owner visiting /portal without a selected church returns to /owner.


## v0.4.3
Onboarding no longer depends on the failing Edge Function. Platform Owner creates the organization and headquarters through existing RLS-protected Supabase tables; failed headquarters creation rolls back the organization. Detailed errors are shown in the UI.


## v0.4.4
Added Vercel SPA rewrite so direct links such as /owner and /portal?org=... load the React application instead of returning a Vercel 404.
