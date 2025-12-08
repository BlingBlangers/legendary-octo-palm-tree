import { test, expect } from "@playwright/test";

test.describe("Example E2E Tests", () => {
  test.skip("homepage loads successfully", async ({ page }) => {
    await page.goto("/");
    await expect(page).toHaveTitle(/.*$/);
  });
});
