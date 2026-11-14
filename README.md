# Proyecto PIA: Estudiambre

Aplicación descentralizada (DApp) desarrollada para la materia de Aplicaciones de Blockchain y Criptomonedas. Permite a los estudiantes publicar y contratar servicios de manera peer-to-peer mediante un contrato inteligente en Solidity.

---

## Contenido del Proyecto
El repositorio o paquete comprimido incluye los siguientes elementos fundamentales para su funcionamiento:
- **`contracts/`**: Contiene el código fuente en Solidity del contrato inteligente principal (`Estudiambre.sol`), el cual maneja la lógica de registro, almacenamiento y contratación de servicios.
- **`index.html`**: Interfaz gráfica web interactiva que permite a los usuarios conectarse mediante su billetera y consumir las funciones del contrato.
- **`hardhat.config.ts`**: Archivo de configuración del entorno de desarrollo Hardhat, especificando parámetros de compilación y red local.
- **`package.json`**: Archivo de configuración de Node.js con las dependencias y herramientas del entorno.

---

## Metodología de Pruebas y Entorno Utilizado
El desarrollo y la validación funcional del proyecto se llevaron a cabo de manera local integrando las siguientes herramientas:

1. **Hardhat (Entorno de Red Local):** Se configuró y levantó un nodo blockchain local de pruebas (`http://127.0.0.1:8545` con `chainId: 31337`), lo que permitió simular un entorno de red real y disponer de cuentas de prueba con fondos virtuales.
2. **Remix IDE (Compilación y Despliegue):** Se utilizó Remix para compilar el contrato inteligente en Solidity y realizar su despliegue de forma directa hacia la red local.
3. **MetaMask (Billetera y Firma de Transacciones):** Se configuró la extensión del navegador conectada a la red local de desarrollo para autorizar la conexión con la interfaz web, firmar el despliegue del contrato y ejecutar las transacciones de prueba (como publicar y contratar servicios).
4. **Interfaz Web (`index.html`):** Una vez obtenido el hash o dirección del contrato desplegado, se enlazó en la aplicación web para verificar visualmente el consumo de los datos y la interacción interactiva de los usuarios.