const { test, expect } = require('@playwright/test');


test('UI test for an App', async ({ page }) => {

    //login and reach orders page
    await page.goto("http://kong:8000/ui");
    await page.locator("//li[@class='mb-2']").textContent("Get started by editing");
    await page.locator("//li[@class='mb-2']").textContent("This is a sample app");
    await page.getByText('App Footer made for JavaScript testing');
    await getByText("Save and see your changes instantly.");


})