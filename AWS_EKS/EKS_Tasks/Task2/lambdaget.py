# import json
# import boto3
# from decimal import Decimal

# dynamodb = boto3.resource('dynamodb')
# table = dynamodb.Table('Products')

# def decimal_default(obj):
#     if isinstance(obj, Decimal):
#         return float(obj)
#     raise TypeError

# def lambda_handler(event, context):
#     product_id = event.get('pathParameters', {}).get('id')
#     if not product_id:
#         return {
#             'statusCode': 400,
#             'body': json.dumps({'message': 'Product id is required'})
#         }

#     response = table.get_item(Key={'id': product_id})

#     if 'Item' not in response:
#         return {
#             'statusCode': 404,
#             'body': json.dumps({'message': 'Product not found'})
#         }

#     return {
#         'statusCode': 200,
#         'body': json.dumps(response['Item'], default=decimal_default)
#     }


import json
import boto3
from decimal import Decimal

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('Products')

def decimal_default(obj):
    if isinstance(obj, Decimal):
        return float(obj)
    raise TypeError

def lambda_handler(event, context):
    # Try to get id from path OR query string
    path_id = (event.get('pathParameters') or {}).get('id')
    query_id = (event.get('queryStringParameters') or {}).get('id')

    product_id = path_id or query_id

    # 🔹 CASE 1: Get product by ID
    if product_id:
        response = table.get_item(Key={'id': product_id})

        if 'Item' not in response:
            return {
                'statusCode': 404,
                'body': json.dumps({'message': 'Product not found'})
            }

        return {
            'statusCode': 200,
            'body': json.dumps(response['Item'], default=decimal_default)
        }

    # 🔹 CASE 2: List all products
    response = table.scan()

    return {
        'statusCode': 200,
        'body': json.dumps(response['Items'], default=decimal_default)
    }
