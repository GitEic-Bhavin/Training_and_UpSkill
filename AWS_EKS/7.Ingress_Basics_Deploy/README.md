Ingress Basics
---

**1. Ingress Annotations** - It is Load Balance Settings which we are going to provisions

**2. Ingress class name** - For define which this Ingress service need to be associated to or belongs to.

If you already created `ingress class` is set to `true` - So we don't need to define Ingress Class name in ingress service.

- Here, All annotations is provided for Load Balancer Settings.

[Ingress Annotation Ref](https://kubernetes-sigs.github.io/aws-load-balancer-controller/latest/guide/ingress/annotations/)


We will perform two demos `1. Ingress service with Default Backend` and `2. Ingress service with Ingress rules`.


1. Ingress service with Default Backend URL