# Agent 101 — From Idea to Product, No Coding Required

## Mission

Agent 101 teaches **non-technical people** how to turn their ideas into real, working products using AI coding agents. No programming experience needed — just an idea and the willingness to describe what you want.

> **"I have an idea"** → set up tools → describe your vision → iterate with AI → **"I got a product"**

## What is Vibe Coding?

Vibe coding is prompt-driven development. You describe what you want in plain language, and an AI agent writes the code for you. You guide, review, and refine — the AI builds.

You don't need to:
- Know any programming language
- Understand frameworks or libraries
- Write a single line of code yourself

You DO need to:
- Clearly describe what you want
- Give feedback on what the AI produces
- Think through what your product should do

## Target Audience

**Non-technical users** — entrepreneurs, designers, students, professionals, hobbyists — anyone with a product idea who doesn't know how to code. Agent 101 meets them where they are.

## Content Format

- **Single-page HTML guides** — beautiful, self-contained, no build tools needed
- **Website pages** — structured learning path from setup to shipping
- **Scripts & CLI tools** — helper utilities users can run to set up their environment

## What We Teach

### 1. Getting Started — Setting Up Your Workshop
How to install and connect to AI coding tools on your computer:
- **Claude Code** — Anthropic's terminal-based coding agent
- **Antigravity** — Google DeepMind's agentic coding assistant
- **OpenClaw** — open-source alternatives
- Connecting to AI models (API keys, local models, subscriptions)
- Choosing the right tool for your project

### 2. Talking to Your Agent — The Art of Prompting
How to describe what you want so the AI can build it:
- Starting with your idea (the "vibe")
- Breaking big ideas into small, buildable pieces
- Giving effective feedback ("this isn't right" → "I want X instead of Y")
- When to be specific vs. when to let the AI be creative

### 3. Building Your Product — The Journey
The step-by-step process from idea to working product:
- **Brainstorming** — exploring possibilities with your AI agent
- **Planning** — turning brainstorms into an actionable plan
- **Execution** — watching your agent build, step by step
- **Review** — checking the quality of what was built
- **Finishing** — verifying everything works and shipping

### 4. Superpowers — Skills That Make Your Agent Better
The `.agent/skills/` directory contains **9 reusable skills** that supercharge how your AI agent works. These are structured methodologies the agent follows to produce better results. They show up in the `/` command menu.

| Skill | What It Does |
|-------|-------------|
| **workflow** | The master skill — orchestrates brainstorm → plan → implement → review → finish |
| **brainstorm** | Structured idea exploration: goal, constraints, options, risks, recommendation |
| **plan** | Turns ideas into small, verified steps with rollback plans |
| **debug** | Systematic troubleshooting: reproduce → isolate → hypothesize → fix → prevent |
| **review** | Quality checks with severity levels (Blocker/Major/Minor/Nit) |
| **finish** | Verification, change summary, and follow-up checklist |
| **tdd** | Tests-first development for reliable code |
| **python-automation** | Robust Python scripts: retries, pagination, logging, testing |
| **rest-automation** | Reliable API integrations: auth, rate limits, idempotency, error handling |

## Workspace Structure

```
agent101/
├── agent.md                          ← You are here
├── .agent/skills/                    ← 9 agent skills (IDE-discoverable via / menu)
│   ├── superpowers-workflow/         ← Master orchestrator + helper scripts
│   │   ├── SKILL.md
│   │   └── scripts/
│   ├── superpowers-brainstorm/       ← Structured brainstorming
│   ├── superpowers-plan/             ← Structured planning
│   ├── superpowers-debug/            ← Systematic debugging
│   ├── superpowers-review/           ← Code review methodology
│   ├── superpowers-finish/           ← Work finalization
│   ├── superpowers-tdd/              ← Test-driven development
│   ├── superpowers-python-automation/← Python API automation patterns
│   └── superpowers-rest-automation/  ← REST integration best practices
└── superpowers/                      ← Mirror copy (for reference/content)
```

## Design Principles

1. **Zero assumptions about technical knowledge** — explain everything, jargon-free
2. **Show, don't tell** — every concept comes with a working example
3. **Beautiful by default** — all HTML content should look premium, modern, and inviting
4. **One page, one lesson** — each HTML guide is self-contained and completable in one sitting
5. **Tools over theory** — get users building within 10 minutes of starting
6. **Celebrate small wins** — every step should feel like progress
