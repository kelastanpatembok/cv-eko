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

**#5. Quran Guardian — Flutter Quran reading app** — <https://quranguardian.vercel.app>
A Flutter mobile app for immersive Quran reading and habit-building: contribution-calendar-style streak/consistency tracker, Instagram-like hadith & Islamic-history stories, distraction-free full-screen reading sanctuary, verse-by-verse synchronized audio (Mishary Alafasy) with offline downloads, and a geographical reading-journey map with prayer-time countdowns. Content pipeline combines **Python scraping** of **Quran.com** structured data (translations, tafsir, verse metadata, word-by-word) persisted in **SQLite** for fast offline access on-device. Shows my full mobile-app readiness — Flutter on Android, backed by a Python/scripting data layer.

**#6. MicroCMS — enterprise digital signage platform** — <https://cms.microvision.co.id>
Multi-tenant digital signage CMS built with a **Next.js + Supabase** web backend, driving multiple presentation players: a **Java Android** app and a **.NET desktop** player. Supports real-time monitoring, over-the-air deployment/updating of content, Canva-like drag-and-drop layout management, and **LG WebOS** signage playback. Enterprise-grade security with admin-controlled access and role-based permissions (Owner / Admin / Member / Viewer).
