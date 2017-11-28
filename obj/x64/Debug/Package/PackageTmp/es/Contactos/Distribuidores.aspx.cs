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
    public partial class Distribuidores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaInfo(7);
            }
        }

        public void CargaInfo(Int32 paramTipoContacto)
        {
            string strHTMLInfoContacto = string.Empty;
            BDC objCnn = new BDC();
            try
            {
                using (OracleConnection cnn = objCnn.getConection())
                {
                    try
                    {
                        //Hacemos la magia con las conexiones hacia Oracle
                        cnn.Open();
                        OracleCommand cmd = new OracleCommand();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "iddba.web16.GetInfoDistribuidores";
                        cmd.Connection = cnn;
                        cmd.Parameters.Add("paramInfo", OracleDbType.RefCursor, 500);
                        cmd.Parameters["paramInfo"].Direction = ParameterDirection.Output;
                        OracleDataReader rdr = cmd.ExecuteReader();
                        //Empezamos con el armado de la tabla
                        TableRow renglon = new TableRow();
                        TableCell celda1 = new TableCell();
                        TableCell celda2 = new TableCell();
                        TableCell celda3 = new TableCell();

                        //Ingresamos el encabezado de los distribuidores, independientemente de que si se traigan valores o no.
                        celda1.Text = "Distribuidores";
                        celda1.CssClass = "encabezado";
                        celda2.ColumnSpan = 2;
                        renglon.Cells.Add(celda1);
                        renglon.Cells.Add(celda2);
                        tablaDirectorio.Rows.Add(renglon);
                        //Le damos un poco de formato a la tabla agregando un espacio en blanco
                        renglon = new TableRow();
                        celda3.CssClass = "ContactosEspacio";
                        celda3.ColumnSpan = 3;
                        renglon.Cells.Add(celda3);
                        tablaDirectorio.Rows.Add(renglon);
                        //Sigue el llenado de datos hacia la tabla
                        int i = 0;
                        if (rdr.HasRows)
                        {
                                ///////////////////////////////////////////////////////////////////////////////////////////
                                //agregamos los nombres de los distribuidores a una matriz para que sea mas facil de agregar a la tabla
                            //ya que se requieren tres columnas por cada renglon
                                string[] directorio = new string[21];
                                while (rdr.Read())
                                {
                                    directorio[i++] = rdr["ciudad"].ToString();
                                    directorio[i++] = rdr["nombre"].ToString();
                                    directorio[i++] = rdr["email"].ToString();
                                    directorio[i++] = rdr["linea"].ToString();
                                    directorio[i++] = rdr["telefono"].ToString();
                                    directorio[i++] = rdr["dir1"].ToString();
                                    directorio[i++] = rdr["dir2"].ToString();

                                    if (i >= 20)
                                    {
                                        ingresaFila(directorio);
                                        i = 0;
                                    }
                                }
                                //agregamos esta validación para cuando haya menos de tres columnas
                                if (i > 0)
                                {
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

        private void ingresaFila(string[] directorio)
        {

            TableRow renglonUno = new TableRow();
            TableCell celdaUno = new TableCell();
            TableCell celdaDos = new TableCell();
            TableCell celdaTres = new TableCell();
            //Agregamos los valores y agrgamos las celdas
           
            celdaUno.Text =rellenaDiv(directorio,0,6);
            celdaDos.Text = rellenaDiv(directorio, 7, 13);// "<div>" + regresaLiga(directorio[2]) + "</div><div>" + regresaLiga(directorio[3]) + "</div>";
            celdaTres.Text = rellenaDiv(directorio, 14, 20); //"<div>" + regresaLiga(directorio[4]) + "</div><div>" + regresaLiga(directorio[5]) + "</div>";
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
            celdaEspacio.ColumnSpan = 3;
            celdaEspacio.CssClass = "ContactosEspacio";
            renglonEspacio.Cells.Add(celdaEspacio);
            tablaDirectorio.Rows.Add(renglonEspacio);

        }

        private string regresaLiga(string valor)
        {
            //Funcion para ver si se tiene una arroba en el text y ponerlo como Mailto o como direccion web
            //http
            //www.
            string cadena = valor;
            if (valor.Contains("@"))
            {
                cadena = "<a class=\"ContactosCorreo\" href=\"mailto:" + valor + "\">" + valor + "</a>";
            }else if(valor.StartsWith("http")|| valor.StartsWith("www.")){
                //Aqui hay un detalle, que no sabemos si la URL enviada de la tabla de oracle viene con http, en caso de que venga 
                //solo con www, el navegador se hace pelotas al redireccionar al usuario a la pagina correcta
                string url = valor.StartsWith("www.") ? "http://" + valor : valor;
                cadena = "<a class=\"ContactosCorreo\" target=\"_blank\" href=\"" + url + "\">" + valor + "</a>";
            }
    
    
            return cadena;

        }
        private string rellenaDiv(string[] directorio,int indice, int tope)
            //Funcion que sirve para rellenar dinamicamente de Divs las celdas de una tabla
        {
             string temporal = "";
            for (int h =indice; h < tope; h++){
                //validamos si es correo electronico o un texto nornmal
                //Aqui necesitamos poner en negritas el primer div con la ciudad, por lo que suponemos que viene
                //en el primer indice del arreglo
                if (h == indice)
                {
                    temporal += "<div class=\"Contactos_Alias\">" + regresaLiga(directorio[h]) + "</div>";
                }
                else
                {
                    temporal += "<div>" + regresaLiga(directorio[h]) + "</div>";
                }
            }
            return temporal;

        }
    }
}