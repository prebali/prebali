package gessuser;

import java.sql.*;

public class Driver {

		public static void mian (String[] args) {
			
			try {
				
				// Charger le driver mysql
				
				Class.forName("com.mysql.jdbc.Driver");
				
				// Creer la connexion
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost/utilisateur", "root", "") ;
				
				//etat de connexion
				
				Statement st = con.createStatement();
				
				// creer une requete de selection
				
				ResultSet res = st.executeQuery("select * from utilisateur");
				
				// parcours des donnees
				
				while (res.next()) {
					System.out.println("Nom: "+res.getString(2));
				}
				
			}
			
			catch (Exception e) {

				System.out.println ("Erreur :"+e.getMessage());
			}
			
		}
	
	
}
