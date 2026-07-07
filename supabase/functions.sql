create or replace function match_documents_enriched(
  query_embedding vector(1536),
  match_count int default 8
)
returns table (
  id text,
  content text,
  metadata jsonb,
  enriched_text text,
  similarity float
)
language sql
as $$
  select
    source_chunk_id as id,
    content,
    metadata,
    enriched_text,
    1 - (embedding <=> query_embedding) as similarity
  from public.kb_documents_enriched
  where embedding is not null
  order by embedding <=> query_embedding
  limit match_count;
$$;