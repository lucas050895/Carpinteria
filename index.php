<?php
    include("bd/conexion.php");

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carpinteria</title>

    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<form method="POST" action="links/pdf.php">
    <div>
        <label for="porcentaje">Porcentaje</label>
        <input type="text" name="porcentaje" id="porcentaje" placeholder="0.00">
        <button type="submit" name="generar_pdf">GENERAR PDF</button>
    </div>
</form>

<table>
    <?php  
        // Capturar el porcentaje ingresado
        $porcentaje = isset($_POST['porcentaje']) ? floatval($_POST['porcentaje']) : 0;

        // CONSULTA
        $sql = "SELECT productos.codigo AS CODIGO,
                        productos.nombre AS NOMBRE,
                        productos.precio AS PRECIO,
                        categoria.id AS CATEGORIA_ID,
                        categoria.nombre AS CATEGORIA
                FROM productos
                INNER JOIN categoria ON productos.categoria_id = categoria.id
                ORDER BY categoria.id";

        $resultado = $conexion->query($sql);

        // VERIFICAR SI HAY RESULTADOS
        if ($resultado->num_rows > 0) {
            $categoria_actual = "";

            while ($row = $resultado->fetch_assoc()) {
                // Verificar si la categoría ha cambiado
                if ($categoria_actual !== $row['CATEGORIA']) {
                    if ($categoria_actual !== "") {
                        echo "</tbody></table>";
                    }

                    $categoria_actual = $row['CATEGORIA'];
                    echo "<h2>{$categoria_actual}</h2>";
                    echo "<table>";
                    echo "<thead><tr><th>Código</th><th>Nombre</th><th>Precio</th></tr></thead>";
                    echo "<tbody>";
                }

                // Calcular el nuevo precio
                $nuevo_precio = $row['PRECIO'] + ($row['PRECIO'] * $porcentaje / 100);

                // Mostrar el producto con el precio actualizado
                echo "<tr>";
                echo "<td>{$row['CODIGO']}</td>";
                echo "<td>{$row['NOMBRE']}</td>";
                echo "<td> $ " . number_format($nuevo_precio, 2, ',', '.') . "</td>";
                echo "</tr>";
            }

            echo "</tbody></table>";
        }

        $conexion->close();
    ?>
</table>
    
</body>
</html>