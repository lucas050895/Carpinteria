<?php
include("../bd/conexion.php");
require 'dompdf/vendor/autoload.php';
use Dompdf\Dompdf;
use Dompdf\Options;

date_default_timezone_set('America/Argentina/Buenos_Aires');


// Capturar el porcentaje ingresado
$porcentaje = isset($_POST['porcentaje']) ? floatval($_POST['porcentaje']) : 0;

// Actualizar los precios en la base de datos
if ($porcentaje != 0) {
    $conexion->query("UPDATE productos SET precio = precio + (precio * $porcentaje / 100)");
}

// CONSULTA ACTUALIZADA
$sql = "SELECT productos.codigo AS CODIGO,
                productos.nombre AS NOMBRE,
                productos.precio AS PRECIO,
                categoria.nombre AS CATEGORIA
        FROM productos
        INNER JOIN categoria ON productos.categoria_id = categoria.id
        ORDER BY categoria.nombre";

$resultado = $conexion->query($sql);

// Generar contenido HTML para el PDF
$html = '<h1>Lista de Precio ' . date('d/m').  '</h1>';

$categoria_actual = "";
while ($row = $resultado->fetch_assoc()) {
    // Si la categoría cambió, agregar un subtítulo antes de los productos de esa categoría
    if ($categoria_actual !== $row['CATEGORIA']) {
        if ($categoria_actual !== "") {
            $html .= "</tbody></table>"; // Cierra la tabla anterior si hay una activa
        }
        
        $categoria_actual = $row['CATEGORIA'];
        $html .= "<h2>{$categoria_actual}</h2>
                    <style>
                            h2{
                                width: 100%;
                                max-width: 900px;
                                height: 50px;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                margin: 1em auto .5em;
                                text-align: center;
                                text-transform: uppercase;
                                background-color: #000;
                                color: #fff;
                            }
                    </style>";

        $html .= "<table><thead><tr><th>Código</th><th>Nombre</th><th>Precio</th></tr></thead><tbody>
        
                    <style>
                        table{
                            width: 100%;
                            max-width: 900px;
                            margin: auto;
                            border-collapse: collapse;
                        }
                        table td{
                            padding: 5px;
                            border-bottom: 1px solid #000;
                        }
                        table td:nth-child(1){
                            width: 20%;
                        }
                        table td:nth-child(2){
                            width: 30%;
                            padding-left: 5px;
                            border-left: 1px solid #000;
                            border-right: 1px solid #000;
                        }
                        table td:nth-child(3){
                            width: 30%;
                            text-align: right;
                        }
                    </style>";
    }

    $html .= "<tr>
                <td>{$row['CODIGO']}</td>
                <td>{$row['NOMBRE']}</td>
                <td>$ " . number_format($row['PRECIO'], 2, ',', '.') . "</td>
              </tr>";
}
$html .= "</tbody></table>"; // Cerrar la última tabla después de recorrer todos los datos

// Cerrar conexión
$conexion->close();

// Generar PDF con domPDF
$options = new Options();
$options->set('defaultFont', 'Arial');
$dompdf = new Dompdf($options);
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();



// Descargar el PDF
$dompdf->stream("Lista_precio.pdf", ["Attachment" => false]);
?>