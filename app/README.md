# Undocu-Student App

SvelteKit application for the Undocu-Student college resource database.

## Development

```bash
# Install dependencies
npm install

# Start dev server
npm run dev

# Type checking
npm run check

# Linting and formatting
npm run lint
npm run format
```

## Routes

| Route                    | Description                                                        |
| ------------------------ | ------------------------------------------------------------------ |
| `/`                      | Home page - lists all colleges grouped by state with search        |
| `/college/[domain]`      | College detail page - shows policy Q&A for a specific college      |
| `/college/[domain]/edit` | Suggest edits to college information (requires email verification) |
| `/admin/login`           | Admin login page                                                   |
| `/admin/reviews`         | Admin dashboard to review/approve/reject suggested edits           |
| `/thanks`                | Thank you page after submitting suggestions                        |

## Key Components

- `$lib/components/Card.svelte` - College card for the home page listing
- `$lib/components/SearchBar.svelte` - Search input for filtering colleges
- `$lib/components/Error.svelte` - Error message display

## Environment Variables

Copy `.env.example` to `.env` and configure:

```bash
# Database connection (Prisma)
DATABASE_URL="postgresql://user:password@localhost:5432/dbname"

# Supabase server-side credentials
SUPABASE_URL="http://127.0.0.1:54321"
SUPABASE_ANON_KEY="your-anon-key"

# Public client-side variables (exposed to browser)
PUBLIC_FILES_ROOT="http://127.0.0.1:54321"
PUBLIC_SUPABASE_URL="http://127.0.0.1:54321"
PUBLIC_SUPABASE_ANON_KEY="your-anon-key"
```

## Database Schema

The app uses Prisma with PostgreSQL. Key models:

- **colleges** - College info (name, domain, city, state)
- **questions** - Question definitions with categories (admission, financial, life, other)
- **responses** - Answers to questions for each college
- **Suggestions** - User-submitted edits pending review
- **emailaddresses** - Contact emails associated with colleges

Generate the Prisma client after schema changes:

```bash
npx prisma generate
```

## Build

```bash
# Production build
npm run build

# Preview production build
npm run preview
```

The app uses `@sveltejs/adapter-node` for Node.js deployment.
