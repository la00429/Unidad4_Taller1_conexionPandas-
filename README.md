# 🛠️ Unidad 4 - Taller 1: Conectividad Multibase de Datos con Pandas

Este repositorio contiene la solución completa de la guía práctica de conectividad y consultas utilizando **Python**, **Pandas**, **SQLAlchemy** y **PyMongo** sobre tres motores contenerizados con Docker: **MariaDB**, **Oracle XE** y **MongoDB**.

Todo el desarrollo de las consultas y la verificación de las conexiones se encuentra documentado y listo para ejecutar en el archivo interactivo:
👉 **[Taller 1.ipynb](./Taller%201.ipynb)**

---

## 🚀 Pasos previos para ejecutar el taller

Antes de abrir y ejecutar las celdas del archivo `Taller 1.ipynb`, realiza los siguientes pasos para asegurar que las bases de datos estén activas y los datos precargados:

### 1. Iniciar los contenedores de Docker
Cada motor de base de datos tiene su propio entorno dockerizado. Debes iniciar cada uno ejecutando los siguientes comandos en tu terminal (en la raíz de este proyecto):

```bash
# Iniciar MariaDB (Puerto local 3307)
cd mariaDB
docker compose up -d
cd ..

# Iniciar MongoDB (Puerto local 27017)
cd mongoDB
docker compose up -d
cd ..

# Iniciar Oracle XE (Puerto local 1521, Service Name: uptc, Usuario: hr)
cd oracleDB
docker compose up -d
cd ..
```

> 💡 **Nota sobre Oracle:** La base de datos Oracle XE puede tardar entre 1 y 2 minutos en arrancar por completo y ejecutar automáticamente los scripts de inicialización de datos de empleados (`hr_data.sql`).

### 2. Abrir el Cuaderno Jupyter y seleccionar el Kernel
1. Abre este directorio en **VS Code**.
2. Abre el archivo **`Taller 1.ipynb`**.
3. En la esquina superior derecha de tu pantalla, haz clic en **"Select Kernel"** (o "Seleccionar Kernel") y elige tu entorno de **Python 3.10+**.

### 3. Instalar las dependencias de Python
La primera celda del cuaderno Jupyter contiene el comando mágico para instalar todas las dependencias necesarias en tu entorno activo:

```python
%pip install pandas sqlalchemy pymysql oracledb pymongo
```
Solo ejecuta esta celda y estarás listo para interactuar con las bases de datos.

---

## 📂 Contenido del Taller (`Taller 1.ipynb`)

Dentro del cuaderno interactivo encontrarás la solución a las siguientes secciones de la guía:

1. **🐬 Conexión a MariaDB (Relacional):** Consulta de prueba sobre la tabla `departments` mediante SQLAlchemy.
2. **🅾️ Conexión a Oracle (Modo Thin):** Configurada en modo Thin (sin necesidad de instalar Oracle Instant Client en tu máquina local).
3. **📝 Solución a los 15 ejercicios de SQL en Oracle (Esquema HR):**
   * Proyección y filtrado de salarios.
   * Agrupaciones por departamento.
   * Consultas de fechas por mes del año.
   * Filtros de cadenas de caracteres e iniciales.
   * Expresiones regulares avanzadas (`REGEXP_LIKE`).
   * **Bucle Automatizado:** Una lista en Python que ejecuta secuencialmente todas las consultas anteriores y muestra los DataFrames con Pandas.
4. **🍃 Conexión y Consultas a MongoDB (No Relacional):**
   * Consultas documentales de filtrado de edad, color de ojos y género utilizando `pymongo`.
   * Conversión limpia de documentos a DataFrames de Pandas.
