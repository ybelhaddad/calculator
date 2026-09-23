# calculator
# Simple Interest Calculator

A small web app that calculates **simple interest** and the **total amount** from a principal, annual rate, and time period.

## Formula

```
SI = (P × R × T) / 100
Total = P + SI
```

| Symbol | Meaning |
|--------|---------|
| **P** | Principal (starting amount) |
| **R** | Annual interest rate (%) |
| **T** | Time in years |
| **SI** | Simple interest earned |
| **Total** | Principal plus interest |

## How to use

1. Open the app in your browser.
2. Enter the **principal** (P), **annual rate** in percent (R), and **time** in years (T).
3. The calculator updates live and shows:
   - **Simple interest** — amount earned
   - **Total amount** — principal + interest

All inputs must be non-negative numbers.

## Tech stack

- [Next.js](https://nextjs.org/) (App Router)
- TypeScript
- Tailwind CSS
- React

## Run locally

Requirements: Node.js 20+ and npm.

```bash
npm install
npm run dev -- -p 3847
```

Then open [http://127.0.0.1:3847](http://127.0.0.1:3847).

Other scripts:

```bash
npm run build   # production build
npm run start   # serve production build
npm run lint    # ESLint
```

## Project layout

- `src/app/` — App Router pages and global styles
- `src/components/simple-interest-calculator.tsx` — calculator UI and formula logic
