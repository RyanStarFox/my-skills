# my-skills

My personal collection of [Claude Code](https://code.claude.com/docs/en/skills) skills, following the [Agent Skills](https://agentskills.io) open standard.

## Installation

```bash
git clone --recurse-submodules https://github.com/RyanStarFox/my-skills.git
cd my-skills
./install.sh
```

The install script symlinks all skills into `~/.claude/skills/`, making them available across all your projects.

To update third-party skills:

```bash
git submodule update --remote --merge
./install.sh
```

## Available skills

### Third-party skills (via git submodules)

| Skill | Source | Description |
|-------|--------|-------------|
| `ui-ux-pro-max` | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | Design intelligence — 67 UI styles, 161 color palettes, 57 font pairings |
| `banner-design` | ui-ux-pro-max-skill | Banner and hero image design |
| `brand` | ui-ux-pro-max-skill | Brand guidelines and identity |
| `design` | ui-ux-pro-max-skill | General UI/UX design guidance |
| `design-system` | ui-ux-pro-max-skill | Design system generation |
| `slides` | ui-ux-pro-max-skill | Slide deck design |
| `ui-styling` | ui-ux-pro-max-skill | UI component styling |
| `pptx` | [anthropics/skills](https://github.com/anthropics/skills) | PowerPoint creation, editing, and analysis |
| `pdf` | anthropics/skills | PDF creation and editing |
| `docx` | anthropics/skills | Word document creation and editing |
| `xlsx` | anthropics/skills | Excel spreadsheet creation and editing |
| `mcp-builder` | anthropics/skills | Build MCP servers |
| `skill-creator` | anthropics/skills | Create new Claude Code skills |
| `frontend-design` | anthropics/skills | Frontend UI design guidance |
| `canvas-design` | anthropics/skills | Canvas and visual design |
| `brand-guidelines` | anthropics/skills | Brand guidelines application |
| ... | | _and more from anthropics/skills_ |

### Custom skills

| Skill | Description |
|-------|-------------|
| _(your custom skills here)_ | |

## Creating a new skill

```bash
# Copy the template
cp -r template-skill my-new-skill

# Edit the SKILL.md file
# See https://code.claude.com/docs/en/skills for full reference
```

Or use the skill-creator from anthropics/skills: `/skill-creator`

## Structure

```
my-skills/
├── README.md
├── install.sh                    # Symlinks skills to ~/.claude/skills/
├── template-skill/               # Scaffold for creating new skills
│   └── SKILL.md
├── ui-ux-pro-max-skill/          # Git submodule — nextlevelbuilder/ui-ux-pro-max-skill
└── anthropics-skills/            # Git submodule — anthropics/skills
    └── skills/
        ├── pptx/
        ├── pdf/
        ├── docx/
        └── ...
```

## Adding third-party skills

```bash
# As a git submodule (recommended for large/complex skills)
git submodule add <repo-url> <directory-name>

# Or copy the skill directory directly (for simple single-file skills)
cp -r /path/to/skill ./skill-name
```
