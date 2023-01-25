### UC 1 - Add and modify treatments
Ajouter un traitement et changements:
* <span style="background-color:turquoise">MTP</span> - **Ajouter un traitement** - ajouter -> un médicament avec toutes les possibilités   
* <span style="background-color:turquoise">PADV</span> - **Changements** - arrêt (CANCEL), changement de posologie (CHANGE), commentaire (COMMENT)

Aperçu sous forme de tableau des scénarios d'utilisation suivants:

{:class="table table-bordered" style="background-color:#f6f6f6"}
| Lieu du traitement | Date | Activité/décision | Document | Consolidated Medication Card document (Analyzer) |
| --- | --- | --- | --- | --- |
|  |  | Traitement préexistant | [MTP Reniten](Bundle-0-1-MTPReniten.html), <br>[MTP Zocor](Bundle-0-2-MTPZocor.html), <br>[MTP Aspirin](Bundle-0-3-MTPAspirin.html) | |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Dafalgan](Bundle-1-1-MTPDafalgan.html) | |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Voltaren](Bundle-1-2-MTPVoltaren.html) | |
| [Chez le médecin](usecase-french.html#chez-le-médecin) | [12.02.2019](usecase-french.html#12022019) | Ajouter un médicament | [MTP Temesta](Bundle-1-3-MTPTemesta.html) | |
| Au niveau des transactions depuis le SI du médecin | [12.02.2019](usecase-french.html#12022019) | <span style="background-color:turquoise">Import PML: <br>3 x MTP</span> | | |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Arrêter le médicament | [PADV Temesta (CANCEL)](Bundle-2-1-PADVTemesta.html) | Output Analyzer = [Cons. Card Temesta](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/Bundle-PMP2-ConsolidatedMedicationCard.json.html) <br>(see [here](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/usecases.html#cancel) in detail) |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Ajouter un commentaire | [PADV Dafalgan (COMMENT)](Bundle-2-2-PADVDafalgan.html) | Output Analyzer = [Cons. Card Dafalgan](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/Bundle-PMP3-ConsolidatedMedicationCard.json.html) <br>(see [here](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/usecases.html#comment) in detail) |
| [À la pharmacie](usecase-french.html#à-la-pharmacie) | [15.02.2019](usecase-french.html#15022019) | Ajouter un médicament | [MTP Similasan](Bundle-2-3-MTPSimilasan.html) | |
| Au niveau des transactions depuis le SI de la pharmacie | [15.02.2019](usecase-french.html#15022019) | <span style="background-color:turquoise">Import PML: <br>2 x PADV, 1 x MTP</span> | | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [27.02.2019](usecase-french.html#27022019) | Ajouter un médicament | [MTP Cetirizine](Bundle-3-1-MTPCetirizine.html) | |
| | [27.02.2019](usecase-french.html#27022019) | <span style="background-color:turquoise">Import PML: <br>1 x MTP</span> | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [28.02.2019](usecase-french.html#28022019) | Changement de posologie | [PADV Cetirizine (CHANGE)](Bundle-3-2-PADVCetirizine.html) | Output Analyzer = [Cons. Card Cetirizine](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/Bundle-PMP1-ConsolidatedMedicationCard.json.html) <br>(see [here](http://build.fhir.org/ig/ahdis/hci-analyzer/branches/master/usecases.html#change) in detail) |
| | [28.02.2019](usecase-french.html#28022019) | <span style="background-color:turquoise">Import PML: <br>1 x PADV</span> | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Dermed](Bundle-3-3-MTPDermed.html) | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Excipial](Bundle-3-4-MTPExcipial.html) | |
| [À la sortie de l’hôpital](usecase-french.html#à-la-sortie-de-lhôpital) | [01.03.2019](usecase-french.html#01032019) | Ajouter un médicament | [MTP Hydrocortisone](Bundle-3-5-MTPHydrocortisone.html) | |
| Au niveau des transactions depuis le SI de l’hôpital | [01.03.2019](usecase-french.html#01032019) | <span style="background-color:turquoise">Import PML: <br>3 x MTP</span> | | |

#### Chez le médecin
##### 12.02.2019
Le 12.02.2019, Mme Dupond se rend chez son médecin de famille, le Dr Rochat, pour un rendez-vous de routine. Lors de l’anamnèse, il consulte son <span style="background-color:#ffffc7">plan de médication</span> actuel, qui indique:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg	| 1-0-0-0 | |	
| Zocor cpr pell 40 mg | 0-0-1-0 | |	
| Aspirin Cardio cpr pell 100 mg | 1-0-0-0 | |	

Il lui transmet la prescription du traitement habituel pour trois mois, et ajoute du:

* *Dafalgan cpr pell 1 g*, **1-1-1-0, dosage avancé**: en réserve, **raison**: douleurs ([MTP Dafalgan](Bundle-1-1-MTPDafalgan.html))

* *Voltarène dolo forte émulgel*, **1-1-1-1**, durant **7 jours**, **raison**: douleurs ([MTP Voltaren](Bundle-1-2-MTPVoltaren.html))

* *Temesta Expidet cpr orodisp 1 mg*, **0-0-0-1**, durant **4 jours**, **raison**: pour dormir   
**instruction au patient**: laisser fondre 1 comprimé sous la langue ½ heure avant le coucher (si aucune amélioration au bout de 4 jours, reprendre contact avec le médecin) ([MTP Temesta](Bundle-1-3-MTPTemesta.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI du médecin</span>   
<span style="background-color:turquoise">Import PML: 3 x MTP</span>


Il lui transmet également le <span style="background-color:#ffffc7">plan de médication</span> mis à jour qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours (18.02.2019) | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours (15.02.2019) <br>+ instruction au patient | 


#### À la pharmacie
##### 15.02.2019
Après 3 jours, le 15.02.2019 elle se rend à la pharmacie, elle informe cette dernière que le Temesta ne l’aide pas à dormir. La pharmacie consulte le traitement de la patiente PML (timeline):

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  | 	
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | 

et voit l'instruction au patient sous le Temesta: si aucune amélioration au bout de 4 jours, reprendre contact avec le médecin. La pharmacie prend contact téléphoniquement avec le médecin et ce dernier indique que le Temesta doit être stoppé.

* *Temesta Expidet cpr orodisp 1 mg*, **arrêter la médication**, **commentaire**: selon téléphone avec le médecin, arrêter le traitement car inefficace ([PADV Temesta (CANCEL)](Bundle-2-1-PADVTemesta.html))  

Mme Dupont indique aussi à la pharmacie qu’elle n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène émulgel. La pharmacie saisit un commentaire sur la ligne du Dafalgan et elle continue avec le Voltarène jusqu’à la date prévue.

* *Dafalgan cpr pell 1 g*, **créer un commentaire**: la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet ([PADV Dafalgan (COMMENT)](Bundle-2-2-PADVDafalgan.html)) 

La pharmacie donne un nouveau médicament contre les insomnies, avec une posologie spéciale à adapter suivant le résultat.

* *SIMILASAN Troubles du sommeil gouttes*, **dosage spécial**: prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. **Raison**: insomnies ([MTP Similasan](Bundle-2-3-MTPSimilasan.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  |  | 		
| Zocor cpr pell 40 mg | 0-0-1-0 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | Commentaire 15.02.2019: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours |  | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. |  | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de la pharmacie</span>   
<span style="background-color:turquoise">Import PML: 2 x PADV, 1 x MTP</span>

Après ces modifications la pharmacie transmet un nouveau <span style="background-color:#ffffc7">plan de médication</span> qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  | 
| Aspirin Cardio cpr pell 100 mg | 1-0-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours (18.02.2019) | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 


#### À la sortie de l’hôpital
##### 27.02.2019

2 semaines plus tard, le 27.02.2019 Madame Dupont se rend aux urgences à cause d’un prurit insupportable (nuit), au CHUV où ils décident de l’hospitaliser. 

Son PML (timeline) indique les médicaments suivants:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  |  | 	
| Dafalgan cpr pell 1 g	| 1-1-1-0 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  | 

L’hôpital décide de donner de la Cetirizine Mepha Lactab 10 mg le soir pour 3 jours.

Ajouter -> un médicament

* *Cetirizine Mepha Lactab 10 mg*, **0-0-1-0**, durant **3 jours**, **raison**: allergie ([MTP Cetirizine](Bundle-3-1-MTPCetirizine.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  |  | 	
| Zocor cpr pell 40 mg | 0-0-1-0 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  | 
| Cetirizine Mepha Lactab 10 mg | 0-0-1-0 | Durant 3 jours |  | 
 
<span style="background-color:turquoise">Import PML: 1 x MTP</span>   

##### 28.02.2019
Le lendemain matin le 28.02.2019, la patiente ne réagissant pas assez rapidement au traitement, l’hôpital décide de changer la posologie.

* *Cetirizine Mepha Lactab 10 mg*, **changement de posologie**, **1-0-1-0**, **commentaire**: pas de réaction significative avec le traitement 1 x jour. -> 2x/j. ([PADV Cetirizine (CHANGE)](Bundle-3-2-PADVCetirizine.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.  | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  |
| Cetirizine Mepha Lactab 10 mg | 0-0-1-0 |  | Changement: changement de posologie le 28.02.2019 <br>Commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1-0 | Durant 3 jours | 

<span style="background-color:turquoise">Import PML: 1 x PADV</span>   

##### 01.03.2019

Après son séjour à l’hôpital le 01.03.2019, Mme Dupont reçoit le traitement suivant:

* *DER-MED lotion lavante pH5.5*, **dosage spécial**: posologie selon instruction patient, **en réserve**, **raison**: peau sensible, **instruction au patient**: pour se laver, **date de fin inconnue** ([MTP Dermed](Bundle-3-3-MTPDermed.html))

* *Excipial U Lipolotion Fl*, **dosage spécial**: posologie selon instruction patient, **raison**: peau sensible, **instruction au patient**: appliquer aussi souvent que nécessaire, **date de fin inconnue** ([MTP Excipial](Bundle-3-4-MTPExcipial.html))

* *Hydrocortisone Galepharm cpr 10 mg*, **0.5-0-0.5-0**, **en réserve**, **raison**: prurit, **instruction au patient**: en cas de crise de prurit ([MTP Hydrocortisone](Bundle-3-5-MTPHydrocortisone.html))

Son PML (timeline) indique:

{:class="table table-bordered"}
| Reniten cpr 20 mg | 1-0-0-0 |  |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  |  | 	
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  |  | 	
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | Commentaire: la patiente n’a pas pris de Dafalgan car les douleurs se sont atténuées grâce au Voltarène dolo forte émulgel | 
| Voltarène dolo forte émulgel | 1-1-1-1 | Durant 7 jours | Terminé le 18.02.2019 | 
| Temesta Expidet cpr orodisp 1 mg | 0-0-0-1 | Durant 4 jours <br>+ instruction au patient | Changements: stoppé le 15.02.2019 <br>Commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace. | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher |  |
| Cetirizine Mepha Lactab 10 mg | 0-0-1-0 |  | Changement: changement de posologie le 28.02.2019 <br>Commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2 x/j. | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1-0 | Durant 3 jours |  | 
| DER-MED lotion lavante pH5.5 | Dosage spécial | posologie selon instruction patient <br>+ en réserve <br>+ date de fin inconnue | Instruction au patient: pour se laver | 
| Excipial U Lipolotion Fl | Dosage spécial | posologie selon instruction patient <br>+ date de fin inconnue | Instruction au patient: appliquer aussi souvent que nécessaire | 
| Hydrocortisone Galepharm cpr 10 mg | 0.5-0-0.5-0 | En réserve | Instruction au patient: en cas de crise de prurit | 

<span style="background-color:turquoise">Au niveau des transactions depuis le SI de l’hôpital</span>   
<span style="background-color:turquoise">Import PML: 3 x MTP</span>   

Après ces modifications la pharmacie transmet un nouveau <span style="background-color:#ffffc7">plan de médication</span> qui contient:

{:class="table table-bordered" style="background-color:#ffffc7"}
| Reniten cpr 20 mg | 1-0-0-0 |  | 
| Zocor cpr pell 40 mg | 0-0-1-0 |  | 
| Aspirine Cardio cpr pell 100 mg | 1-0-0-0 |  | 
| Dafalgan cpr pell 1 g | 1-1-1-0 | En réserve | 
| SIMILASAN Troubles du sommeil gouttes | Dosage spécial | Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher | 
| Cetirizine Mepha Lactab 10 mg | 1-0-1-0 | Durant 3 jours (01.03.2019) |  
| DER-MED lotion lavante pH5.5 | Dosage spécial | posologie selon instruction patient <br>+ en réserve <br>+ date de fin inconnue | 
| Excipial U Lipolotion Fl | Dosage spécial | posologie selon instruction patient <br>+ date de fin inconnue | 
| Hydrocortisone Galepharm cpr 10 mg | 0.5-0-0.5-0 | En réserve <br>+ instruction au patient | 

### UC 2 - Show all elements in the timeline
Representation in the Documedis timeline:   
* <span style="background-color:#fcf295">active Medication</span>
* <span style="background-color:#f0edc9">inactive Medication</span>

#### Active and inactive Medication with different elements
* <span style="background-color:#f0edc9">ZOCOR Filmtabl 40 mg (no longer active):</span> [MTP Zocor](Bundle-2a-MTPZocor.html)
* <span style="background-color:#fcf295">RENITEN Tabl 20 mg (active):</span> [MTP Reniten](Bundle-2b-MTPReniten.html)
* <span style="background-color:#fcf295">ASPIRIN CARDIO Fimtabl 100 mg (active):</span> [MTP Aspirin](Bundle-2c-MTPAspirin.html)
* <span style="background-color:#f0edc9">TEMESTA EXPIDET Schmelztabl 1 mg (no longer active):</span> [MTP Temesta](Bundle-2d-MTPTemesta.html), [PADV Temesta (COMMENT)](Bundle-2e-PADVTemesta.html)
* <span style="background-color:#fcf295">DAFALGAN Filmtabl 1 g (active):</span> [MTP Dafalgan](Bundle-2f-MTPDafalgan.html)
* <span style="background-color:#fcf295">SIMILASAN Schlafstörungen Tropfen (active):</span> [MTP Similasan](Bundle-2g-MTPSimilasan.html)
* <span style="background-color:#fcf295">VOLTAREN DOLO FORTE Emugel (active):</span> [MTP Voltaren](Bundle-2h-MTPVoltaren.html)
* <span style="background-color:#fcf295">HYDROCORTISON Galepharm Tabl 10 mg (active):</span> [MTP Hydrocortison](Bundle-2i-MTPHydrocortisone.html)
* <span style="background-color:#f0edc9">HYDROCORTISON Galepharm Tabl 10 mg (no longer active):</span> [PADV Hydrocortison (CANCEL)](Bundle-2j-PADVHydrocortisone.html)
* <span style="background-color:#f0edc9">CETIRIZIN Mepha Lactab 10 mg (no longer active since 25.06.2022):</span> [MTP Cetirizin](Bundle-2k-MTPCetirizine.html), [PADV Cetirizin (CHANGE)](Bundle-2l-PADVCetirizine.html)
* <span style="background-color:#fcf295">CETIRIZIN Mepha Lactab 10 mg (active)</span>
* <span style="background-color:#fcf295">CLEXANE Inj Lös 60 mg/0.6ml Fertigspr (active):</span> [MTP Clexane](Bundle-2m-MTPClexane.html)
* <span style="background-color:#fcf295">EXFORGE HCT Filmtabl 5mg/160mg/12.5mg (active):</span> [MTP Exforge](Bundle-2n-MTPExforge.html)
* <span style="background-color:#fcf295">IVF LEGGYFIX Fixiersyst Urinbeutel L (active):</span> [MTP Leggyfix](Bundle-2o-MTPLeggyfix.html)

### UC 3 - Date in the future
#### Change in the future due to wrong duration
* Add SINTROM: [MTP SINTROM 7d](Bundle-3a-MTPSintrom.html)
   * Date of entry: 01.07.2022
   * Date of treatment: 10.07.2022-16.07.2022 (7 days) 
* Stop SINTROM: [PADV SINTROM 7d (CANCEL)](Bundle-3b-PADVSintrom.html)
   * Date of entry: 01.07.2022
   * Reason: Wrong duration
* Add SINTROM new: [MTP SINTROM 10d](Bundle-3c-MTPSintrom.html)
   * Date of entry: 01.07.2022
   * Date of treatment with corrected end date: 10.07.2022-19.07.2022 (10 days) 

#### Change in the future due to wrong posology
* Add PASPERTIN: [MTP PASPERTIN 7d](Bundle-3d-MTPPaspertin.html)
   * Date of entry: 01.07.2022
   * Posology: 0-0-0-1
* Change PASPERTIN: [PADV PASPERTIN 7d (CHANGE)](Bundle-3e-PADVPaspertin.html)
   * Date of entry: 01.07.2022
   * Reason: Wrong posology 
   * Corrected posology: 1-0-0-0
