Description use case 4 (<span style="background-color:turquoise">MTP</span>) - Ajouter un traitement - Ajouter -> un médicament avec toutes les possibilités   
Description use case 5 (<span style="background-color:turquoise">PADV</span>) - changements - arrêt, changement de posologie, commentaire

### Chez le médecin

Le 12.02.2019, Mme Dupond se rend chez son médecin de famille, le Dr Rochat, pour un rendez-vous de routine. Lors de l’anamnèse, il consulte son plan de médication actuel, qui indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg	| 1-0-0 | |	
| Zocor cpr pell 40 mg | 0-0-1 | |	
| Aspirin Cardio cpr pell 100 mg | 1-0-0 | |	

Il lui transmet la prescription du traitement habituel pour trois mois, et ajoute du:

*Dafalgan cpr pell 1 g*, **1-1-1, dosage avancé**: en réserve, **raison**: douleurs ([MTP Dafalgan](Bundle-MTPDafalgan.html))

*Voltarène dolo forte émulgel*, **1-1-1-1**, durant **7 jours**, **raison**: douleurs ([MTP Voltaren](Bundle-MTPVoltaren.html))

*Temesta Expidet cpr orodisp 1 mg*, **0-0-0-1**, durant **3 jours**, **raison**: pour dormir   
**instruction au patient**: laisser fondre 1 comprimé sous la langue ½ heure avant le coucher   
**+ insérer un commentaire**: si aucune amélioration au bout de 3 jours, reprendre contact avec le médecin

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI du médecin</span>   
<span style="background-color:turquoise">Import PML: 3 x MTP</span>


Il lui transmet également le plan de médication mis à jour qui contient:

{:class="table table-bordered"}
| <span style="background-color:yellow">Reniten cpr 20 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Zocor cpr pell 40 mg</span> | <span style="background-color:yellow">0-0-1</span> |  | 
| <span style="background-color:yellow">Aspirine Cardio cpr pell 100 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Dafalgan cpr pell 1 g</span> | <span style="background-color:yellow">1-1-1</span> | <span style="background-color:yellow">En réserve</span> | 
| <span style="background-color:yellow">Voltarène dolo forte émulgel</span> | <span style="background-color:yellow">1-1-1-1</span> | <span style="background-color:yellow">Durant 7 jours (19.02.2019)</span> | 
| <span style="background-color:yellow">Temesta Expidet cpr orodisp 1 mg</span> | <span style="background-color:yellow">0-0-0-1</span> | <span style="background-color:yellow">Durant 3 jours (15.02.2019) + instruction au patient + commentaire</span> | 


### À la pharmacie

Après 3 jours, le 15.02.2019 elle se rend à la pharmacie, elle informe cette dernière que le Temesta ne l’aide pas à dormir. La pharmacie consulte le traitement de la patiente PML (timeline):

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | 

et voit le commentaire sous le Temesta: si aucune amélioration au bout de 3 jours, reprendre contact avec le médecin. La pharmacie prend contact téléphoniquement avec le médecin et ce dernier indique que le Temesta doit être stoppé.

*Temesta Expidet cpr orodisp 1 mg*, **arrêter la médication**, **commentaire**: selon téléphone avec le médecin, arrêter le traitement car inefficace. 

Mme Dupont indique aussi à la pharmacie qu’elle n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène émulgel. La pharmacie saisit un commentaire sur la ligne du Dafalgan et elle continue avec le Voltarène jusqu’à la date prévue.

*Dafalgan cpr pell 1 g*, **créer un commentaire**: la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet.

La pharmacie donne un nouveau médicament contre les insomnies, avec une posologie spéciale à adapter suivant le résultat.

*SIMILASAN Troubles du sommeil gouttes*, **dosage spécial**: prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. **Raison**: insomnies

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 		
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire 15.02.2019: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | Changements: stoppé le 15.02.2019 / Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes |  | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de la pharmacie</span>   
<span style="background-color:turquoise">Import PML: 2 x PADV 1 x MTP</span>

Après ces modifications la pharmacie transmet un nouveau plan de médication qui contient :

{:class="table table-bordered"}
| <span style="background-color:yellow">Reniten cpr 20 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Zocor cpr pell 40 mg</span> | <span style="background-color:yellow">0-0-1</span> |  | 
| <span style="background-color:yellow">Aspirin Cardio cpr pell 100 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Dafalgan cpr pell 1 g</span> | <span style="background-color:yellow">1-1-1</span> | <span style="background-color:yellow">En réserve</span> | 
| <span style="background-color:yellow">Voltarène dolo forte émulgel</span> | <span style="background-color:yellow">1-1-1-1</span> | <span style="background-color:yellow">Durant 7 jours (19.02.2019)</span> | 
| <span style="background-color:yellow">SIMILASAN Troubles du sommeil gouttes</span> | <span style="background-color:yellow">Dosage spécial</span> | <span style="background-color:yellow">Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher</span> | 


### À la sortie de l’hôpital

2 semaines plus tard, le 27.02.2019 Madame Dupont se rend aux urgences à cause d’un prurit insupportable (nuit), au CHUV où ils décident de l’hospitaliser. 

Son PML (timeline) indique les médicaments suivants:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g	| 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 19.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | Changements: stoppé le 15.02.2019 / Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes |  | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |

L’hôpital décide de donner de la Cetirizine Mepha Lactab 10 mg le soir pour 3 jours.

Ajouter -> un médicament

Cetirizine Mepha Lactab 10 mg, **0-0-1**, durant **3 jours**, **raison**: allergie 

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 	
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 19.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | Changements : stoppé le 15.02.2019 / Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes |  | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 
| Cetirizine Mepha Lactab 10 mg | 0-0-1 | Durant 3 jours |  | 
 
<span style="background-color:turquoise">Import PML: 1 x MTP</span>   
Le lendemain matin le 28.02.2019, la patiente ne réagissant pas assez rapidement au traitement, l’hôpital décide de changer la posologie.

*Cetirizine Mepha Lactab 10 mg*, **changement de posologie**, **1-0-1**, **commentaire**: pas de réaction significative avec le traitement 1 x jour. -> 2x/j.

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 19.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | Changements: stoppé le 15.02.2019 / Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes |  | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher  | 
| Cetirizine Mepha Lactab 10 mg | 0-0-1 |  | Changement: changement de posologie le 28.02.2019 / Commentaire : pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1 | Durant 3 jours | 

<span style="background-color:turquoise">Import PML: 1 x PADV 1 x MTP</span>   

Après son séjour à l’hôpital le 01.03.2019, Mme Dupont reçoit le traitement suivant:

*DER-MED lotion lavante pH5.5*, **raison**: peau sensible, **instruction au patient**: pour se laver

*Excipial U Lipolotion Fl*, **raison**: peau sensible, **instruction au patient**: appliquer aussi souvent que nécessaire, **date de fin inconnue** 

*Hydrocortisone Galepharm cpr 10 mg*, **0.5-0-0.5**, **en réserve**, **raison**: prurit, **instruction au patient**: en cas de crise de prurit   
Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 19.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 3 jours + instruction au patient + commentaire | Changements: stoppé le 15.02.2019 / Commentaire : selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes |  | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 
| Cetirizine Mepha Lactab 10 mg | 0-0-1 |  | Changement: changement de posologie le 28.02.2019 / Commentaire : pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1 | Durant 3 jours |  | 
| DER-MED lotion lavante pH5.5 |  |  | Instruction au patient: pour se laver | 
| Excipial U Lipolotion Fl |  | Date de fin inconnue | Instruction au patient: appliquer aussi souvent que nécessaire | 
| Hydrocortisone Galepharm cpr 10 mg | 0.5-0-0.5 | En réserve | Instruction au patient: en cas de crise de prurit | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de l’hôpital</span>   
<span style="background-color:turquoise">Import PML: 1 x PADV 3 x MTP</span>   

Après ces modifications la pharmacie transmet un nouveau plan de médication qui contient:

{:class="table table-bordered"}
| <span style="background-color:yellow">Reniten cpr 20 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Zocor cpr pell 40 mg</span> | <span style="background-color:yellow">0-0-1</span> |  | 
| <span style="background-color:yellow">Aspirine Cardio cpr pell 100 mg</span> | <span style="background-color:yellow">1-0-0</span> |  | 
| <span style="background-color:yellow">Dafalgan cpr pell 1 g</span> | <span style="background-color:yellow">1-1-1</span> | <span style="background-color:yellow">En réserve</span> | 
| <span style="background-color:yellow">SIMILASAN Troubles du sommeil gouttes</span> | <span style="background-color:yellow">Dosage spécial</span> | <span style="background-color:yellow">Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher</span> | 
| <span style="background-color:yellow">DER-MED lotion lavante pH5.5</span> |  | <span style="background-color:yellow">Instruction</span> | 
| <span style="background-color:yellow">Excipial U Lipolotion Fl</span> |  | <span style="background-color:yellow">Instruction</span> | 
| <span style="background-color:yellow">Hydrocortisone Galepharm cpr 10 mg</span> | <span style="background-color:yellow">0.5-0-0.5</span> | <span style="background-color:yellow">En réserve + instruction au patient</span> | 
