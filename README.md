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
