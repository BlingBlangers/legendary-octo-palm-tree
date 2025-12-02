/**
 * Observability Configuration
 *
 * Environment variables are set via Terraform Cloud workspace variables
 * and injected at build/deploy time by Vercel.
 *
 * Required Terraform Cloud Variables:
 * - SENTRY_DSN: Sentry Data Source Name for error tracking
 * - AXIOM_API_TOKEN: Axiom API token for logging (sensitive)
 * - AXIOM_DATASET: Axiom dataset name
 * - MATOMO_URL: Matomo instance URL
 * - MATOMO_SITE_ID: Matomo site ID
 */

export interface SentryConfig {
  dsn: string;
  environment: string;
  enabled: boolean;
}

export interface AxiomConfig {
  apiToken: string;
  dataset: string;
  enabled: boolean;
}

export interface MatomoConfig {
  url: string;
  siteId: string;
  enabled: boolean;
}

export interface ObservabilityConfig {
  sentry: SentryConfig;
  axiom: AxiomConfig;
  matomo: MatomoConfig;
}

/**
 * Get the current environment from Vercel/build context
 */
function getEnvironment(): string {
  // Type assertion needed as env vars may be undefined at runtime
  const vercelEnv = import.meta.env.VERCEL_ENV as string | undefined;
  const publicVercelEnv = import.meta.env.PUBLIC_VERCEL_ENV as string | undefined;
  const nodeEnv = import.meta.env.NODE_ENV as string | undefined;

  return vercelEnv ?? publicVercelEnv ?? nodeEnv ?? "development";
}

/**
 * Observability configuration singleton
 * Reads from environment variables set by Terraform Cloud -> Vercel
 */
export const observabilityConfig: ObservabilityConfig = {
  sentry: {
    dsn: import.meta.env.PUBLIC_SENTRY_DSN || import.meta.env.SENTRY_DSN || "",
    environment: getEnvironment(),
    enabled: Boolean(import.meta.env.PUBLIC_SENTRY_DSN || import.meta.env.SENTRY_DSN),
  },
  axiom: {
    apiToken: import.meta.env.AXIOM_API_TOKEN || "",
    dataset:
      import.meta.env.AXIOM_DATASET ||
      import.meta.env.PUBLIC_AXIOM_DATASET ||
      "legendary-octo-palm-tree",
    enabled: Boolean(import.meta.env.AXIOM_API_TOKEN),
  },
  matomo: {
    url: import.meta.env.PUBLIC_MATOMO_URL || "",
    siteId: import.meta.env.PUBLIC_MATOMO_SITE_ID || "",
    enabled: Boolean(import.meta.env.PUBLIC_MATOMO_URL && import.meta.env.PUBLIC_MATOMO_SITE_ID),
  },
};

export default observabilityConfig;
