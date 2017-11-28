using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebSanchez2016.es.Contactos
{
    public class UtilesTablas
    {
        public string rellenaDiv(string[] directorio, int indice, int tope)
        //Funcion que sirve para rellenar dinamicamente de Divs las celdas de una tabla
        {
            string temporal = "";
            for (int h = indice; h < tope; h++)
            {
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
        private string regresaLiga(string valor)
        {
            //Funcion para ver si se tiene una arroba en el text y ponerlo como Mailto o como direccion web
            //http
            //www.
            string cadena = valor!=null?valor:"";
            if (cadena.Contains("@"))
            {
                cadena = "<a class=\"ContactosCorreo\" href=\"mailto:" + cadena + "\">" + cadena + "</a>";
            }
            else if (cadena.StartsWith("http") || cadena.StartsWith("www."))
            {
                //Aqui hay un detalle, que no sabemos si la URL enviada de la tabla de oracle viene con http, en caso de que venga 
                //solo con www, el navegador se hace pelotas al redireccionar al usuario a la pagina correcta
                string url = cadena.StartsWith("www.") ? "http://" + cadena : cadena;
                cadena = "<a class=\"ContactosCorreo\" target=\"_blank\" href=\"" + url + "\">" + cadena + "</a>";
            }
            return cadena;
        }
  

    }

}