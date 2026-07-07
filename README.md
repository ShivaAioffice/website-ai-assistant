# Website AI Assistant

Universal AI assistant generator that converts website content into a searchable knowledge base and answers user questions through Telegram.

## Stack

- n8n
- Supabase
- pgvector
- OpenAI embeddings
- Telegram Bot
- RAG

## Workflows

- Pipeline A — website/content ingestion
- Pipeline B — chunk enrichment and embeddings
- Pipeline C — retrieval and Telegram assistant

## Repository structure

- n8n/ — exported n8n workflows
- supabase/ — database schema and SQL functions
- prompts/ — system prompts
- docs/ — architecture notes
- screenshots/ — demo screenshots