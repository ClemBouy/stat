# Descriptif des fichiers 
## 00_Export.ipynb
Notebook utilisé pour l'export des données à partir du portfolio. 

## 01_PreparationDonnées.ipynb
Notebook permettant de mettre en forme la base de données en vue des analyses. 

## 02_DescriptionVariablesQualitative.ipynb 
Description statistique individuelle de chaque variable qualitative de la base de données : 
- tag (stage)
- FS (familles de situation)
- PE (problématique exemplaire)
- RC (résultat de consultation)
- specialty (spécialité) 
- step_5 (raisonnement clinique en 5 étapes)
- step_2 (raisonnement clinique en 2 étapes) 
- ecn_item (item ecn)
- skill (compétence) 
- ped_ambu (oui / non)
- order_1 (urgence avant SN1 ou l'inverse)
- step_PEC_TTT (prescription : oui / non)
- step_diag (diagnostic : oui / non)
- step_autre (autre : oui / non)

## 03_Spécialité_Item.ipynb
Description de la répartition des item (%) en fonction de la spécialité (diagrammes en barre).  
Analyse factorielle des correspondances entre les spécialités et les item : les résultats ne sont pas pertinents, à ne pas utiliser. 

## 04_Item_EtapeRaisonnement.ipynb 
Pour chaque item ECN, affichage d'un pie-chart illustrant les étapes du raisonnement cliniques associées.  

## 05_RC_Item.ipynb
Pour chaque RC, on décrit la réparition des item (%) par un diagramme en barre.  
Analyse factorielle des correspondances entre l'item et le RC : résultats non pertinents, ne pas utiliser. 

## 06_PE_Item.ipynb
Pour chaque PE, on décrit la répartition des item (%) par un diagramme en barre.  
Analyse factorielle des correspondances entre l'item et la PE.  

## 07_FS_Item.ipynb 
Pour chaque FS, on décrit la réparition des item (%) par un diagramme en barre.  
Analyse factorielle des correspondances entre l'item et la FS.  

## 08_FS_RC.ipynb
Pour chaque FS, on décrit la répartition des RC (%) par un diagramme en barre. 
Analyse factorielle des correspondances entre le RC et la FS. 

## 09_Skill_RC_et_RC_Skill.ipynb
Pour chaque Compétence, on décrit la réparition des RC (%) par un diagramme en barre.  
Pour chaque RC, on décrit la réparition des compétences (%) par un diagramme en barre.  
Analyse factorielle des correspondances entre le RC et la compétence. 

## 10_Skill_item_et_Item_Skill.ipynb
Pour chaque compétence, on décrit la répartition des item (%) par un diagramme en barre. 
Pour chaque item, on décrit la répartition des compétences (%) par un diagramme en barre. 
On voit émerger des groupes item / compétences. C6 plutôt en lien avec les item 2, 4, 6, 7, 9 et 19. 
Un autre groupe d'items autour de la compétence C5. 
La compétence C1 est en lien avec l'item 1 et uniquement celui-ci. C'est d'ailleurs le principal résultat en terme de contribution : l'opposition entre C1 + Item 1 et tout le reste. 
On voit un autre groupe d'item autour de C2, C3 et C4 qui semblent proches en terme d'item ECN et qui s'opposent au groupe C6. 

## 11_Student_FS.ipynb 
On voit apparaitre deux groupes d'étudiants, qui n'abordent pas tout à fait les même familles de situation. Un premier groupe qui va aborder plutôt la FS07 mais jamais la FS10 et pour l'autre groupe c'est l'inverse.  
Opposition entre des patientèles de niveau socio-économiques différents ?  


## 12_Student_RC.ipynb
L'analyse factorielle des correspondances ne donne pas de résultats pertinents, le cumul des deux premières dimensions n'expliquant que 9% de la variance totale. 



## 13_Student_Specialty.ipynb 
L'analyse factorielle n'est pas très pertinente ici puisqu'on n'atteint que 20% de variances expliqués par les deux premières dimensions. On a l'impression d'un unique regroupement au centre du graph, avec seulement 3-4 étudiants qui sortent du lot. Cela pourrait traduire une certaine homogénéité des profils.  


## 99_Student_item.ipynb 
Pour chaque étudiant on décrit la réparition des item par un diagramme en barre (fait à titre systématique mais pas forcément très pertinent). On voit quand même que les étudiants abordent des item plus ou moins variés. L'item 1 est sur-représenté et surtout il est régulièrement abordé plusieurs fois pour chaque étudiant. 
L'analyse factorielle ne retrouve aucun résultat significatif.  