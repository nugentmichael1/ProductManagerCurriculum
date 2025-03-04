# Grafanna
## Installation
The package manager installation method hung up the 2023 Amazon Linux AMI.  Therefore, this direct file install had to be used instead.
```shell
sudo yum install -y https://dl.grafana.com/enterprise/release/grafana-enterprise-11.5.2-1.x86_64.rpm
```
After installation, start and (optionally) enable the service.
```shell
sudo systemctl start grafana
sudo systemctl enable grafana
```

## Configuration
Navigate to machine's ip address in browswer and port number 3000
localhost:3000

### Add data sources
Prometheus
MySQL
### Add metrics to dashboards
Expore option of menu

