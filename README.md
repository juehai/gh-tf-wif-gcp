### About WIF

Service account keys are a security risk if compromised. Avoid service account keys and instead use the [WIF(Workload identity federation)](https://cloud.google.com/iam/docs/workload-identity-federation). You can learn more about the best way to authenticate service accounts on Google Cloud in this repo.

Unlike JSON service account keys, Workload Identity Federation generates short-lived OAuth 2.0 or JWT credentials. By default, these credentials automatically expire one hour after they are created, potentially reducing the time a malicious actor would be able to exploit a compromised credential.

Because Workload Identity Federation uses short-lived credentials, there are no secrets to rotate or manage beyond the initial configuration.

1. GITHUB -> GCP Security Token Services -> Workload Identity Pool -> Token -> GITHUB
2. GITHUB -> Service Account -> GCP services
