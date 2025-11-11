ASG - Lifecycle Hooks
---

## 2. Lifecycle Hooks

- Lifecycle hooks let you **pause** instance start/stop actions to perform custom steps.

- WorkFlow:

![alt text](asglch.png)

- You can connect lifecycle hooks to:
- **SNS**
- **SQS**
- **EventBridge**

to trigger automation (e.g., Lambda or custom scripts).





Get SQS msg and AutoScale EC2.
---

![alt text](diagram.png)

1. Create SQS

![alt text](sqs.png)

2. Create Role for Lambda and attach this role to lambda.

![alt text](rolelambda.png)

3. Create lambda & choose Runtime as `Runtime: Python 3.10`.

![alt text](clambda.png)

4. Make code for create random msg and send to SQS.

5. To Execute this script every minute by Lambda

  - In the Lambda console, click Add trigger.

  - Select EventBridge (CloudWatch Events).

  - Rule: Create a new rule.

  - Rule name: Give_Rule_Name

  - Schedule expression: rate(1 minute).

  - Click Add.

  - ![alt text](addexp.png)

6. Test your lambda code to send msg to sqs

![alt text](vsqs.png)

7. Create ASG and create Scale out and Scale in policy

8. Create CloudWatch Alarm.

  - Choose SQS > Queue Metrics for metrics

  - ![alt text](sqsm.png)

9. Choose below metrics

  - ![alt text](metric.png)

10. Set treshold for >= 300 msg for Max.

11. Add ASG Actions

12. Choose your ASG and Choose which policy will apply for this metrics.

![alt text](asgactions.png)

13. Same do for Scale in policy

14. Created CW Alerts.

  - ![alt text](cwalerts.png)
