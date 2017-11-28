using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebSanchez2016.es
{
    [Telerik.Web.UI.RadCompressionSettings(HttpCompression = Telerik.Web.UI.CompressionType.None)]  
    public partial class Es_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Se construye el menú superior.
                RMTintasyMateriales.DataSource = CrearMenuTintasyMateriales();
                RMTintasyMateriales.DataFieldID = "ID";
                RMTintasyMateriales.DataFieldParentID = "ParentID";
                RMTintasyMateriales.DataTextField = "Text";
                RMTintasyMateriales.DataValueField = "ID";
                RMTintasyMateriales.DataNavigateUrlField = "URL";
                
                RMTintasyMateriales.CssClass = "w3-bar"; //"MenuByEACA1";
                RMTintasyMateriales.DataBind();
                /*RMEquipo.DataSource = CrearMenuEquipo();
                RMEquipo.DataFieldID = "ID";
                RMEquipo.DataFieldParentID = "ParentID";
                RMEquipo.DataTextField = "Text";
                RMEquipo.DataValueField = "ID";
                RMEquipo.DataNavigateUrlField = "URL";
                RMEquipo.DataBind();*/

                RMContactos.DataSource = CrearMenuContactos();
                RMContactos.DataFieldID = "ID";
                RMContactos.DataFieldParentID = "ParentID";
                RMContactos.DataTextField = "Text";
                RMContactos.DataValueField = "ID";
                RMContactos.DataNavigateUrlField = "URL";
                RMContactos.DataBind();

                RMAcercaDeGS.DataSource = CrearMenuAcercaDeGS();
                RMAcercaDeGS.DataFieldID = "ID";
                RMAcercaDeGS.DataFieldParentID = "ParentID";
                RMAcercaDeGS.DataTextField = "Text";
                RMAcercaDeGS.DataValueField = "ID";
                RMAcercaDeGS.DataNavigateUrlField = "URL";
                RMAcercaDeGS.DataBind();

                RMHome.DataSource = CrearMenuHome();
                RMHome.DataFieldID = "ID";
                RMHome.DataFieldParentID = "ParentID";
                RMHome.DataTextField = "Text";
                RMHome.DataValueField = "ID";
                RMHome.DataNavigateUrlField = "URL";
                RMHome.DataBind();

                RMBuscar.DataSource = CrearMenuBuscar();
                RMBuscar.DataFieldID = "ID";
                RMBuscar.DataFieldParentID = "ParentID";
                RMBuscar.DataTextField = "Text";
                RMBuscar.DataValueField = "ID";
                RMBuscar.DataNavigateUrlField = "URL";
                RMBuscar.DataBind();

                //Se construye el menú inferior.
                /*RMClientes.DataSource = CrearMenuClientes();
                RMClientes.DataFieldID = "ID";
                RMClientes.DataFieldParentID = "ParentID";
                RMClientes.DataTextField = "Text";
                RMClientes.DataValueField = "ID";
                RMClientes.DataNavigateUrlField = "URL";
                RMClientes.DataBind();*/

                /*RMProveedores.DataSource = CrearMenuProveedores();
                RMProveedores.DataFieldID = "ID";
                RMProveedores.DataFieldParentID = "ParentID";
                RMProveedores.DataTextField = "Text";
                RMProveedores.DataValueField = "ID";
                RMProveedores.DataNavigateUrlField = "URL";
                RMProveedores.DataBind();*/

                /*RMMapa.DataSource = CrearMenuMapa();
                RMMapa.DataFieldID = "ID";
                RMMapa.DataFieldParentID = "ParentID";
                RMMapa.DataTextField = "Text";
                RMMapa.DataValueField = "ID";
                RMMapa.DataNavigateUrlField = "URL";
                RMMapa.DataBind();*/

                RMEtica.DataSource = CrearMenuEtica();
                RMEtica.DataFieldID = "ID";
                RMEtica.DataFieldParentID = "ParentID";
                RMEtica.DataTextField = "Text";
                RMEtica.DataValueField = "ID";
                RMEtica.DataNavigateUrlField = "URL";
                RMEtica.DataBind();

                RMPrivacidad.DataSource = CrearMenuPrivacidad();
                RMPrivacidad.DataFieldID = "ID";
                RMPrivacidad.DataFieldParentID = "ParentID";
                RMPrivacidad.DataTextField = "Text";
                RMPrivacidad.DataValueField = "ID";
                RMPrivacidad.DataNavigateUrlField = "URL";
                RMPrivacidad.DataBind();

                // Set cache for 1 hour on all computers and servers.
                // ... Proxies, browsers, and your server will cache it.
                Response.Cache.SetCacheability(HttpCacheability.Public);
                Response.Cache.SetMaxAge(new TimeSpan(12, 0, 0));
            }
        }

        public DataTable CrearMenuTintasyMateriales()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Tintas y materiales", "#", "Tintas y Materiales" });
            table.Rows.Add(new string[] { "2", "1", "Banda angosta", "#", "Banda angosta" });
            table.Rows.Add(new string[] { "3", "2", "Tintas base agua", "Tintas_y_Materiales/Banda_Angosta/Tintas_Base_Agua.aspx", "Tintas base agua" });
            table.Rows.Add(new string[] { "4", "2", "Tintas base solvente", "Tintas_y_Materiales/Banda_Angosta/Tintas_Base_Solvente.aspx", "Tintas base solvente" });
            table.Rows.Add(new string[] { "5", "2", "Tintas UV", "Tintas_y_Materiales/Banda_Angosta/Tintas_UV.aspx", "Tintas UV" });
            table.Rows.Add(new string[] { "6", "1", "Digital Gran Formato", "Tintas_y_Materiales/Digital_Gran_Formato.aspx", "Digital Gran Formato" });
            table.Rows.Add(new string[] { "7", "1", "Flexografía", "Tintas_y_Materiales/Flexografia.aspx", "Flexografía" });
            table.Rows.Add(new string[] { "8", "1", "Heatset", "#", "Heatset" });
            table.Rows.Add(new string[] { "9", "8", "Mantillas Day", "Tintas_y_Materiales/Heatset/Mantillas_Day.aspx", "Mantillas Day" });
            table.Rows.Add(new string[] { "10", "8", "Placas Kodak", "Tintas_y_Materiales/Heatset/Placas_Kodak.aspx", "Placas Kodak" });
            table.Rows.Add(new string[] { "11", "8", "Placas Tecpro", "Tintas_y_Materiales/Heatset/Placas_Tecpro.aspx", "Placas Tecpro" });
            table.Rows.Add(new string[] { "12", "8", "Químicos Varn", "Tintas_y_Materiales/Heatset/Quimicos_Varn.aspx", "Químicos Varn" });
            table.Rows.Add(new string[] { "13", "8", "Químicos Tecpro", "Tintas_y_Materiales/Heatset/Quimicos_Varn.aspx", "Químicos Tecpro" }); //Mahonry
            table.Rows.Add(new string[] { "14", "8", "Tintas", "Tintas_y_Materiales/Heatset/Tintas.aspx", "Tintas" });
            table.Rows.Add(new string[] { "15", "1", "Offset hoja", "#", "Offset Hoja" });
            table.Rows.Add(new string[] { "16", "14", "Barnices base agua", "Tintas_y_Materiales/Offset_Hoja/Barnices_Base_Agua.aspx", "Barnices base agua" });
            table.Rows.Add(new string[] { "17", "14", "Barnices UV", "Tintas_y_Materiales/Offset_Hoja/Barnices_UV.aspx", "Barnices UV" });
            table.Rows.Add(new string[] { "18", "14", "Mantillas Day", "Tintas_y_Materiales/Heatset/Mantillas_Day.aspx", "Mantillas Day" });
            table.Rows.Add(new string[] { "19", "14", "Placas Kodak", "Tintas_y_Materiales/Offset_Hoja/Placas_Kodak.aspx", "Placas Kodak" });
            table.Rows.Add(new string[] { "20", "14", "Placas Tecpro", "Tintas_y_Materiales/Offset_Hoja/Placas_Tecpro.aspx", "Placas Tecpro" });
            table.Rows.Add(new string[] { "21", "14", "Químicos Varn", "Tintas_y_Materiales/Heatset/Quimicos_Varn.aspx", "Químicos Varn" });
            table.Rows.Add(new string[] { "22", "14", "Tintas convencionales", "Tintas_y_Materiales/Offset_Hoja/Tintas_Convencionales.aspx", "Tintas convencionales" });
            table.Rows.Add(new string[] { "23", "14", "Tintas UV", "Tintas_y_Materiales/Offset_Hoja/Tintas_UV.aspx", "Tintas UV" });
            table.Rows.Add(new string[] { "24", "1", "Periódicos", "#", "Periódicos" });
            table.Rows.Add(new string[] { "25", "23", "Mantillas Day", "Tintas_y_Materiales/Heatset/Mantillas_Day.aspx", "Mantillas Day" });
            table.Rows.Add(new string[] { "26", "23", "Placas Kodak", "Tintas_y_Materiales/Periodicos/Placas_Kodak.aspx", "Placas Kodak" });
            table.Rows.Add(new string[] { "27", "23", "Placas Tecpro", "Tintas_y_Materiales/Periodicos/Placas_Tecpro.aspx", "Placas Tecpro" });
            table.Rows.Add(new string[] { "28", "23", "Químicos Varn", "Tintas_y_Materiales/Heatset/Quimicos_Varn.aspx", "Químicos Varn" });
            table.Rows.Add(new string[] { "29", "23", "Tintas", "Tintas_y_Materiales/Periodicos/Tintas.aspx", "Tintas" });
            table.Rows.Add(new string[] { "30", "1", "Rotograbado", "Tintas_y_Materiales/Rotograbado.aspx", "Rotograbado" });
            table.Rows.Add(new string[] { "31", "1", "Serigrafía", "#", "Serigrafía" });
            table.Rows.Add(new string[] { "32", "30", "Equipo gráficos", "Tintas_y_Materiales/Serigrafia/Equipo_Graficos.aspx", "Equipo gráficos" });
            table.Rows.Add(new string[] { "33", "30", "Equipo textiles", "Tintas_y_Materiales/Serigrafia/Equipo_Textiles.aspx", "Equipo textiles" });
            table.Rows.Add(new string[] { "34", "30", "Materiales gráficos", "Tintas_y_Materiales/Serigrafia/Materiales_Graficos.aspx", "Materiales gráficos" });
            table.Rows.Add(new string[] { "35", "30", "Materiales textiles", "Tintas_y_Materiales/Serigrafia/Matriales_Textiles.aspx", "Matriales textiles" });
            table.Rows.Add(new string[] { "36", "30", "Tintas gráficos", "Tintas_y_Materiales/Serigrafia/Tintas_Graficos.aspx", "Tintas gráficos" });
            table.Rows.Add(new string[] { "37", "30", "Tintas textiles", "Tintas_y_Materiales/Serigrafia/Tintas_Textiles.aspx", "Tintas textiles" });
            table.Rows.Add(new string[] { "38", "30", "SIP (Sistema de Igualación Plastisol)", "Tintas_y_Materiales/Serigrafia/SIP.aspx", "SIP (Sistema de Igualación Plastisol)" });

            return table;
        }

        /*public DataTable CrearMenuEquipo()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Equipo", "#", "Equipo" });
            table.Rows.Add(new string[] { "2", "1", "GS Digital", "#", "GS Digital" });
            table.Rows.Add(new string[] { "3", "2", "Compaginadoras y encuadernadoras Duplo", "Equipo/GS_Digital/Compaginadoras_y_Encuadernadoras_Duplo.aspx", "Compaginadoras y encuadernadoras Duplo" });
            table.Rows.Add(new string[] { "4", "2", "Dobladoras y encuadernadoras Baum", "Equipo/GS_Digital/Dobladoras_y_Ecuadernadoras_Baum.aspx", "Dobladoras y encuadernadoras Baum" });
            table.Rows.Add(new string[] { "5", "2", "Prensas digitales HP", "#", "Prensas digitales HP" });
            table.Rows.Add(new string[] { "6", "5", "Comerciales", "Equipo/GS_Digital/Prensas_Digitales_HP/Comerciales.aspx", "Comerciales" });
            table.Rows.Add(new string[] { "7", "5", "Etiquetas y empaque", "Equipo/GS_Digital/Prensas_Digitales_HP/Etiquetas_y_Empaque.aspx", "Etiquetas y empaque" });
            table.Rows.Add(new string[] { "8", "2", "Prensas digitales Konica", "Equipo/GS_Digital/Prensas_Digitales_Konica.aspx", "Prensas digitales Konica" });
            table.Rows.Add(new string[] { "9", "1", "CTPs térmicos Kodak", "Equipo/CTPs_Termicos_Kodak.aspx", "CTPs térmicos Kodak" });
            table.Rows.Add(new string[] { "10", "1", "Prensas offset Komori", "Equipo/Prensas_Offset_Komori.aspx", "Prensas offset Komori" });
            table.Rows.Add(new string[] { "11", "1", "Suajadoras y dobladoras Brausse", "Equipo/Suajadoras_y_Dobladoras_Brausse.aspx", "Suajadoras y dobladoras Brausse" });
            return table;
        }*/

        public DataTable CrearMenuContactos()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Contactos", "#", "Contactos" });
            table.Rows.Add(new string[] { "2", "1", "Crédito", "Contactos/Credito.aspx", "Crédito" });
            table.Rows.Add(new string[] { "3", "1", "Directores", "Contactos/Directores.aspx", "Directores" });
            table.Rows.Add(new string[] { "4", "1", "Líneas", "#", "Líneas" });
            table.Rows.Add(new string[] { "5", "4", "Equipo", "Contactos/Equipo.aspx", "Equipo" });
            table.Rows.Add(new string[] { "6", "4", "Offset hoja, heatset y periódicos", "Contactos/Offset_hoja_heatset_periodicos.aspx", "Offset hoja, heatset y periódicos" });
            table.Rows.Add(new string[] { "7", "4", "Rotograbado y flexografía", "Contactos/Rotograbado_flexografia.aspx", "Rotograbado y flexografía" });
            table.Rows.Add(new string[] { "8", "4", "Serigrafía y Digital Gran Formato", "Contactos/Serigrafía_Digital_Gran_Formato.aspx", "Serigrafía y Digital Gran Formato" });
            table.Rows.Add(new string[] { "9", "1", "México", "#", "México" });
            table.Rows.Add(new string[] { "10", "9", "Distribuidores", "Contactos/Distribuidores.aspx", "Distribuidores" });
            table.Rows.Add(new string[] { "11", "9", "Planta Ciudad de México (Corporativo)", "Contactos/PlantaCDMX.aspx", "Planta Ciudad de México (Corporativo)" });
            table.Rows.Add(new string[] { "12", "9", "Planta Tepeji", "Contactos/PlantaTepeji.aspx", "Planta Tepeji" });
            table.Rows.Add(new string[] { "13", "9", "Sucursales", "Contactos/Sucursales.aspx", "Sucursales" });
            table.Rows.Add(new string[] { "14", "1", "GS Colombia", "Contactos/Colombia.aspx", "GS Colombia" });
            table.Rows.Add(new string[] { "15", "1", "GS Costa Rica", "Contactos/Costa_Rica.aspx", "GS Costa Rica" });
            table.Rows.Add(new string[] { "16", "1", "GS El Salvador", "Contactos/El_Salvador.aspx", "GS El Salvador" });
            table.Rows.Add(new string[] { "17", "1", "Guatemala", "#", "Guatemala" });
            table.Rows.Add(new string[] { "18", "17", "GS Guatemala", "Contactos/Guatemala.aspx", "GS Guatemala" });
            table.Rows.Add(new string[] { "19", "17", "Distribuidores", "Contactos/Guatemala_Distribuidores.aspx", "Distribuidores" });

            return table;
        }

        public DataTable CrearMenuAcercaDeGS()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Acerca de GS", "#", "Acerca de GS" });
            table.Rows.Add(new string[] { "2", "1", "Presentación GS", "#", "Presentación GS" });
            table.Rows.Add(new string[] { "3", "2", "Español", "Acerca_de_GS/GS.aspx", "Español" });
            table.Rows.Add(new string[] { "4", "2", "English", "Acerca_de_GS/GS_en.aspx", "English" });
            table.Rows.Add(new string[] { "5", "1", "Video Planta Tepeji", "Planta_Tepeji.aspx", "Video Planta Tepeji" });

            return table;
        }

        public DataTable CrearMenuHome()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Home", "Home.aspx", "Home" });

            return table;
        }

        public DataTable CrearMenuBuscar()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Buscar", "#", "Buscar" });

            return table;
        }

        /*public DataTable CrearMenuClientes()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Clientes", "#", "Equipo" });
            table.Rows.Add(new string[] { "2", "1", "Descarga factura contado", "#", "Descarga factura contado" });
            table.Rows.Add(new string[] { "3", "1", "Factura crédito", "#", "Factura crédito" });
            table.Rows.Add(new string[] { "4", "3", "Registro", "#", "Registro" });
            table.Rows.Add(new string[] { "5", "3", "Descarga", "#", "Descarga  " });
            table.Rows.Add(new string[] { "6", "1", "Solicitud de crédito", "#", "Solicitud de crédito" });

            return table;
        }*/

        /*public DataTable CrearMenuProveedores()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Proveedores", "#", "Proveedores" });
            table.Rows.Add(new string[] { "2", "1", "Buzón Digital CFDI", "#", "Buzón Digital CFDI" });

            return table;
        }*/

        public DataTable CrearMenuMapa()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Mapa", "Mapa/mapa.aspx", "Mapa" });

            return table;
        }

        public DataTable CrearMenuEtica()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Ética", "#", "Ética" });
            table.Rows.Add(new string[] { "2", "1", "Código empleados", "Etica/Codigo_Empleados.aspx", "Código Empleados" });
            table.Rows.Add(new string[] { "3", "1", "Código proveedores", "Etica/Codigo_Proveedores.aspx", "Código Proveedores" });

            return table;
        }

        public DataTable CrearMenuPrivacidad()
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("ParentID");
            table.Columns.Add("Text");
            table.Columns.Add("URL");
            table.Columns.Add("Tooltip");
            table.Rows.Add(new string[] { "1", null, "Privacidad", "Privacidad/Privacidad.aspx", "Privacidad" });

            return table;
        }
    }
}