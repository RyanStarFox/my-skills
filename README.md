# my-skills

My personal collection of [Claude Code](https://code.claude.com/docs/en/skills) skills, following the [Agent Skills](https://agentskills.io) open standard.

## Installation

```bash
git clone https://github.com/RyanStarFox/my-skills.git
cd my-skills
./install.sh
```

The install script symlinks all skills into `~/.claude/skills/`, making them available across all your projects.

## Available skills

### Design & Creative (from [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill))

| Skill | Description |
|-------|-------------|
| `ui-ux-pro-max` | Design intelligence — 67 UI styles, 161 color palettes, 57 font pairings, 99 UX guidelines |
| `banner-design` | Banner and hero image design |
| `brand` | Brand guidelines and identity |
| `design` | General UI/UX design guidance |
| `slides` | Slide deck design |
| `ui-styling` | UI component styling |

### Document Skills (from [anthropics/skills](https://github.com/anthropics/skills))

| Skill | Description |
|-------|-------------|
| `pptx` | PowerPoint creation, editing, and analysis |
| `pdf` | PDF creation and editing |
| `docx` | Word document creation and editing |
| `xlsx` | Excel spreadsheet creation and editing |
| `ppt-builder` | Chinese PPT template-based presentation builder |

### Development & Technical

| Skill | Description |
|-------|-------------|
| `mcp-builder` | Build MCP (Model Context Protocol) servers |
| `skill-creator` | Create new Claude Code skills |
| `webapp-testing` | Test web applications with Playwright |
| `web-artifacts-builder` | Build complex HTML artifacts |
| `claude-api` | Build and optimize Claude API applications |
| `claude-md-improver` | Audit and improve CLAUDE.md files in repositories |
| `playground` | Create interactive HTML playgrounds |

### Design & Communication

| Skill | Description |
|-------|-------------|
| `frontend-design` | Frontend UI design guidance |
| `canvas-design` | Canvas and visual design |
| `brand-guidelines` | Brand guidelines application |
| `theme-factory` | Theme generation for artifacts |
| `algorithmic-art` | Algorithmic art generation |
| `internal-comms` | Internal communications writing |
| `doc-coauthoring` | Document co-authoring workflow |
| `slack-gif-creator` | Create GIFs for Slack |
| `gorden-ppt-skill` | Chinese PPT template-based presentation builder (19 templates) |

### Workflow & Process (from superpowers)

| Skill | Description |
|-------|-------------|
| `using-superpowers` | Establish how to find and use skills |
| `brainstorming` | Explore user intent and design before implementation |
| `writing-plans` | Write implementation plans from specs/requirements |
| `executing-plans` | Execute implementation plans with review checkpoints |
| `subagent-driven-development` | Execute independent tasks with sub-agents |
| `dispatching-parallel-agents` | Dispatch parallel agents for independent tasks |
| `finishing-a-development-branch` | Guide completion of development work |
| `requesting-code-review` | Verify work meets requirements before merging |
| `receiving-code-review` | Process code review feedback with technical rigor |
| `test-driven-development` | Write tests before implementation code |
| `systematic-debugging` | Debug systematically before proposing fixes |
| `verification-before-completion` | Verify work before claiming completion |
| `using-git-worktrees` | Isolate feature work with git worktrees |
| `grill-me` | Interview the user relentlessly about a plan or design |

### Meta & Tooling

| Skill | Description |
|-------|-------------|
| `writing-skills` | Create, edit, and verify skills |
| `writing-rules` | Create hookify rules |

## Creating a new skill

```bash
cp -r template-skill my-new-skill
# Edit my-new-skill/SKILL.md
```

Or invoke the skill-creator: `/skill-creator`
