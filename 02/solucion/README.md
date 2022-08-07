# Reto 2 - Pregunta 4

> Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 

## Solución

Será necesario modificar los permisos del archivo para que únicamente el propietario pueda acceder y realizar modificaciones. Para lograrlo, se debe ejecutar el siguiente comando en */home*

```bash
chmod u=rwx,g=,o= Lista_Precios
```

De esta forma, sólo *user* puede leer, escribir y ejecutar el archivo, mientras que *group* y *other* no podrán acceder.

Esta solución es viable, pero existe una consideración importante: los usuarios *root* tienen acceso total (privilegiado) a todos los archivos.

