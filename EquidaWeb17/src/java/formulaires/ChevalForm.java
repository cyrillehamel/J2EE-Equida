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
import modele.TypeCheval;

/**
 *
 * @author ts2slam
 */
public class ChevalForm {
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
    
    
    public Cheval ajouterCheval( HttpServletRequest request ) {
      
        Cheval unCheval  = new Cheval();
         
        String nom = getDataForm( request, "nom" );
        String sexe = getDataForm( request, "sexe" );
        String pere = getDataForm( request, "pere");
        String mere = getDataForm( request, "mere");
        String type = getDataForm( request, "typeCheval");

        if ( erreurs.isEmpty() ) {
            resultat = "Succès de l'ajout.";
        } else {
            resultat = "Échec de l'ajout.";
        }
         
      
        
        unCheval.setNom(nom);
        unCheval.setSexe(sexe);
        unCheval.setPere(pere);
        unCheval.setMere(mere);
        
        TypeCheval unType = new TypeCheval();
        unType.setId(Integer.parseInt(type));
        unCheval.setUnType(unType);
       
        return unCheval ;
    }
}
