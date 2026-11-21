# Claude / AI coding toolkit

Run `./install.sh` on your machine (needs git, Node.js 18+, and [uv](https://docs.astral.sh/uv/)).

| # | Project | How it's installed | Command |
|---|---------|--------------------|---------|
| 1 | [Claude Code](https://github.com/anthropics/claude-code) | npm `@anthropic-ai/claude-code` | `claude` |
| 2 | [Claude Cookbooks](https://github.com/anthropics/claude-cookbooks) | cloned (notebooks) | – |
| 3 | [Claude Quickstarts](https://github.com/anthropics/claude-quickstarts) | cloned (example apps) | – |
| 4 | [Desktop Extensions (MCPB, formerly DXT)](https://github.com/anthropics/mcpb) | npm `@anthropic-ai/mcpb` + cloned | `mcpb` |
| 5 | [Awesome Claude Code](https://github.com/hesreallyhim/awesome-claude-code) | cloned (curated list) | – |
| 6 | [Awesome MCP Servers](https://github.com/punkpeye/awesome-mcp-servers) | cloned (curated list) | – |
| 7 | [SuperClaude Framework](https://github.com/SuperClaude-Org/SuperClaude_Framework) | `uv tool install SuperClaude` → `superclaude install` | `/sc:*` in Claude Code |
| 8 | [Claude Code Router](https://github.com/musistudio/claude-code-router) | npm `@musistudio/claude-code-router` | `ccr` |
| 9 | [Claude Task Master](https://github.com/eyaltoledano/claude-task-master) | npm `task-master-ai` | `task-master` |
| 10 | [Claude Engineer](https://github.com/Doriandarko/claude-engineer) | cloned (Python app, run from repo) | – |
| 11 | Claude Swarm | **not installed** – `parallaxsys/claude-swarm` doesn't exist / isn't public. Closest match: [parruda/claude-swarm](https://github.com/parruda/claude-swarm) (Ruby gem: `gem install claude_swarm`) | – |
| 12 | Claude Dev Tools | **not installed** – `zebbern/claude-dev-tools` doesn't exist / isn't public | – |
| 13 | [MCP Compass](https://github.com/liuyoshio/mcp-compass) | cloned; MCP server via `npx -y @liuyoshio/mcp-compass` | – |
| 14 | [MCP Installer](https://github.com/anaisbetts/mcp-installer) | cloned; MCP server via `npx @anaisbetts/mcp-installer` | – |
| 15 | [MCPHub](https://github.com/samanhappy/mcphub) | cloned (`idosal/mcphub` doesn't exist; this is the main MCPHub project) | – |
| 16 | [Continue](https://github.com/continuedev/continue) | npm `@continuedev/cli`; IDE extension from VS Code / JetBrains marketplace | `cn` |
| 17 | [Cline](https://github.com/cline/cline) | npm `cline`; IDE extension from VS Code marketplace | `cline` |
| 18 | [Open Interpreter](https://github.com/OpenInterpreter/open-interpreter) | `uv tool install open-interpreter` (Python 3.11) | `interpreter` |
| 19 | [Aider](https://github.com/Aider-AI/aider) | `uv tool install aider-chat` | `aider` |
| 20 | [OpenHands (formerly OpenDevin)](https://github.com/All-Hands-AI/OpenHands) | cloned; normally run via Docker (see its README) | – |
| 21 | [Artemis](https://github.com/google/artemis) | cloned → `uv sync` + `uv tool install -e .`; MCP added to Claude Code with `artemis mcp --install claude`. Needs `adb` + an Android phone (USB debugging) or emulator | `artemis` |

## Adding the MCP servers to Claude Code

```bash
claude mcp add mcp-compass -- npx -y @liuyoshio/mcp-compass
claude mcp add mcp-installer -- npx -y @anaisbetts/mcp-installer
```

Most tools need an API key (e.g. `ANTHROPIC_API_KEY`) before first use.
