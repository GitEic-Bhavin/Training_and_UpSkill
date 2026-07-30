EKS - Microservices
---

![alt text](arch.png)

- User Management Create User API will call Notification service Send Notification API to send an email to user when we create a user.

**Pre-requisite**

1. AWS RDS should created 
2. ExternalName Service should created to connect to RDS DB.
3. AWS Load Balancer Controller & External-DNS Service Should created.
4. Create Simple Email Service - SES SMTP Credentials

```bash
AWS_MAIL_SERVER_HOST=email-smtp.ap-south-1.amazonaws.com
AWS_MAIL_SERVER_USERNAME=AKIAZ5TC4ZHNAX2BRIMG
# SES_IAM_USER=ses-smtp-user.20251123-021225
AWS_MAIL_SERVER_PASSWORD=BJ81aIuCnUMb7yyF/Xy6C5jdTFAmS7MvJ2ryrP5yGbtV
```