# BIRITECH CHMS — v0.2

Premium multi-tenant Church Management System. This project is separate from BIRITECH SMS.

## Included
- React + TypeScript + Vite
- Live Supabase authentication
- Platform Owner verification through `profiles.is_platform_owner`
- Platform Owner command centre
- Live church/user statistics
- Church directory
- Add Church flow that creates an organization and headquarters branch
- Responsive layout

## Important
The live Supabase database is already configured. Do **not** run the old v0.1 foundation SQL against it.

## Run locally
1. Copy `.env.example` to `.env.local`.
2. Run `npm install`.
3. Run `npm run dev`.
4. Sign in with the Platform Owner account already created in Supabase.

The included key is a Supabase publishable browser key. Never put a service-role key or database password in this repository.

## GitHub upload
Upload the contents of this folder to the root of `bainnezra-maker/Mycms`.
