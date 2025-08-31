# Gemini MCP Starter Project

A ready-made scaffold for **Gemini CLI** with a curated set of MCP servers
(ripgrep search, knowledge-graph memory, Git) and example slash commands.

## What’s inside

- `.gemini/settings.json` — configures MCP servers and defaults
- `.gemini/commands/*` — reusable commands (`/git:commit`, `/code:map`, `/tests:run`)
- `GEMINI.md` — project-specific instructional memory
- `memory/kg-memory.jsonl` — persistent memory store for the Knowledge Graph MCP
- `scripts/install_mcp.sh` — install dependencies and warm MCP
- `scripts/run_gemini.sh` — launch Gemini CLI in this project

## Quickstart

```bash
./scripts/install_mcp.sh
./scripts/run_gemini.sh
```

Inside Gemini CLI:
- `/mcp` — list MCP servers and tools
- `/tools` — list all tools, toggle descriptions with `/tools desc`
- `/memory show` — show concatenated memory from GEMINI.md files
- `/chat save <tag>` — save a conversation; `/chat resume <tag>` to load

## Notes

- Sandbox optional: enable with `-s` or `GEMINI_SANDBOX=true`.
- Authentication: run `gemini` once and follow OAuth, or set `GEMINI_API_KEY` (AI Studio) / Vertex env.
- MCP servers run via `npx` (stdio transport). You can add more under `mcpServers`.
