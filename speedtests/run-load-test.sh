docker-compose up -d influxdb grafana
echo "--------------------------------------------------------------------------------------"
echo "Load testing with Grafana dashboard http://localhost:3000/d/k6/k6-load-testing-results"
echo "--------------------------------------------------------------------------------------"
docker-compose run --rm k6 run /scripts/go.js
docker-compose run --rm k6 run /scripts/rust.js
docker-compose run --rm k6 run /scripts/node.js
docker-compose run --rm k6 run /scripts/dotnet.js
