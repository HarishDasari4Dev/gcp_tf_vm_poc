# Terraform-VM-POC

## Step 1: Create a Service Account

1. Log in to Google Cloud Console.
2. Navigate to **IAM & Admin** and click on **Service Accounts**.
3. Click on **CREATE SERVICE ACCOUNT**.
4. Enter service account details and click on **CREATE AND CONTINUE**.
5. In the **Select a role** dropdown, choose the required role.
6. Click on **CONTINUE**.
7. Click on **DONE**.

## Step 2: Create Credentials Key File

Execute the following command to create service account keys:

```bash
gcloud iam service-accounts keys create KEY_FILE --iam-account=SA_NAME@PROJECT_ID.iam.gserviceaccount.com
```

Replace the following values:
- `KEY_FILE`: The path to a new output file for the private key—for example, `~/sa-private-key.json`.
- `SA_NAME`: The name of the service account to create a key for.
- `PROJECT_ID`: Your Google Cloud project ID.

### Sample File

```json
{
  "type": "service_account",
  "project_id": "PROJECT_ID",
  "private_key_id": "KEY_ID",
  "private_key": "-----BEGIN PRIVATE KEY-----\nPRIVATE_KEY\n-----END PRIVATE KEY-----\n",
  "client_email": "SERVICE_ACCOUNT_EMAIL",
  "client_id": "CLIENT_ID",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/SERVICE_ACCOUNT_EMAIL"
}
```
