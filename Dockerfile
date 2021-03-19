FROM grafana/grafana:latest
RUN grafana-cli plugins install vertamedia-clickhouse-datasource
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
