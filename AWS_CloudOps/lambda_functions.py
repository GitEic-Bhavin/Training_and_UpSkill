import boto3, json, random, time
sqs = boto3.client('sqs')
QUEUE_URL = "https://sqs.us-east-1.amazonaws.com/682033465818/Job_Queue_SQS_Lambda"  # update

def lambda_handler(event, context):
    job = {
        "job_id": random.randint(1000, 9999),
        "timestamp": int(time.time()),
        "action": random.choice(["resize-image", "generate-report", "process-data"])
    }
    sqs.send_message(QueueUrl=QUEUE_URL, MessageBody=json.dumps(job))
    return {"status": "sent", "job": job}

