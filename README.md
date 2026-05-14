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
| `design-system` | Design system generation |
| `slides` | Slide deck design |
| `ui-styling` | UI component styling |

### Document Skills (from [anthropics/skills](https://github.com/anthropics/skills))

| Skill | Description |
|-------|-------------|
| `pptx` | PowerPoint creation, editing, and analysis |
| `pdf` | PDF creation and editing |
| `docx` | Word document creation and editing |
| `xlsx` | Excel spreadsheet creation and editing |

### Development & Technical

| Skill | Description |
|-------|-------------|
| `mcp-builder` | Build MCP (Model Context Protocol) servers |
| `skill-creator` | Create new Claude Code skills |
| `webapp-testing` | Test web applications with Playwright |
| `web-artifacts-builder` | Build complex HTML artifacts |
| `claude-api` | Build and optimize Claude API applications |

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

## Creating a new skill

```bash
cp -r template-skill my-new-skill
# Edit my-new-skill/SKILL.md
```

Or invoke the skill-creator: `/skill-creator`

## Structure

```
my-skills/
├── README.md
├── install.sh
├── template-skill/           # Scaffold for creating new skills
├── ui-ux-pro-max/            # Design intelligence skill
├── pptx/                     # PowerPoint skill
├── pdf/                      # PDF skill
├── docx/                     # Word skill
├── xlsx/                     # Excel skill
├── mcp-builder/              # MCP server builder
├── skill-creator/            # Skill creation assistant
├── frontend-design/          # Frontend design guidance
├── canvas-design/            # Canvas design
├── brand-guidelines/         # Brand guidelines
├── theme-factory/            # Theme generation
├── algorithmic-art/          # Algorithmic art
├── internal-comms/           # Internal communications
├── doc-coauthoring/          # Document co-authoring
├── webapp-testing/           # Web app testing
├── web-artifacts-builder/    # HTML artifacts builder
├── claude-api/               # Claude API integration
├── slack-gif-creator/        # Slack GIF creator
├── banner-design/            # Banner design
├── brand/                    # Brand identity
├── design/                   # UI/UX design
├── design-system/            # Design system
├── slides/                   # Slide deck design
└── ui-styling/               # UI styling
```
