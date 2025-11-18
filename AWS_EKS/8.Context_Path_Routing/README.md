Ingress Context Path Based Routing
---

![alt text](cpbr.png)

- We are going to deploy multiple appliation for context path based routing using aws laod balancer controller with Ingress rules.

## 1. Create deployment for Multiple Services.

### 1.1 Create deployment for Service A.

```yml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app1-nginx-deployment
  labels:
    app: app1-nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app1-nginx
  template:
    metadata:
      labels:
        app: app1-nginx
    spec:
      containers:
        - name: app1-nginx-c
          image: stacksimplify/kube-nginxapp1:1.0.0
          ports:
            - containerPort: 80

---

apiVersion: apps/v1
kind: Deployment
metadata:
  name: app2-nginx-deployment
  labels:
    app: app2-nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app2-nginx
  template:
    metadata:
      labels:
        app: app2-nginx
    spec:
      containers:
        - name: app2-nginx-c
          image: stacksimplify/kube-nginxapp1:1.0.0
          ports:
            - containerPort: 80
        
---

apiVersion: apps/v1
kind: Deployment
metadata:
  name: app3-nginx-deployment
  labels:
    app: app3-nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app3-nginx
  template:
    metadata:
      labels:
        app: app3-nginx
    spec:
      containers:
        - name: app3-nginx-c
          image: stacksimplify/kube-nginxapp1:1.0.0
          ports:
            - containerPort: 80
```

### 1.2 Create Services for Service A, Service B, Service C.

- Here, We have to define annotations for health-check for each service due to we want to deploy multiple applications.

- Also we will have to add health-check path in **Ingress Service**.

```yml
apiVersion: v1
kind: Service
metadata:
  name: app1-nginx-nodeport-service
  labels:
    app: app1-nginx
# NOTES: We will require to add health-check path in annotation in this service if we are planning to deploy multiple applications targets like app1/index.html, app2/index.html using Load Balancer Controller Ingress.
  annotations:
    alb.ingress.kubernetes.io/healthcheck-path: /app1/index.html
spec:
  selector:
    app: app1-nginx
  type: NodePort
  ports:
  - name: nginx-port
    port:  80
    targetPort:  80
```

### 1.3 Create Ingress Services

