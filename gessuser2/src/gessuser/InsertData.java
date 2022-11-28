package gessuser;

import java.sql.*;

public class InsertData {

		public static void mian (String[] args) {
			
			try {
				
				// Charger le driver mysql
				
				Class.forName("com.mysql.jdbc.Driver");
				
				// Creer la connexion
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost/utilisateur", "root", "") ;
				
				//etat de connexion
				
				Statement st = con.createStatement();
				
				// Insertion de donnees
				
				String querry = "INSERT INTO utilisateur ('nom' , 'prenom' , 'login' , 'password') values ('Ali', 'toto' , 'tata' , 'fefe')";
				st.executeUpdate(querry);
				
				
				// fermer la connexion
				
				con.close();
				
			}
			
			catch (Exception e) {

				System.out.println ("Erreur :"+e.getMessage());
			}
			
		}
	
	
}
