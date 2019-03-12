/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulaires;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import modele.CategVente;
import modele.Lieu;
import modele.TypeCheval;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class VenteForm {
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public void setErreurs(Map<String, String> erreurs) {
        this.erreurs = erreurs;
    }
    
    //méthode de validation du champ de saisie nom
    private void validationNom( String nom ) throws Exception {
        if ( nom != null && nom.length() < 3 ) {
        throw new Exception( "Error" );
        }
    }

    private void setErreur( String champ, String message ) {
    erreurs.put(champ, message );
    }    
    
    private static String getDataForm( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur.trim();
        }   
    }
    
    
    public Vente ajouterVente( HttpServletRequest request ) {
      
        System.out.println("open form");
        Vente uneVente  = new Vente();
         
        //String id = getDataForm( request, "id" );
        String nom = getDataForm( request, "nom" );
        String dateDebutVente = getDataForm( request, "dateDebut");
        String lieu = getDataForm( request, "lieu" );
        String categVente = getDataForm(request, "categVente");
        
        //uneVente.setId(Integer.parseInt(id));
        uneVente.setNom(nom);
        uneVente.setDateDebutVente(dateDebutVente);
        
        System.out.println("nom + date");
        System.out.println(lieu);
        
        
        Lieu unLieu = new Lieu();
        unLieu.setId(Integer.parseInt(lieu));
        uneVente.setUnLieu(unLieu);
        
        System.out.println();
        
        CategVente uneCateg = new CategVente();
        uneCateg.setCode(categVente);
        uneVente.setUneCategVente(uneCateg);
               
        System.out.println("sorti form");
        return uneVente ;
    }
}
