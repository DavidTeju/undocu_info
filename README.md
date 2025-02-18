# Undocu-Student
A resource/guide for undocumented students to research/explore college admissions and financial aid policies toward undocumented students.

# The Site
The site is built on Svelte/SvelteKit with a postgres database using a self-hosted Supabase instance. Much of the application architecture is simple and data can be queried using the Prisma ORM or the supabase JS/TS client

## Todo

- Add ability to suggest edits to college information (must be authenticated)
- Create cron job to email admissions offices periodically to review page (ensure up to date information)
- Set up CI/CD
  - Have to unify supabase compose with svelte application build and manage diffs for limited rebuild
- Add call to action page for folks to request colleges
