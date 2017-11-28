using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSanchez2016.Clases;
using Oracle.DataAccess.Client;
using System.Data;

namespace WebSanchez2016.es.Contactos
{
    public partial class Directores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaInfo(1);
            }
        }

        public void CargaInfo(Int32 paramTipoContacto)
        {
            string strHTMLInfoContacto = string.Empty;
            BDC objCnn = new BDC();

            try
            {
                using(OracleConnection cnn = objCnn.getConection())
                {
                    try
                    {
                        cnn.Open();

                        OracleCommand cmd = new OracleCommand();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "iddba.web16.GetInfoContactos";
                        cmd.Connection = cnn;
                        cmd.Parameters.Add("paramTipoContacto", OracleDbType.Int32, ParameterDirection.Input);
                        cmd.Parameters["paramTipoContacto"].Value = paramTipoContacto;
                        cmd.Parameters.Add("paramInfo", OracleDbType.RefCursor, 500);
                        cmd.Parameters["paramInfo"].Direction = ParameterDirection.Output;

                        OracleDataReader rdr = cmd.ExecuteReader();
                        TableRow renglon = new TableRow();
                        TableCell celda1 = new TableCell();
                        TableCell celda2 = new TableCell();
                        TableCell celda3 = new TableCell();
  
                        //Ingresamos el encabezado de los directores, independientemente de que si se traigan valores o no.
                        celda1.Text = "Directores";
                        celda1.CssClass = "encabezado";
                        celda2.ColumnSpan = 2;
                        renglon.Cells.Add(celda1);
                        renglon.Cells.Add(celda2);
                        tablaDirectorio.Rows.Add(renglon);
                        //Le damos un poco de formato a la tabla
                        renglon = new TableRow();
                       celda3.CssClass = "ContactosEspacio";
                        celda3.ColumnSpan = 3;
                        renglon.Cells.Add(celda3);
                        tablaDirectorio.Rows.Add(renglon);

                        int i = 0;
                        if (rdr.HasRows) {
                            //agregamos los nombres de las personas a una matriz para que sea mas facil de agregar a la tabla
                            string[] directorio = new string[6] ;
                            while (rdr.Read()) {
                                directorio[i++] =rdr["nombre_puesto"].ToString();
                                directorio[i++] =rdr["email"].ToString();
                                if (i >= 5)
                                {
                                    ingresaFila(directorio);
                                    i = 0;
                                }
                            }
                            //agregamos esta validación para cuando haya menos de tres columnas
                            if (i>0){
                                ingresaFila(directorio);
                                i = 0;                              
                            }                          
                         }
                    }
                    catch (Exception ExCargaInfoInterno)
                    {
                        Console.WriteLine(ExCargaInfoInterno.Message);
                    }
                    finally
                    {
                        if (cnn.State == ConnectionState.Open)
                            cnn.Close();
                    }
                }
            }
            catch (Exception ExCargaInfo)
            {
                Console.WriteLine(ExCargaInfo.Message);
            }
        }
        /**
         * Función para agregar los valores del arreglo en una fila de la tabla 
         */
        private void ingresaFila(string[] directorio)
{

                TableRow renglonUno = new TableRow();
                TableCell celdaUno = new TableCell();
                TableCell celdaDos = new TableCell();
                TableCell celdaTres = new TableCell();
                //Agregamos los valores y agrgamos las celdas
                celdaUno.Text = "<div>"+regresaLiga(directorio[0]) +"</div><div>"+regresaLiga(directorio[1]) +"</div>";
                celdaDos.Text = "<div>" + regresaLiga(directorio[2]) + "</div><div>" + regresaLiga(directorio[3]) + "</div>";
                celdaTres.Text = "<div>" + regresaLiga(directorio[4]) + "</div><div>" + regresaLiga(directorio[5]) + "</div>";
                //validamos si es correo electronico o un texto nornmal
                renglonUno.Cells.Add(celdaUno);
                renglonUno.Cells.Add(celdaDos);
                renglonUno.Cells.Add(celdaTres);
                tablaDirectorio.Rows.Add(renglonUno);
                //Limpiamos la variable para las demas columnas
                for (int i = 0; i < directorio.Length; i++)
                {
                    directorio[i] = "";
                   }

    //}
            TableCell celdaEspacio = new TableCell();
            TableRow renglonEspacio = new TableRow();
            celdaEspacio.ColumnSpan=3;
            celdaEspacio.CssClass = "ContactosEspacio";
             renglonEspacio.Cells.Add(celdaEspacio);
            tablaDirectorio.Rows.Add(renglonEspacio);
     
        }

private string regresaLiga(string valor){
    //Funcion para ver si se tiene una arroba en el text y ponerlo como Mailto
    string cadena = valor.Contains("@")?"<a class=\"ContactosCorreo\" href=\"mailto:" + valor + "\">" + valor + "</a>":valor;
    return cadena;

}

    }
}

