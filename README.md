# Undocu-Student

A resource and guide for undocumented students to research and explore college admissions and financial aid policies.

## About

This project helps undocumented students find information about college policies regarding admissions, financial aid, and campus life. Users can browse colleges by state, view detailed policy information, and suggest edits to keep data accurate.

## Tech Stack

- **Frontend**: [SvelteKit](https://kit.svelte.dev/) (Svelte 5)
- **Database**: PostgreSQL
- **ORM**: [Prisma](https://www.prisma.io/)
- **Backend Services**: [Supabase](https://supabase.com/) (self-hosted) for authentication and file storage
- **Styling**: Tailwind CSS + SCSS

## Project Structure

```
undocu_info/
├── app/                    # SvelteKit application
│   ├── src/
│   │   ├── routes/        # Page routes
│   │   └── lib/           # Shared components and utilities
│   └── prisma/            # Database schema
├── deploy/                # Infrastructure configuration
│   ├── templates/         # Email templates
│   └── .env.example       # Supabase environment template
└── miscellaneous_data/    # Supporting data files
```

## Getting Started

### Prerequisites

- Node.js 18+
- PostgreSQL database
- Supabase instance (local or hosted)

### Setup

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd undocu_info
   ```

2. Set up the SvelteKit app:
   ```bash
   cd app
   npm install
   cp .env.example .env
   # Edit .env with your database and Supabase credentials
   ```

3. Set up the database:
   ```bash
   npx prisma generate
   npx prisma db push
   ```

4. Start the development server:
   ```bash
   npm run dev
   ```

See [app/README.md](./app/README.md) for detailed app documentation and [deploy/README.md](./deploy/README.md) for infrastructure setup.

## License

See LICENSE file for details.
