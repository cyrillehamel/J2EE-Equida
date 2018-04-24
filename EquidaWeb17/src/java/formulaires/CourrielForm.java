/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulaires;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import modele.Courriel;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class CourrielForm {
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
    
    
    public Courriel ajouterCourriel( HttpServletRequest request ) {
      
        Courriel unCourriel  = new Courriel();
         
        String dateCourriel = getDataForm( request, "dateCourriel" );
        String objet = getDataForm( request, "objet");
        String corps = getDataForm( request, "corps" );
        String codeVente = getDataForm( request, "codeVente");
       
        
        // Traitement de la liste à choix multiple
        //Pour chq catégorie selectionné, on instancie une nouvelle catégorie et on l'ajoute au client
        /*CategVente uneCategVente ;
        String[] categVente = request.getParameterValues("categVente");
        for (int i=0; i<categVente.length; i++){
            uneCategVente = new CategVente();
            uneCategVente.setCode(categVente[i]);
            unClient.addUneCategVente(uneCategVente);
        }*/
        
 
       
        

        if ( erreurs.isEmpty() ) {
            resultat = "Succès de l'ajout.";
        } else {
            resultat = "Échec de l'ajout.";
        }
         
      
        unCourriel.setDate(dateCourriel);
        unCourriel.setCorps(corps);
        unCourriel.setObjet(objet);
        Vente uneVente =new Vente();
        uneVente.setId(Integer.parseInt(codeVente));
        unCourriel.setUneVente(uneVente);
       
               
       
        return unCourriel ;
    }
    
    
    

}
