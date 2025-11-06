## Key CFN Syntax and Prefixes

| Prefix / Keyword                 | Meaning / Use                                              |
| -------------------------------- | ---------------------------------------------------------- |
| `!Ref`                           | Returns the **value** of a parameter or resource name      |
| `!GetAtt`                        | Gets an **attribute** (like Endpoint, ARN) from a resource |
| `!Sub`                           | String substitution (like `${VariableName}`)               |
| `!Join`                          | Join values with a delimiter                               |
| `!If`                            | Conditional logic                                          |
| `!Equals`, `!Not`, `!And`, `!Or` | Comparison operators                                       |
| `!ImportValue`                   | Use outputs from another stack                             |
| `!FindInMap`                     | Get values from the `Mappings` section                     |


## Basic Template Structure

| Section                      | Purpose                                              | Example Key                                                |
| ---------------------------- | ---------------------------------------------------- | ---------------------------------------------------------- |
| **AWSTemplateFormatVersion** | (Optional) Template version info                     | `"2010-09-09"`                                             |
| **Description**              | Describe what your template does                     | `"Create MySQL RDS instance"`                              |
| **Parameters**               | Input values (like DB name, username, etc.)          | `DBName`, `DBUser`, `DBPassword`                           |
| **Mappings**                 | Key–value maps (e.g., region → AMI IDs)              | `RegionMap`                                                |
| **Conditions**               | Logic for optional resources                         | `CreateProdResources: !Equals [!Ref EnvType, prod]`        |
| **Resources**                | The **main section** where you declare AWS resources | `MyDBInstance: Type: AWS::RDS::DBInstance`                 |
| **Outputs**                  | Values you want displayed after stack creation       | `DBEndpoint: Value: !GetAtt MyDBInstance.Endpoint.Address` |

## AWS Resource Naming Rule

```yml
LogicalName:
  Type: AWS::<Service>::<ResourceType>
  Properties:
    <Key>: <Value>
```

- Example

```yml
MyBucket:
  Type: AWS::S3::Bucket
  Properties:
    BucketName: my-demo-bucket
```

## Validate your template by aws cli

```bash
aws cloudformation validate-template --template-body file://template.yaml
```

- Check state status

```bash
aws cloudformation describe-stacks --stack-name MyRDSStack
```

- Delete a stack

```bash
aws cloudformation delete-stack --stack-name MyRDSStack
```



