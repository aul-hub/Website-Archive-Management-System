# Sistem Informasi Arsip

A government archive information system (Sistem Informasi Arsip Daerah) built with React + Vite frontend, Express 5 backend, PostgreSQL + Drizzle ORM, and session-based authentication.

## Architecture

```
artifacts/
  arsip-app/    — React + Vite frontend (preview path: /)
  api-server/   — Express 5 API server (preview path: /api)
lib/
  db/           — Drizzle ORM schema + migrations
  api-spec/     — OpenAPI spec + Orval codegen config
  api-zod/      — Generated Zod schemas
  api-client-react/ — Generated React Query hooks
```

## Credentials

- Username: `admin`
- Password: `admin123`

## Features

- **Login page** — navy blue theme with session-based auth
- **Dashboard** — stats (total/active/inactive) + recent archives list
- **Archive List** — searchable, filterable table with pagination + CRUD actions
- **Archive Detail** — all fields display + file download button
- **Add Archive** — full form with all archive fields
- **Edit Archive** — pre-populated form with existing data
- **Logout** — clears session and redirects to login

## Database

PostgreSQL managed by Replit. Table: `arsip` with all Indonesian government archive fields (kode_arsip, kode_unit, indeks, nomor_berkas, judul_berkas, etc.)

Seed data: 6 sample archives pre-loaded.

## Tech Stack

- **Frontend**: React 19, Vite, Tailwind CSS v4, shadcn/ui components, Wouter router, React Query
- **Backend**: Express 5, express-session, Pino logger
- **Database**: PostgreSQL + Drizzle ORM
- **Auth**: Session-based (arsip.sid cookie), credentials: admin/admin123
- **Code generation**: Orval (OpenAPI → React Query hooks + Zod schemas)

## Important Notes

- Codegen must be run as `cd lib/api-spec && npx orval --config ./orval.config.ts` (NOT `pnpm run codegen`) because the full codegen script also runs typecheck:libs which conflicts
- `lib/api-zod/src/index.ts` must only export `./generated/api` (not types folder)
- Session cookie name: `arsip.sid`
- Custom fetch has `credentials: "include"` built in
