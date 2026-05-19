#!/bin/bash
# Este script es invocado por el entrypoint de gvenzl/oracle-xe.
# Corre en contexto SYS/CDB, por eso conectamos explícitamente como HR al PDB.
echo ">> Inicializando schema HR en PDB UPTC..."
sqlplus -s hr/uptc@//localhost:1521/uptc @/opt/oracle/hr_data.sql
echo ">> Schema HR inicializado correctamente."
