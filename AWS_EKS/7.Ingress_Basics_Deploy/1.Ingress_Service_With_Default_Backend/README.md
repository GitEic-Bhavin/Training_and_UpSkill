Ingress service with Default Backend
---

- We are going to deploy Ingress services with Default Backend

- This is our architecture and explainations how it will works

![alt text](iswdb.png)

- EKS Cluster has 2 Public and 2 Private subnets.

- In private subnet, we will deploy our apps called app1.

- This app1 will have service of NodePort to expose in a public.

- This is our default backend defined in this ingress service.

![alt text](dbcd.png)

- This default backend has defined service named `app1-nginx-nodeport=-service`.

- This NodePort Service is connected to Default backend & Default backend is connected to Application Load Balancer (Created by Ingress controller).

- When user make a request to this ALB URL it will pass to the default backend , default backend has NodePort Service on port 80 for nginx.

- It will go to that pod and user will get access of app1.

