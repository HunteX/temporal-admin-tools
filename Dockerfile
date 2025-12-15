FROM temporalio/admin-tools:1.29.1-tctl-1.18.4-cli-1.5.0 AS source

FROM scratch

COPY --from=source /usr/local/bin/temporal-sql-tool /usr/local/bin/temporal-sql-tool

ENTRYPOINT ["/usr/local/bin/temporal-sql-tool"]