FROM gvenzl/oracle-xe:21-slim

# Copia el SQL a una ubicación fuera de init_scripts para que el entrypoint
# no lo ejecute automáticamente como SYS. El shell script lo invocará como HR.
COPY hr_data.sql /opt/oracle/hr_data.sql
