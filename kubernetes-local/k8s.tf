resource "kubernetes_namespace" "example" {
  metadata {
    name = "k8s-ns-by-tf"
  }
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    labels = {
      test = "DemoApp"
    }
    namespace = "k8s-ns-by-tf"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "DemoApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "DemoApp"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "example"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
