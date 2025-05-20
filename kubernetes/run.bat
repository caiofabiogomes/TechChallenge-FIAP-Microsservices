kubectl apply -f ./grafana/grafana-config.yaml
kubectl apply -f ./grafana/grafana-deployment.yaml
kubectl apply -f ./grafana/grafana-kong-dashboard.yaml
kubectl apply -f ./grafana/grafana-pv.yaml
kubectl apply -f ./grafana/grafana-pvc.yaml
kubectl apply -f ./grafana/grafana-svc.yaml

kubectl apply -f ./kong/kong-configmap.yaml
kubectl apply -f ./kong/kong-deployment.yaml
kubectl apply -f ./kong/kong-svc.yaml

kubectl apply -f ./microsservices/consumers/create-contacts/create-contacts-configmap.yaml
kubectl apply -f ./microsservices/consumers/create-contacts/create-contacts-deployment.yaml
kubectl apply -f ./microsservices/consumers/create-contacts/create-contacts-svc.yaml

kubectl apply -f ./microsservices/consumers/delete-contacts/delete-contacts-configmap.yaml
kubectl apply -f ./microsservices/consumers/delete-contacts/delete-contacts-deployment.yaml
kubectl apply -f ./microsservices/consumers/delete-contacts/delete-contacts-svc.yaml

kubectl apply -f ./microsservices/consumers/get-contacts/get-contacts-configmap.yaml
kubectl apply -f ./microsservices/consumers/get-contacts/get-contacts-deployment.yaml
kubectl apply -f ./microsservices/consumers/get-contacts/get-contacts-svc.yaml

kubectl apply -f ./microsservices/consumers/update-contacts/update-contacts-configmap.yaml
kubectl apply -f ./microsservices/consumers/update-contacts/update-contacts-deployment.yaml
kubectl apply -f ./microsservices/consumers/update-contacts/update-contacts-svc.yaml

kubectl apply -f ./microsservices/producers/contacts-producer-configmap.yaml
kubectl apply -f ./microsservices/producers/contacts-producer-deployment.yaml
kubectl apply -f ./microsservices/producers/contacts-producer-svc.yaml

kubectl apply -f ./prometheus/prometheus-configmap.yaml
kubectl apply -f ./prometheus/prometheus-deployment.yaml
kubectl apply -f ./prometheus/prometheus-svc.yaml

kubectl apply -f ./rabbitmq/rabbitmq-deployment.yaml
kubectl apply -f ./rabbitmq/rabbitmq-pv.yaml
kubectl apply -f ./rabbitmq/rabbitmq-pvc.yaml
kubectl apply -f ./rabbitmq/rabbitmq-svc.yaml

kubectl apply -f sqlserver/sql-init-scripts-configmap.yaml
kubectl apply -f sqlserver/sqlserver-configmap.yaml
kubectl apply -f sqlserver/sqlserver-deployment.yaml
kubectl apply -f sqlserver/sqlserver-migration-job.yaml
kubectl apply -f sqlserver/sqlserver-pv.yaml
kubectl apply -f sqlserver/sqlserver-pvc.yaml
kubectl apply -f sqlserver/sqlserver-svc.yaml