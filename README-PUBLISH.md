# Publishing to Chrome Web Store

This document explains how to set up automated publishing to the Chrome Web Store using GitHub Actions.

## Prerequisites

1. A Chrome Web Store developer account
2. Your extension already created in the Chrome Web Store Developer Dashboard
3. GitHub repository with the workflow file in place

## Setting up Chrome Web Store API Access

To publish to the Chrome Web Store automatically, you'll need to obtain API credentials:

### 1. Create a Google Cloud Platform project

1. Go to the [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project
3. Enable the Chrome Web Store API for your project

### 2. Create OAuth credentials

1. In your GCP project, go to "APIs & Services" > "Credentials"
2. Click "Create Credentials" and select "OAuth client ID"
3. Set the application type to "Desktop app"
4. Name your client and create it
5. Note down the Client ID and Client Secret

### 3. Get a refresh token

You'll need to generate a refresh token using your client ID and client secret:

```bash
# Install the CLI tool
npm install -g chrome-webstore-upload-cli

# Generate a refresh token
chrome-webstore-upload-cli@latest init --client-id YOUR_CLIENT_ID --client-secret YOUR_CLIENT_SECRET
```

Follow the prompts to authorize the application and get your refresh token.

## Setting up GitHub Secrets

Add the following secrets to your GitHub repository:

1. Go to your repository on GitHub
2. Navigate to "Settings" > "Secrets and variables" > "Actions"
3. Add the following secrets:
   - `CHROME_CLIENT_ID`: Your Google OAuth Client ID
   - `CHROME_CLIENT_SECRET`: Your Google OAuth Client Secret
   - `CHROME_REFRESH_TOKEN`: The refresh token you generated

## Updating the Workflow File

1. Open the `.github/workflows/release.yml` file
2. Uncomment the Chrome Web Store publishing steps
3. Replace `YOUR_EXTENSION_ID` with your actual Chrome Web Store extension ID

## Publishing Process

Once everything is set up:

1. Update the version in `manifest.json`
2. Create and push a new tag:
   ```bash
   git tag v0.0.x
   git push origin v0.0.x
   ```
3. The GitHub Action will:
   - Build your extension
   - Create a GitHub release with the ZIP file
   - Upload the new version to the Chrome Web Store
   - Publish the new version (if auto-publishing is enabled)

## Manual Review

Note that the Chrome Web Store may still require manual review before your extension is published, depending on your extension's permissions and other factors.
