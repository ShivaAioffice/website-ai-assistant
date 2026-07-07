create extension if not exists vector;

create table if not exists public.kb_documents_enriched (
  id uuid primary key default gen_random_uuid(),
  source_chunk_id text not null unique,
  content text not null,
  summary text default '',
  keywords jsonb default '[]'::jsonb,
  aliases jsonb default '[]'::jsonb,
  topics jsonb default '[]'::jsonb,
  metadata jsonb default '{}'::jsonb,
  enriched_text text default '',
  embedding vector(1536),
  created_at timestamp with time zone default now(),
  updated_at timestamp with time zone default now()
);

create index if not exists idx_kb_documents_enriched_source_chunk_id
on public.kb_documents_enriched(source_chunk_id);

create index if not exists idx_kb_documents_enriched_updated_at
on public.kb_documents_enriched(updated_at);

