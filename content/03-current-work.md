## CURRENT WORK — FREELANCE PROGRAMMER

Since 2024 I work as a freelance full-stack programmer, building a family of production systems on the **Eco framework** I created and continue to develop: a host-native Domain-Driven Design (DDD) platform that decomposes projects into independent, self-sustaining *domains* (auth, photos, chat, bidding, rag, …) which are recomposed into new projects — *estates* — declared in a single `ecompose.yml` manifest. One Proxmox CT is the machine boundary; services run natively (no Docker) under PM2, exposed through Cloudflare Tunnel. Docker-like reproducibility (`eco up`), webhook deploys on push to `main`. Public documentation lives at <https://eco.stuff8.com>.

**#1. eco — the framework itself** — <https://eco.stuff8.com>
Primary implementation of the Ecology DDD workflow as a private Node CLI: estate provisioning on Proxmox, runtime wiring, `.env` generation, PM2/Caddy orchestration, and Cloudflare tunnel exposure. Ships a bundled Bash workflow for workspace-side orchestration and Proxmox CT lifecycle commands (`eco ct`, `eco up`, `eco configure`, `eco expose`).

**#2. stuff8 — personal inventory to public marketplace** — <https://stuff8.com>
Production estate built with Eco: ten independent domains (`auth`, `photos`, `inventory`, `marketplace`, `bidding`, `chat`, `notifications`, `profile`, `rag`, plus an Astro.js + Tailwind CSS frontend) composed into one application deployed on a single CT. "Inventory-first, marketplace-second": a personal asset inventory whose items can be toggled sellable into a public marketplace with offers, negotiation via realtime chat, and COD transactions. Demonstrates the full composition model across Rust (axum), Go, and Node runtimes.

**#3. assessment — psychometric assessment platform for Indonesian schools**
Rebuild of a legacy Laravel "ODAS+IST" system into a modern SvelteKit 2 frontend (port 2001) + Java Spring Boot 3 backend (port 2002) sharing a JWT auth server. Five psychometric instruments are implemented end-to-end: **DISC**, **Holland RIASEC**, **PAPI Kostick** (with radar-chart results), **IQ CFIT**, and **IQ IST** (image-based subtests scored server-side). Students sit standardized tests, get scored results, and download certificates; guidance counselors and affiliate psychologists administer assessments per school.

**#4. training — online training / LMS platform**
An Eco estate composed of reusable domains — `auth`, `community`, `content`, `courses`, `payments`, `profile`, `site`, `slides`, plus an LMS frontend — rewritten in Rust (axum) from a legacy Java monolith. Handles course/community management, S3/local file uploads, payments, and landing-page/content delivery, deployed via the standard `ecompose.yml` + `eco up` flow.
