# Proyecto PIA: Estudiambre

Aplicación descentralizada (DApp) desarrollada para la materia de Aplicaciones de Blockchain y Criptomonedas. Su objetivo principal es conectar a estudiantes mediante un entorno peer-to-peer para la publicación y contratación de servicios.

## Contenido del Repositorio
El proyecto cuenta con los siguientes archivos principales en su estructura:
- **`portada.md`**: Portada oficial del proyecto con los datos de la institución, materia, profesor y alumno.
- **`estudiambre.sol`**: Contrato inteligente escrito en Solidity que contiene la lógica de negocio para el registro y gestión de servicios.
- **`index.html`**: Interfaz gráfica web diseñada para interactuar directamente con la blockchain mediante MetaMask.
- **`README.md`**: Documentación general y guía del proyecto.

## Metodología de Pruebas y Entorno Utilizado
El desarrollo y la validación funcional de la DApp se llevaron a cabo localmente bajo el siguiente flujo:
1. **Entorno Blockchain Local (Hardhat):** Se configuró y levantó un nodo local de pruebas para simular la red y proveer cuentas con saldo virtual.
2. **Compilación y Despliegue (Remix IDE):** Se utilizó Remix conectado a la red local mediante la extensión de navegador MetaMask para desplegar el contrato `estudiambre.sol`.
3. **Interfaz Web (`index.html`):** Una vez desplegado el contrato, se enlazó con la interfaz gráfica para validar la ejecución de transacciones y llamadas de forma interactiva.

---
*Nota:* El proyecto queda a consideración para su revisión estática y pruebas locales interactivas.