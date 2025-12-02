/// <reference types="astro/client" />

/**
 * Environment variable type definitions
 *
 * Variables prefixed with PUBLIC_ are available client-side
 * Variables without PUBLIC_ prefix are server-side only
 */
interface ImportMetaEnv {
  // Sentry
  readonly SENTRY_DSN: string;
  readonly PUBLIC_SENTRY_DSN: string;

  // Axiom (server-side only - contains API token)
  readonly AXIOM_API_TOKEN: string;
  readonly AXIOM_DATASET: string;
  readonly PUBLIC_AXIOM_DATASET: string;

  // Matomo (public - client-side analytics)
  readonly PUBLIC_MATOMO_URL: string;
  readonly PUBLIC_MATOMO_SITE_ID: string;

  // Vercel environment
  readonly VERCEL_ENV: "development" | "preview" | "production";
  readonly PUBLIC_VERCEL_ENV: "development" | "preview" | "production";

  // Node environment
  readonly NODE_ENV: "development" | "production" | "test";
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
