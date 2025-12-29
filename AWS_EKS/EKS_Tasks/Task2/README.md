Build a Serverless App Using API Gateway + Lambda + DynamoDB
---

![alt text](<task2arch.png>)

## 1. Create a DynamoDB table (e.g., Products).

![alt text](dydb.png)

## 2. Create API for Handle Lambda request

### 2.1 Create API and Resource

- Go to API Gateway > Create APIs - `test-api`
- Create resource `/product`.

![alt text](capi.png)

### 2.2 Create POST method

- Choose your resource `/product` > Create method
- Choose `POST`
- Integration type - `Lambda functions` > Choose your lambda function for POST.

![alt text](cpostm.png)



## 3. Create Basic pre-requisite role for Lambda for DynamoDB.

![alt text](lambdap.png)

### 3.1 Create Lambda functions:

  - a. Add item (Add Product (POST))

  - Create lambda > choose runtime Python 3.12
  - Choose Existing role of lambda

  ![alt text](crole.png)

### 3.2 Deploy lambda post functions

![alt text](dl.png)

### 3.3 Varify table updated in DynamoDB.

- Go to DynamoDB > Table `Products` > Look for `Item Count`

![alt text](ic.png)

- It's still `0` due to DynamoDB updates the following information approximately every six hours.

- Ensure by aws cli
```bash
aws dynamodb scan --table-name Products --region <Your_Regions>
```

![alt text](items.png)

## 4. Create Lambda for Get Method

- Create Test Env to get product details via `id`

```json
{
  "pathParameters": {
    "id": "FORCE-ID-123"
  }
}
```

- Deploy lamdba > Test

![alt text](gl.png)

## 5. Create GET Method in API Gateway

![alt text](getapi.png)


## 6. Deploy API

- Create Stage env `Dev`

- Deploy API

![alt text](deployapi.png)

- Browse Dev Stage API URL

![alt text](apid.png)
