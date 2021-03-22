BEGIN{

	FS=","
	OFS=","
	worstD=1000
	worstSD=1000
	x=0
	x2=0
	     }
 
function totalAvg(type){
 	if($3 == type){
		c=(c+1)
 		avg=avg+$5
 		return avg/c
}
 }
 
 
function hpAvg(type)
 {
 	if($3 == type){
 		c2=c2+1
 		avg2=avg2+$6
 	}
 	if(NR == 801){
 	return avg2/c2}
 	
 }
 
function attackAvg(type)
 {
 	if($3 == type){
 		c3=c3+1
 		avg3=avg3+$7
 	}
 
 	if(NR == 801){
 	return avg3/c3}
 	
 }
 
function defenseAvg(type)
 {
 	if($3 == type){
 		c4=c4+1
 		avg4=avg4+$8
 	}
 	if(NR == 801){
 	return avg4/c4}
 	
 }
 
function spattackAvg(type)
 {
 	if($3 == type){
 		c5=c5+1
 		avg5=avg5+$9
 	}
 
 	if(NR == 801){
 	return avg5/c5}
 	
 }
 
function spdefenseAvg(type)
 {
 	if($3 == type){
 		c6=c6+1
 		avg6=avg6+$10
 	}
 
 	if(NR == 801){
 	return avg6/c6}
 	
 }
 
function speedAvg(type)
 {
 	if($3 == type){
 		c7=c7+1
 		avg7=avg7+$11
 	}
 
 	if(NR == 801){
 	return avg7/c7}
 	
 }

 {if(NR>1){ # Use to ignore header line

	{ #NUMBER 1: STRONGEST POKEMON (OVERALL)
		if($5>power){
			power=$5
			name=$2
		}
		if($5 == power && name != $2){
			name=name", "$2
		}
	}	


	{ #NUMBER 2: AVERAGE OF EACH STAT
		pokenum=$1
		t=t+$5
		h=h+$6
		a=a+$7
		d=d+$8
		sa=sa+$9
		sd=sd+$10
		sp=sp+$11
	}


	{ #NUMBER 3: MOST POWERFUL OF EACH TYPE
		if($3 == "Bug"){
		if($5>tB){
			tB=$5
			nB=$2
		}
		if(($5 == tB) && (nB != $2)){
			nB=nB", "$2
		}}

		if($3 == "Dark"){
		if($5>tDa){
			tDa=$5
			nDa=$2
		}
		if($5 == tDa && nDa != $2){
			nDa=nDa", "$2
		}}
		
		if($3 == "Dragon"){
		if($5>tDr){
			tDr=$5
			nDr=$2
		}
		if(($5 == tDr) && (nDr != $2)){
			nDr=nDr", "$2
		}}

		if($3 == "Electric"){
		if($5>tE){
			tE=$5
			nE=$2
		}
		if($5 == tE && nE != $2){
			nE=nE", "$2
		}}

		if($3 == "Fairy"){
		if($5>tFa){
			tFa=$5
			nFa=$2
		}
		if($5 == tFa && nFa != $2){
			nFa=nFa", "$2
		}}

		if($3 == "Fighting"){
		if($5>tFig){
			tFig=$5
			nFig=$2
		}
		if($5 == tFig && nFig != $2){
			nFig=nFig", "$2
		}}

		if($3 == "Fire"){
		if($5>tFir){ #HERE
			tFir=$5
			nFir=$2
		}
		if($5 == tFir && nFir != $2){
			nFir=nFir", "$2
		}}

		if($3 == "Flying"){
		if($5>tFl){ #HERE
			tFl=$5
			nFl=$2
		}
		if($5 == tFl && nFl != $2){
			nFl=nFl", "$2
		}}

		if($3 == "Ghost"){
		if($5>tGh){ #HERE
			tGh=$5
			nGh=$2
		}
		if($5 == tGh && nGh != $2){
			nGh=nGh", "$2
		}}

		if($3 == "Grass"){
		if($5>tGra){ #HERE
			tGra=$5
			nGra=$2
		}
		if($5 == tGra && nGra != $2){
			nGra=nGra", "$2
		}}

		if($3 == "Ground"){
		if($5>tGro){ #HERE
			tGro=$5
			nGro=$2
		}
		if($5 == tGro && nGro != $2){
			nGro=nGro", "$2
		}}

		if($3=="Ice"){
		if($5>tI){ #HERE
			tI=$5
			nI=$2
		}
		if($5 == tI && nI != $2){
			nI=nI", "$2
		}}

		if($3 == "Normal"){
		if($5>tN){ #HERE
			tN=$5
			nN=$2
		}
		if($5 == tN && nN != $2){
			nN=nN", "$2
		}}

		if($3 == "Poison"){
		if($5>tPo){ #HERE
			tPo=$5
			nPo=$2
		}
		if($5 == tPo && nPo != $2){
			nPo=nPo", "$2
		}}

		if($3 == "Psychic"){
		if($5>tPs){ #HERE
			tPs=$5
			nPs=$2
		}
		if($5 == tPs && nPs != $2){
			nPs=nPs", "$2
		}}

		if($3 == "Rock"){
		if($5>tR){ #HERE
			tR=$5
			nR=$2
		}
		if($5 == tR && nR != $2){
			nR=nR", "$2
		}}

		if($3 == "Steel"){
		if($5>tS){ #HERE
			tS=$5
			nS=$2
		}
		if($5 == tS && nS != $2){
			nS=nS", "$2
		}}

		if($3 == "Water"){
		if($5>tW){ #HERE
			tW=$5
			nW=$2
		}
		if($5 == tW && nW != $2){
			nW=nW", "$2
		}}
	}


 	{ #NUMBER 4: AVERAGE STATS FOR EACH TYPE

		if($3 == "Bug"){
			aTB+=$5
 			aHB+=$6
 			aAB+=$7
 			aDB+=$8
 			aSAB+=$9
			aSDB+=$10
 			aSB+=$11
			++bugNum
		}
		if($3 == "Dark"){
			aTDa+=$5
 			aHDa+=$6
 			aADa+=$7
 			aDDa+=$8
 			aSADa+=$9
			aSDDa+=$10
 			aSDa+=$11
			++darkNum
 		}
		if($3 == "Dragon"){
			aTDr+=$5
 			aHDr+=$6
 			aADr+=$7
 			aDDr+=$8
 			aSADr+=$9
			aSDDr+=$10
 			aSDr+=$11
			++dragonNum
 		}
		if($3 == "Electric"){
			aTE+=$5
 			aHE+=$6
 			aAE+=$7
 			aDE+=$8
 			aSAE+=$9
			aSDE+=$10
 			aSE+=$11
			++electricNum
 		}
		if($3 == "Fighting"){
			aTFig+=$5
 			aHFig+=$6
 			aAFig+=$7
 			aDFig+=$8
 			aSAFig+=$9
			aSDFig+=$10
 			aSFig+=$11
			++fightingNum
 		}
		if($3 == "Fire"){
			aTFir+=$5
 			aHFir+=$6
 			aAFir+=$7
 			aDFir+=$8
 			aSAFir+=$9
			aSDFir+=$10
 			aSFir+=$11
			++fireNum
 		}
		if($3 == "Ghost"){
			aTGh+=$5
 			aHGh+=$6
 			aAGh+=$7
 			aDGh+=$8
 			aSAGh+=$9
			aSDGh+=$10
 			aSGh+=$11
			++ghostNum
 		}
		if($3 == "Grass"){
			aTGra+=$5
 			aHGra+=$6
 			aAGra+=$7
 			aDGra+=$8
 			aSAGra+=$9
			aSDGra+=$10
 			aSGra+=$11
			++grassNum
 		}
		if($3 == "Ice"){
			aTI+=$5
 			aHI+=$6
 			aAI+=$7
 			aDI+=$8
 			aSAI+=$9
			aSDI+=$10
 			aSI+=$11
			++iceNum
 		}
		if($3 == "Poison"){
			aTPo+=$5
 			aHPo+=$6
 			aAPo+=$7
 			aDPo+=$8
 			aSAPo+=$9
			aSDPo=$10
 			aSPo+=$11
			++poisonNum
 		}
		if($3 == "Psychic"){
			aTPs+=$5
 			aHPs+=$6
 			aAPs+=$7
 			aDPs+=$8
 			aSAPs+=$9
			aSDPs+=$10
 			aSPs+=$11
			++psychicNum
 		}
		if($3 == "Rock"){
			aTR+=$5
 			aHR+=$6
 			aAR+=$7
 			aDR+=$8
 			aSAR+=$9
			aSDR+=$10
 			aSR+=$11
			++rockNum
 		}
		if($3 == "Steel"){
			aTS+=$5
 			aHS+=$6
 			aAS+=$7
 			aDS+=$8
 			aSAS+=$9
			aSDS+=$10
 			aSS+=$11
			++steelNum
 		}
		if($3 == "Fairy"){
			aTFa+=$5
 			aHFa+=$6
 			aAFa+=$7
 			aDFa+=$8
 			aSAFa+=$9
			aSDFa+=$10
 			aSFa+=$11
			++fairyNum
 		}
		if($3 == "Flying"){
			aTFl+=$5
 			aHFl+=$6
 			aAFl+=$7
 			aDFl+=$8
 			aSAFl+=$9
			aSDFl+=$10
 			aSFl+=$11
			++flyingNum
 		}
		if($3 == "Normal"){
			aTN+=$5
 			aHN+=$6
 			aAN+=$7
 			aDN+=$8
 			aSAN+=$9
			aSDN+=$10
 			aSN+=$11
			++normalNum
 		}
		if($3 == "Ground"){
			aTGro+=$5
 			aHGro+=$6
 			aAGro+=$7
 			aDGro+=$8
 			aSAGro+=$9
			aSDGro+=$10
 			aSGro+=$11
			++groundNum
 		}
		if($3 == "Water"){
			aTW+=$5
 			aHW+=$6
 			aAW+=$7
 			aDW+=$8
 			aSAW+=$9
			aSDW+=$10
 			aSW+=$11
			++waterNum
 		}
	}


	{ # NUMBER 5: WORST (SPECIAL) ATTACK AND (SPECIAL) DEFENSE MATCHUP
		if(bestA<$7){
			bestA=$7
			bestAname=$2
		}

		if(worstD>$8){
			worstD=$7
			worstDname=$2
		}

		if(bestSA<$7){
			bestSA=$9
			bestSAname=$2
		}

		if(worstSD>$10){
			worstSD=$10
			worstSDname=$2
		}
	}

}}

END{
	
	print "Most powerful Pokemon is/are " name " with a total of " power"\n"
	print "Average total: "t/pokenum
	print "Average HP: "h/pokenum
	print "Average Attack: "a/pokenum
	print "Average Defense: "d/pokenum
	print "Average Special Attack: "sa/pokenum
	print "Average Special Defense: "sd/pokenum
	print "Average Speed: "sp/pokenum"\n"
	print "Most powerful Bug type is/are " nB " with a total of " tB
	print "Most powerful Dark type is/are " nDa " with a total of " tDa
	print "Most powerful Dragon type is/are " nDr " with a total of " tDr
	print "Most powerful Electric type is/are " nE " with a total of " tE
	print "Most powerful Fairy type is/are " nFa " with a total of " tFa
	print "Most powerful Fighting type is/are " nFig " with a total of " tFig
	print "Most powerful Fire type is/are " nFir " with a total of " tFir
	print "Most powerful Flying type is/are " nFl " with a total of " tFl
	print "Most powerful Ghost type is/are " nGh " with a total of " tGh
	print "Most powerful Grass type is/are " nGra " with a total of " tGra
	print "Most powerful Ground type is/are " nGro " with a total of " tGro
	print "Most powerful Ice type is/are " nI " with a total of " tI
	print "Most powerful Normal type is/are " nN " with a total of " tN
	print "Most powerful Poison type is/are " nPo " with a total of " tPo
	print "Most powerful Psychic type is/are " nPs " with a total of " tPs
	print "Most powerful Rock type is/are " nR " with a total of " tR
	print "Most powerful Steel type is/are " nS " with a total of " tS
	print "Most powerful Water type is/are " nW " with a total of " tW"\n"
	print "TYPE		TOTAL		HP		ATTACK		DEFENSE		SP.ATTACK	SP.DEFENSE	SPEED"
	print "----------------------------------------------------------------------------------------------------------------------"
	print "BUG		"(aTB/bugNum)"		"(aHB/bugNum)"		"(aAB/bugNum)"		"(aDB/bugNum)"		"(aSAB/bugNum)"		"(aSDB/bugNum)"		"(aSB/bugNum)
	print "DARK		"(aTDa/darkNum)"		"(aHDa/darkNum)"		"(aADa/darkNum)"		"(aDDa/darkNum)"		"(aSADa/darkNum)"		"(aSDDa/darkNum)"		"(aSDa/darkNum)
	print "DRAGON		"(aTDr/dragonNum)"		"(aHDr/dragonNum)"		"(aADr/dragonNum)"		"(aDDr/dragonNum)"		"(aSADr/dragonNum)"		"(aSDDr/dragonNum)"		"(aSDr/dragonNum)
	print "ELECTRIC	"(aTE/electricNum)"		"(aHE/electricNum)"		"(aAE/electricNum)"		"(aDE/electricNum)"		"(aSAE/electricNum)"		"(aSDE/electricNum)"		"(aSE/electricNum)
	print "FAIRY		"(aTFa/fairyNum)"		"(aHFa/fairyNum)"		"(aAFa/fairyNum)"		"(aDFa/fairyNum)"		"(aSAFa/fairyNum)"		"(aSDFa/fairyNum)"		"(aSFa/fairyNum)
	print "FIGHTING	"(aTFig/fightingNum)"		"(aHFig/fightingNum)"		"(aAFig/fightingNum)"		"(aDFig/fightingNum)"		"(aSAFig/fightingNum)"		"(aSDFig/fightingNum)"		"(aSFig/fightingNum)
	print "FIRE		"(aTFir/fireNum)"		"(aHFir/fireNum)"		"(aAFir/fireNum)"		"(aDFir/fireNum)"		"(aSAFir/fireNum)"		"(aSDFir/fireNum)"		"(aSFir/fireNum)
	print "FLYING		"(aTFl/flyingNum)"		"(aHFl/flyingNum)"		"(aAFl/flyingNum)"		"(aDFl/flyingNum)"		"(aSAFl/flyingNum)"		"(aSDFl/flyingNum)"		"(aSFl/flyingNum)
	print "GHOST		"(aTGh/ghostNum)"		"(aHGh/ghostNum)"		"(aAGh/ghostNum)"		"(aDGh/ghostNum)"		"(aSAGh/ghostNum)"		"(aSDGh/ghostNum)"		"(aSGh/ghostNum)
	print "GRASS		"(aTGra/grassNum)"		"(aHGra/grassNum)"		"(aAGra/grassNum)"		"(aDGra/grassNum)"		"(aSAGra/grassNum)"		"(aSDGra/grassNum)"		"(aSGra/grassNum)
	print "GROUND		"(aTGro/groundNum)"		"(aHGro/groundNum)"		"(aAGro/groundNum)"		"(aDGro/groundNum)"		"(aSAGro/groundNum)"		"(aSDGro/groundNum)"		"(aSGro/groundNum)
	print "ICE		"(aTI/iceNum)"		"(aHI/iceNum)"		"(aAI/iceNum)"		"(aDI/iceNum)"		"(aSAI/iceNum)"		"(aSDI/iceNum)"		"(aSI/iceNum)
	print "NORMAL		"(aTN/normalNum)"		"(aHN/normalNum)"		"(aAN/normalNum)"		"(aDN/normalNum)"		"(aSAN/normalNum)"		"(aSDN/normalNum)"		"(aSN/normalNum)
	print "POISON		"(aTPo/poisonNum)"		"(aHPo/poisonNum)"		"(aAPo/poisonNum)"		"(aDPo/poisonNum)"		"(aSAPo/poisonNum)"		"(aSDPo/poisonNum)"		"(aSPo/poisonNum)
	print "PSYCHIC		"(aTPs/psychicNum)"		"(aHPs/psychicNum)"		"(aAPs/psychicNum)"		"(aDPs/psychicNum)"		"(aSAPs/psychicNum)"		"(aSDPs/psychicNum)"		"(aSPs/psychicNum)
	print "ROCK		"(aTR/rockNum)"		"(aHR/rockNum)"		"(aAR/rockNum)"		"(aDR/rockNum)"		"(aSAR/rockNum)"		"(aSDR/rockNum)"		"(aSR/rockNum)
	print "STEEL		"(aTS/steelNum)"		"(aHS/steelNum)"		"(aAS/steelNum)"		"(aDS/steelNum)"		"(aSAS/steelNum)"		"(aSDS/steelNum)"		"(aSS/steelNum)
	print "WATER		"(aTW/waterNum)"		"(aHW/waterNum)"		"(aAW/waterNum)"		"(aDW/waterNum)"		"(aSAW/waterNum)"		"(aSDW/waterNum)"		"(aSW/waterNum)"\n"
	print "The most unbalanced battle (based on Attack/Defense ratio) is between "bestAname" and "worstDname
	print "The most unbalanced battle (based on Sp. Attack/Sp. Defense ratio) is between "bestSAname" and "worstSDname	
	print "\n"fightingNum
}	
