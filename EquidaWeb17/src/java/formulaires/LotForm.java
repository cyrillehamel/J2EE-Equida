/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulaires;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import modele.Cheval;
import modele.Lot;
import modele.Vendeur;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class LotForm {
    private String resultat;
    private Map<String, String> erreurs      = new HashMap<String, String>();

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
    
    
    public Lot lotAjouter( HttpServletRequest request ) {
      
        Lot unLot  = new Lot();
         
        String prixDepart = getDataForm( request, "prixDepart" );
        String vente = getDataForm( request, "vente" );
        String cheval = getDataForm( request, "cheval");
        String vendeur = getDataForm( request, "vendeur");

        if ( erreurs.isEmpty() ) {
            resultat = "Succès de l'ajout.";
        } else {
            resultat = "Échec de l'ajout.";
        }
         
      
        
        unLot.setPrixDepart(Integer.parseInt(prixDepart));
        
        Cheval unCheval = new Cheval();
        unCheval.setId(Integer.parseInt(cheval));
        unLot.setUnCheval(unCheval);
        
        Vente uneVente = new Vente();
        uneVente.setId(Integer.parseInt(vente));
        unLot.setUneVente(uneVente); 
        
        Vendeur unVendeur = new Vendeur();
        unVendeur.setId(Integer.parseInt(vendeur));
        unLot.setUnVendeur(unVendeur); 
       
        return unLot ;
    }
}
