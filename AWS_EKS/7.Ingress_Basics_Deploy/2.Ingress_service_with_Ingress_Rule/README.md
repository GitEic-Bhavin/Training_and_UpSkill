Ingress service with Ingress rules
---

![alt text](iswir.png)

- Here, we will use `Ingress Rules` and it will allow to route request by define paths by `/` .

- If i pass this path <LB_URL>/path1/index.html , it will allow to get all info inside path1/*.

- While you deploy Ingress service , API Server will detect it and create Load Balancer's Listeners: HTTP and Listeners: HTTPS.

Path Types
---

- `1. ImplementationsSpecific` - with this path type, it will matching is up to the controller implementing the IngressClass.

- `2. Exact` - Matches the URL path exactly and with **Cas Sensitive**.

| Kind  | Path    | Request Path | Matches? | Reason                  |
| ----- | ------- | ------------ | -------- | ----------------------- |
| Exact | `/foo`  | `/foo`       | Yes    | Exact match             |
| Exact | `/foo`  | `/bar`       | No     | Different path          |
| Exact | `/foo`  | `/foo/`      | No     | Trailing slash mismatch |
| Exact | `/foo/` | `/foo`       | No     | Missing slash           |


- `3. Prefix` - Matches based on a URL path prefix split by `/.` matching is **Case Sensitive** and done on a path element by element basis.

| Kind   | Path                    | Request Path    | Matches? | Reason                  |
| ------ | ----------------------- | --------------- | -------- | ----------------------- |
| Prefix | `/`                     | (all paths)     | Yes    | Root matches everything |
| Prefix | `/foo`                  | `/foo`, `/foo/` | Yes    | Prefix match            |
| Prefix | `/foo/`                 | `/foo`, `/foo/` | Yes    | Trailing slash ignored  |
| Prefix | `/aaa/bb`               | `/aaa/bbb`      | No     | `/bb` ≠ `/bbb`          |
| Prefix | `/aaa/bbb`              | `/aaa/bbb`      | Yes    | Exact prefix            |
| Prefix | `/aaa/bbb/`             | `/aaa/bbb`      | Yes    | Slash ignored           |
| Prefix | `/aaa/bbb`              | `/aaa/bbb/`     | Yes    | Matches subpath         |
| Prefix | `/aaa/bbb`              | `/aaa/bbb/ccc`  | Yes    | Subpath matches         |
| Prefix | `/aaa/bbb`              | `/aaa/bbbxyz`   | No     | String prefix mismatch  |
| Prefix | `/`, `/aaa`             | `/aaa/ccc`      | Yes    | `/aaa` prefix matches   |
| Prefix | `/`, `/aaa`, `/aaa/bbb` | `/aaa/bbb`      | Yes    | Longest prefix          |
| Prefix | `/`, `/aaa`, `/aaa/bbb` | `/ccc`          | Yes    | Fallback to `/`         |


**NOTE** - All configurations steps for this Ingress Rule Ingress Service will same as we performed previously for Ingress service with Default Backend.

- Ingress.yml will have a change in spec.

```yml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ingress-nginxapp1
  labels:
    app: app1-nginx
  annotations:          # Define your Load balancer Settings here.
  # Give ALB Load Balancer Name
    alb.ingress.kubernetes.io/load-balancer-name: my-app1-defaultbackend-lb

  # Give ALB Types: Internal or internet-facing (public)
    alb.ingress.kubernetes.io/scheme: internet-facing
  # Check health-check for our ALB
    alb.ingress.kubernetes.io/healthcheck-protocol: HTTP
  # alb.ingress.kubernetes.io/healthcheck-port specifies the port used when performing health check on targets.
    alb.ingress.kubernetes.io/healthcheck-port: traffic-port    
# traffic-port: This is the port number that the Target Group uses to send incoming application traffic to the targets. 
# Since we are using a NodePort service, the traffic-port must be set to the NodePort (e.g., 31234).
# healthcheck-port: traffic-port: By setting the health check port to traffic-port, you are telling the ALB: "The port I use for sending live traffic (the NodePort) is the exact same port that you should use to check the health of the target."

# Check health check on path of app1.
    alb.ingress.kubernetes.io/healthcheck-path: /app1/index.html

# Check for health check of interval for 10s.
    alb.ingress.kubernetes.io/healthcheck-interval-seconds: '10'

# Health-check will fail if no respons within 8s.
    alb.ingress.kubernetes.io/healthcheck-timeout-seconds: '8'

# status code that should be expected when doing health checks against the specified health check path.
    alb.ingress.kubernetes.io/success-codes: '200'

# Check for health-check atleast 2 times before considering into UNHEALTHY
    alb.ingress.kubernetes.io/healthy-threshold-count: '2'

    alb.ingress.kubernetes.io/unhealthy-threshold-count: '2'


spec:
  ingressClassName: my-aws-ingress-class
  rules:
    - http:
        paths:
          - path: / # /, /* etc
            pathType: Prefix # You can choose Prefix, Exact, implementationSpecific.
            backend:
              service:
                name: app1-nginx-nodeport-service
                port: 
                  number: 80
```


