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
    public partial class Sucursales : System.Web.UI.Page
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
                        //Empezamos con el armado de la tabla
                        TableRow renglon = new TableRow();
                        TableCell celda1 = new TableCell();
                        TableCell celda2 = new TableCell();
                        TableCell celda3 = new TableCell();

                        //Ingresamos el encabezado de los distribuidores, independientemente de que si se traigan valores o no.
                        celda1.Text = "Sucursales";
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
                            string[] directorio = new string[18];
                            while (rdr.Read())
                            {
                                directorio[i++] = rdr["alias"].ToString();
                                directorio[i++] = rdr["nombre_puesto"].ToString();
                                directorio[i++] = rdr["email"].ToString();
                                directorio[i++] = rdr["telefono"].ToString();
                                directorio[i++] = rdr["dir1"].ToString();
                                directorio[i++] = rdr["dir2"].ToString();

                                if (i >= 17)
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
            UtilesTablas UT = new UtilesTablas();
            celdaUno.Text = UT.rellenaDiv(directorio, 0, 5);
            celdaDos.Text = UT.rellenaDiv(directorio, 6, 11);
            celdaTres.Text = UT.rellenaDiv(directorio, 12, 18);
            renglonUno.Cells.Add(celdaUno);
            renglonUno.Cells.Add(celdaDos);
            renglonUno.Cells.Add(celdaTres);
            tablaDirectorio.Rows.Add(renglonUno);
            //Limpiamos la variable para las demas columnas
            for (int i = 0; i < directorio.Length; i++)
            {
                directorio[i] = "";
            }

            TableCell celdaEspacio = new TableCell();
            TableRow renglonEspacio = new TableRow();
            celdaEspacio.ColumnSpan = 3;
            celdaEspacio.CssClass = "ContactosEspacio";
            renglonEspacio.Cells.Add(celdaEspacio);
            tablaDirectorio.Rows.Add(renglonEspacio);

        }

    }
}