### UC 1
Ajouter un traitement et changements:
* <span style="background-color:turquoise">MTP</span> - **Ajouter un traitement** - ajouter -> un médicament avec toutes les possibilités   
* <span style="background-color:turquoise">PADV</span> - **Changements** - arrêt (CANCEL), changement de posologie (CHANGE), commentaire (COMMENT)

Aperçu sous forme de tableau des scénarios d'utilisation suivants:

{:class="table table-bordered" style="background-color:#f6f6f6"}
| Lieu du traitement | Date | Activité/décision | Document | 
| --- | --- | --- | --- |
|  |  | Traitement préexistant | [MTP Reniten](Bundle-0-1-MTPReniten.html), [MTP Zocor](Bundle-0-2-MTPZocor.html), [MTP Aspirin](Bundle-0-3-MTPAspirin.html) |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Dafalgan](Bundle-1-1-MTPDafalgan.html) |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Voltaren](Bundle-1-2-MTPVoltaren.html) |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Temesta](Bundle-1-3-MTPTemesta.html) |
| Au niveau des transactions depuis le SI du médecin | [12.02.2019](usecase-french.html#12022019) | <span style="background-color:turquoise">Import PML: 3 x MTP</span> | |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Arrêter le médicament | [PADV Temesta (CANCEL)](Bundle-2-1-PADVTemesta.html) |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Ajouter un commentaire | [PADV Dafalgan (COMMENT)](Bundle-2-2-PADVDafalgan.html) |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Ajouter un médicament | [MTP Similasan](Bundle-2-3-MTPSimilasan.html) |
| Au niveau des transactions depuis le SI de la pharmacie | [15.02.2019](usecase-french.html#15022019) | <span style="background-color:turquoise">Import PML: 2 x PADV, 1 x MTP</span> | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [27.02.2019](usecase-french.html#27022019) | Ajouter un médicament | [MTP Cetirizine](Bundle-3-1-MTPCetirizine.html) |
| | [27.02.2019](usecase-french.html#27022019) | <span style="background-color:turquoise">Import PML: 1 x MTP</span> | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [28.02.2019](usecase-french.html#28022019) | Changement de posologie | [PADV Cetirizine (CHANGE)](Bundle-3-2-PADVCetirizine.html) |
| | [28.02.2019](usecase-french.html#28022019) | <span style="background-color:turquoise">Import PML: 1 x PADV</span> | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Dermed](Bundle-3-3-MTPDermed.html) |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Excipial](Bundle-3-4-MTPExcipial.html) |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Hydrocortisone](Bundle-3-5-MTPHydrocortisone.html) |
| Au niveau des transactions depuis le SI de l’hôpital | [01.03.2019](usecase-french.html#01032019) | <span style="background-color:turquoise">Import PML: 3 x MTP</span> | |

#### Chez le médecin
##### 12.02.2019
Le 12.02.2019, Mme Dupond se rend chez son médecin de famille, le Dr Rochat, pour un rendez-vous de routine. Lors de l’anamnèse, il consulte son <span style="background-color:#ffffc7">plan de médication</span> actuel, qui indique:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg	| 1-0-0 | |	
| Zocor cpr pell 40 mg | 0-0-1 | |	
| Aspirin Cardio cpr pell 100 mg | 1-0-0 | |	

Il lui transmet la prescription du traitement habituel pour trois mois, et ajoute du:

* *Dafalgan cpr pell 1 g*, **1-1-1, dosage avancé**: en réserve, **raison**: douleurs ([MTP Dafalgan](Bundle-1-1-MTPDafalgan.html))

* *Voltarène dolo forte émulgel*, **1-1-1-1**, durant **7 jours**, **raison**: douleurs ([MTP Voltaren](Bundle-1-2-MTPVoltaren.html))

* *Temesta Expidet cpr orodisp 1 mg*, **0-0-0-1**, durant **4 jours**, **raison**: pour dormir   
**instruction au patient**: laisser fondre 1 comprimé sous la langue ½ heure avant le coucher   
**+ insérer un commentaire**: si aucune amélioration au bout de 4 jours, reprendre contact avec le médecin ([MTP Temesta](Bundle-1-3-MTPTemesta.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI du médecin</span>   
<span style="background-color:turquoise">Import PML: 3 x MTP</span>


Il lui transmet également le <span style="background-color:#ffffc7">plan de médication</span> mis à jour qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours (18.02.2019) | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours (15.02.2019) <br>+ instruction au patient <br>+ commentaire | 


#### À la pharmacie
##### 15.02.2019
Après 3 jours, le 15.02.2019 elle se rend à la pharmacie, elle informe cette dernière que le Temesta ne l’aide pas à dormir. La pharmacie consulte le traitement de la patiente PML (timeline):

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | 

et voit le commentaire sous le Temesta: si aucune amélioration au bout de 4 jours, reprendre contact avec le médecin. La pharmacie prend contact téléphoniquement avec le médecin et ce dernier indique que le Temesta doit être stoppé.

* *Temesta Expidet cpr orodisp 1 mg*, **arrêter la médication**, **commentaire**: selon téléphone avec le médecin, arrêter le traitement car inefficace ([PADV Temesta (CANCEL)](Bundle-2-1-PADVTemesta.html))  

Mme Dupont indique aussi à la pharmacie qu’elle n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène émulgel. La pharmacie saisit un commentaire sur la ligne du Dafalgan et elle continue avec le Voltarène jusqu’à la date prévue.

* *Dafalgan cpr pell 1 g*, **créer un commentaire**: la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet ([PADV Dafalgan (COMMENT)](Bundle-2-2-PADVDafalgan.html)) 

La pharmacie donne un nouveau médicament contre les insomnies, avec une posologie spéciale à adapter suivant le résultat.

* *SIMILASAN Troubles du sommeil gouttes*, **dosage spécial**: prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. **Raison**: insomnies ([MTP Similasan](Bundle-2-3-MTPSimilasan.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 		
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire 15.02.2019: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. |  | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de la pharmacie</span>   
<span style="background-color:turquoise">Import PML: 2 x PADV, 1 x MTP</span>

Après ces modifications la pharmacie transmet un nouveau <span style="background-color:#ffffc7">plan de médication</span> qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 
| Aspirin Cardio cpr pell 100 mg | 1-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours (18.02.2019) | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 


#### À la sortie de l’hôpital
##### 27.02.2019

2 semaines plus tard, le 27.02.2019 Madame Dupont se rend aux urgences à cause d’un prurit insupportable (nuit), au CHUV où ils décident de l’hospitaliser. 

Son PML (timeline) indique les médicaments suivants:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g	| 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  | 

L’hôpital décide de donner de la Cetirizine Mepha Lactab 10 mg le soir pour 3 jours.

Ajouter -> un médicament

* *Cetirizine Mepha Lactab 10 mg*, **0-0-1**, durant **3 jours**, **raison**: allergie ([MTP Cetirizine](Bundle-3-1-MTPCetirizine.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 	
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  | 
| Cetirizine Mepha Lactab 10 mg | 0-0-1 | Durant 3 jours |  | 
 
<span style="background-color:turquoise">Import PML: 1 x MTP</span>   

##### 28.02.2019
Le lendemain matin le 28.02.2019, la patiente ne réagissant pas assez rapidement au traitement, l’hôpital décide de changer la posologie.

* *Cetirizine Mepha Lactab 10 mg*, **changement de posologie**, **1-0-1**, **commentaire**: pas de réaction significative avec le traitement 1 x jour. -> 2x/j. ([PADV Cetirizine (CHANGE)](Bundle-3-2-PADVCetirizine.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  |
| Cetirizine Mepha Lactab 10 mg | 0-0-1 |  | Changement: changement de posologie le 28.02.2019 <br>Commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1 | Durant 3 jours | 

<span style="background-color:turquoise">Import PML: 1 x PADV</span>   

##### 01.03.2019

Après son séjour à l’hôpital le 01.03.2019, Mme Dupont reçoit le traitement suivant:

* *DER-MED lotion lavante pH5.5*, **raison**: peau sensible, **instruction au patient**: pour se laver, **date de fin inconnue** ([MTP Dermed](Bundle-3-3-MTPDermed.html))

* *Excipial U Lipolotion Fl*, **raison**: peau sensible, **instruction au patient**: appliquer aussi souvent que nécessaire, **date de fin inconnue** ([MTP Excipial](Bundle-3-4-MTPExcipial.html))

* *Hydrocortisone Galepharm cpr 10 mg*, **0.5-0-0.5**, **en réserve**, **raison**: prurit, **instruction au patient**: en cas de crise de prurit ([MTP Hydrocortisone](Bundle-3-5-MTPHydrocortisone.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient <br>+ commentaire | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  |
| Cetirizine Mepha Lactab 10 mg | 0-0-1 |  | Changement: changement de posologie le 28.02.2019 <br>Commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1 | Durant 3 jours |  | 
| DER-MED lotion lavante pH5.5 |  | Date de fin inconnue | Instruction au patient: pour se laver | 
| Excipial U Lipolotion Fl |  | Date de fin inconnue | Instruction au patient: appliquer aussi souvent que nécessaire | 
| Hydrocortisone Galepharm cpr 10 mg | 0.5-0-0.5 | En réserve | Instruction au patient: en cas de crise de prurit | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de l’hôpital</span>   
<span style="background-color:turquoise">Import PML: 3 x MTP</span>   

Après ces modifications la pharmacie transmet un nouveau <span style="background-color:#ffffc7">plan de médication</span> qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1 | Durant 3 jours (01.03.2019) |  
| DER-MED lotion lavante pH5.5 |  | Instruction | 
| Excipial U Lipolotion Fl |  | Instruction | 
| Hydrocortisone Galepharm cpr 10 mg | 0.5-0-0.5 | En réserve <br>+ instruction au patient | 

### UC 2
* ZOCOR Filmtabl 40 mg (nicht mehr aktiv): [MTP Zocor](Bundle-2a-MTPZocor.html)
* RENITEN Tabl 20 mg (aktiv): [MTP Reniten](Bundle-2b-MTPReniten.html)
* ASPIRIN CARDIO Fimtabl 100 mg (aktiv): [MTP Aspirin](Bundle-2c-MTPAspirin.html)
* TEMESTA EXPIDET Schmelztabl 1 mg (nicht mehr aktiv): [MTP Temesta](Bundle-2d-MTPTemesta.html), [PADV Temesta (COMMENT)](Bundle-2e-PADVTemesta.html)
* DAFALGAN Filmtabl 1 g (aktiv): [MTP Dafalgan](Bundle-2f-MTPDafalgan.html)
* SIMILASAN Schlafstörungen Tropfen (aktiv): [MTP Similasan](Bundle-2g-MTPSimilasan.html)
* VOLTAREN DOLO FORTE Emugel (aktiv): [MTP Voltaren](Bundle-2h-MTPVoltaren.html)
* HYDROCORTISON Galepharm Tabl 10 mg (aktiv): [MTP Hydrocortison](Bundle-2i-MTPHydrocortisone.html)
* HYDROCORTISON Galepharm Tabl 10 mg (nicht mehr aktiv): [PADV Hydrocortison (CANCEL)](Bundle-2j-PADVHydrocortisone.html)
* CETIRIZIN Mepha Lactab 10 mg (nicht mehr aktiv seit 25.06.2022): [MTP Cetirizin](Bundle-2k-MTPCetirizine.html), [PADV Cetirizin (CHANGE)](Bundle-2l-PADVCetirizine.html)
* CETIRIZIN Mepha Lactab 10 mg (aktiv)
* CLEXANE Inj Lös 60 mg/0.6ml Fertigspr (aktiv): [MTP Clexane](Bundle-2m-MTPClexane.html)
* EXFORGE HCT Filmtabl 5mg/160mg/12.5mg (aktiv): [MTP Exforge](Bundle-2n-MTPExforge.html)
* IVF LEGGYFIX Fixiersyst Urinbeutel L (aktiv): [MTP Leggyfix](Bundle-2o-MTPLeggyfix.html)

