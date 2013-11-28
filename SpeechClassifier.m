#import "SpeechClassifier.h"

@interface SpeechClassifier ()

@end

@implementation SpeechClassifier

-(NSNumber *)classify:(NSArray *)features
{
	double p = [[self N702b0ad6485:features] doubleValue];
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N702b0ad6485:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.8060081956403955) { p = [[self N19d4a122486:features] doubleValue]; }
	else if(d > -1.8060081956403955) { p = [[self N493d33f9584:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N19d4a122486:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.7394735955354594) { p = [[self N569ecc6d487:features] doubleValue]; }
	else if(d > -3.7394735955354594) { p = [[self N47402d88498:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N569ecc6d487:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.23123153581922687) { p = [[self N537f3488488:features] doubleValue]; }
	else if(d > -0.23123153581922687) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N537f3488488:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.572165695015985) { p = [[self N4451f78b489:features] doubleValue]; }
	else if(d > -1.572165695015985) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4451f78b489:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.121017685597819) { p = 0; }
	else if(d > -6.121017685597819) { p = [[self N6152e9b7490:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6152e9b7490:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 78.44528822045002) { p = 0; }
	else if(d > 78.44528822045002) { p = [[self Na6e1f4c491:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Na6e1f4c491:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.775879538385727) { p = 0; }
	else if(d > -2.775879538385727) { p = [[self N43c8bbed492:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N43c8bbed492:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.5562203839322413) { p = 0; }
	else if(d > -3.5562203839322413) { p = [[self N2fa9e75f493:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2fa9e75f493:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.041958613220643) { p = [[self N3b95266b494:features] doubleValue]; }
	else if(d > 0.041958613220643) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b95266b494:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.123492863029287) { p = 1; }
	else if(d > -5.123492863029287) { p = [[self N3d0d595c495:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3d0d595c495:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.2067796427579718) { p = [[self N3765c654496:features] doubleValue]; }
	else if(d > -1.2067796427579718) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3765c654496:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.967080666186625) { p = 0; }
	else if(d > -4.967080666186625) { p = [[self N7abfd135497:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7abfd135497:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.243038832971047) { p = 0; }
	else if(d > -4.243038832971047) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N47402d88498:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.312517212261403) { p = [[self N466d6043499:features] doubleValue]; }
	else if(d > -7.312517212261403) { p = [[self N6a65f55507:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N466d6043499:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.2588433979861229) { p = [[self N36caf2d4500:features] doubleValue]; }
	else if(d > -1.2588433979861229) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N36caf2d4500:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -9.5331754543703) { p = 0; }
	else if(d > -9.5331754543703) { p = [[self N460c5866501:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N460c5866501:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 77.01744541078907) { p = 0; }
	else if(d > 77.01744541078907) { p = [[self N547fb477502:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N547fb477502:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.42793848413975594) { p = [[self Nc211bf8503:features] doubleValue]; }
	else if(d > 0.42793848413975594) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nc211bf8503:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.1337299375479719) { p = [[self N51b33d00504:features] doubleValue]; }
	else if(d > -0.1337299375479719) { p = [[self N4e69f4e7505:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N51b33d00504:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.5696181313183395) { p = 0; }
	else if(d > -5.5696181313183395) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4e69f4e7505:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 83.52865432254795) { p = [[self Ne4d91e9506:features] doubleValue]; }
	else if(d > 83.52865432254795) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ne4d91e9506:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.22740096364851) { p = 1; }
	else if(d > 8.22740096364851) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6a65f55507:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.026204929342251) { p = [[self N14bcc8dc508:features] doubleValue]; }
	else if(d > -5.026204929342251) { p = [[self N2f17b946520:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N14bcc8dc508:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.4017976981458853) { p = [[self N7626ee26509:features] doubleValue]; }
	else if(d > -1.4017976981458853) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7626ee26509:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.4389265164823198) { p = [[self N75dd3d63510:features] doubleValue]; }
	else if(d > 0.4389265164823198) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N75dd3d63510:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 74.07970931836714) { p = [[self Nfe96b09511:features] doubleValue]; }
	else if(d > 74.07970931836714) { p = [[self N403aac1b514:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nfe96b09511:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.1101216841211765) { p = 0; }
	else if(d > -2.1101216841211765) { p = [[self N25722408512:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N25722408512:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.5165066312578706) { p = 0; }
	else if(d > -2.5165066312578706) { p = [[self N689b9c6c513:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N689b9c6c513:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.679724071655167) { p = 0; }
	else if(d > -5.679724071655167) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N403aac1b514:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.1457998658130975) { p = 0; }
	else if(d > -3.1457998658130975) { p = [[self N4bf9418e515:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4bf9418e515:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -9.325760162904855) { p = 0; }
	else if(d > -9.325760162904855) { p = [[self N593ef899516:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N593ef899516:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.383428274497511) { p = [[self N35333295517:features] doubleValue]; }
	else if(d > 2.383428274497511) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N35333295517:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.381497490472154) { p = [[self N343def7c518:features] doubleValue]; }
	else if(d > -1.381497490472154) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N343def7c518:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.0562204885739745) { p = 1; }
	else if(d > 1.0562204885739745) { p = [[self N4e35d0af519:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4e35d0af519:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.8757372094537494) { p = 1; }
	else if(d > 2.8757372094537494) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f17b946520:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.6000006404781205) { p = [[self N3e84bad1521:features] doubleValue]; }
	else if(d > 0.6000006404781205) { p = [[self N5f6994db570:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3e84bad1521:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 74.15504574191688) { p = [[self N7c050f67522:features] doubleValue]; }
	else if(d > 74.15504574191688) { p = [[self N6e799a6b542:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7c050f67522:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.160194680969261) { p = 0; }
	else if(d > -4.160194680969261) { p = [[self N303672cd523:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N303672cd523:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 66.59861634839949) { p = [[self N46ab0975524:features] doubleValue]; }
	else if(d > 66.59861634839949) { p = [[self N6ea37e0d528:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N46ab0975524:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.8421312508848837) { p = 0; }
	else if(d > -2.8421312508848837) { p = [[self N6fa0492525:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6fa0492525:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 9.239821494310007) { p = [[self N84210d2526:features] doubleValue]; }
	else if(d > 9.239821494310007) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N84210d2526:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.239526797404472) { p = [[self N295e4f3a527:features] doubleValue]; }
	else if(d > 4.239526797404472) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N295e4f3a527:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.680598118428808) { p = 0; }
	else if(d > 3.680598118428808) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6ea37e0d528:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.9010220235777586) { p = 0; }
	else if(d > -2.9010220235777586) { p = [[self N2fa8c03a529:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2fa8c03a529:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.6612593411287009) { p = [[self N6fe43847530:features] doubleValue]; }
	else if(d > -0.6612593411287009) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6fe43847530:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.723195406196339) { p = [[self N702af6b4531:features] doubleValue]; }
	else if(d > -3.723195406196339) { p = [[self N706257b9536:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N702af6b4531:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.7838597522531026) { p = 1; }
	else if(d > -2.7838597522531026) { p = [[self N14aadcf4532:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N14aadcf4532:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.4461970464358207) { p = 0; }
	else if(d > -2.4461970464358207) { p = [[self N5d9021c5533:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5d9021c5533:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.736904456293111) { p = 0; }
	else if(d > -5.736904456293111) { p = [[self N21993c80534:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N21993c80534:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.6428434207111164) { p = [[self N535308bb535:features] doubleValue]; }
	else if(d > -1.6428434207111164) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N535308bb535:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.7972037234713616) { p = 0; }
	else if(d > 3.7972037234713616) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N706257b9536:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 6.387773623694896) { p = [[self N486d6c53537:features] doubleValue]; }
	else if(d > 6.387773623694896) { p = [[self N4076adf8539:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N486d6c53537:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.7997768902032076) { p = 0; }
	else if(d > 1.7997768902032076) { p = [[self N7e2e24b538:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7e2e24b538:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.003150896541139) { p = 0; }
	else if(d > -5.003150896541139) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4076adf8539:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 71.65935692172958) { p = [[self N2f9795d8540:features] doubleValue]; }
	else if(d > 71.65935692172958) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f9795d8540:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 7.27055288572636) { p = [[self N8eeb051541:features] doubleValue]; }
	else if(d > 7.27055288572636) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N8eeb051541:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.8284699106510363) { p = 1; }
	else if(d > -1.8284699106510363) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6e799a6b542:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.4552421015445502) { p = [[self N71891f76543:features] doubleValue]; }
	else if(d > 1.4552421015445502) { p = [[self N2cc3ce65568:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71891f76543:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.16376034207078935) { p = [[self N6170b635544:features] doubleValue]; }
	else if(d > 0.16376034207078935) { p = [[self N601bfd9563:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6170b635544:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.441242456345958) { p = [[self N2eca838d545:features] doubleValue]; }
	else if(d > -5.441242456345958) { p = [[self N473245e6548:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2eca838d545:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 83.01790776649727) { p = 0; }
	else if(d > 83.01790776649727) { p = [[self N7182b5fa546:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7182b5fa546:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.125336461557966) { p = [[self N3c796a4e547:features] doubleValue]; }
	else if(d > -3.125336461557966) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3c796a4e547:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.7159481150911207) { p = 0; }
	else if(d > -3.7159481150911207) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N473245e6548:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.775920282211356) { p = [[self N358b238e549:features] doubleValue]; }
	else if(d > -5.775920282211356) { p = [[self N31cbbb43552:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N358b238e549:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.291553527261474) { p = 0; }
	else if(d > -5.291553527261474) { p = [[self N41cb5b18550:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N41cb5b18550:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.434860713549122) { p = [[self Ndc9a667551:features] doubleValue]; }
	else if(d > -2.434860713549122) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ndc9a667551:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.0778883870897316) { p = 1; }
	else if(d > -3.0778883870897316) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N31cbbb43552:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.55754990485319) { p = [[self N3673453f553:features] doubleValue]; }
	else if(d > -5.55754990485319) { p = [[self N2aac8fe3557:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3673453f553:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.4271173380683813) { p = [[self N49c74706554:features] doubleValue]; }
	else if(d > -1.4271173380683813) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N49c74706554:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 79.6236761749925) { p = 0; }
	else if(d > 79.6236761749925) { p = [[self N3a0800c1555:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3a0800c1555:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.4091331741797813) { p = 1; }
	else if(d > -0.4091331741797813) { p = [[self N63699caa556:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N63699caa556:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.266639699006997) { p = 0; }
	else if(d > -2.266639699006997) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2aac8fe3557:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.114617146799234) { p = 1; }
	else if(d > 7.114617146799234) { p = [[self N271a95f8558:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N271a95f8558:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.442685026781922) { p = [[self N426be0d6559:features] doubleValue]; }
	else if(d > -2.442685026781922) { p = [[self N73ab95f3562:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N426be0d6559:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.3236700782610793) { p = [[self N387623ab560:features] doubleValue]; }
	else if(d > -2.3236700782610793) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N387623ab560:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.1547685525635097) { p = [[self N541fcc82561:features] doubleValue]; }
	else if(d > -0.1547685525635097) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N541fcc82561:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 81.48979781487651) { p = 1; }
	else if(d > 81.48979781487651) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N73ab95f3562:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 9.196675089280026) { p = 0; }
	else if(d > 9.196675089280026) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N601bfd9563:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.0832659879866045) { p = 0; }
	else if(d > -2.0832659879866045) { p = [[self N5cda42a3564:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5cda42a3564:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.216466108872852) { p = [[self N7d4d0af4565:features] doubleValue]; }
	else if(d > -4.216466108872852) { p = [[self N6275ef93567:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7d4d0af4565:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.0433632824128087) { p = 0; }
	else if(d > -1.0433632824128087) { p = [[self N4d0a5970566:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4d0a5970566:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.267274795642134) { p = 0; }
	else if(d > -3.267274795642134) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6275ef93567:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.1473832847823378) { p = 0; }
	else if(d > -3.1473832847823378) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2cc3ce65568:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.594849327277198) { p = [[self N6b235fd8569:features] doubleValue]; }
	else if(d > 3.594849327277198) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6b235fd8569:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.7757212289596076) { p = 0; }
	else if(d > -0.7757212289596076) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5f6994db570:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 58.845509297306165) { p = [[self Ncabe6cd571:features] doubleValue]; }
	else if(d > 58.845509297306165) { p = [[self N69bda33a572:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ncabe6cd571:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.537205415361079) { p = 0; }
	else if(d > -2.537205415361079) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N69bda33a572:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.3665220060332812) { p = [[self N21276b12573:features] doubleValue]; }
	else if(d > 2.3665220060332812) { p = [[self N2e94ccb9582:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N21276b12573:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.569460483816418) { p = 0; }
	else if(d > -2.569460483816418) { p = [[self N22e67bbf574:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N22e67bbf574:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 64.42278636702027) { p = 0; }
	else if(d > 64.42278636702027) { p = [[self N49c64a7f575:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N49c64a7f575:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.063364376335011) { p = [[self N7944fdaf576:features] doubleValue]; }
	else if(d > -3.063364376335011) { p = [[self N5baa0ea4578:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7944fdaf576:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.9212601082947224) { p = [[self N206b2a5c577:features] doubleValue]; }
	else if(d > 0.9212601082947224) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N206b2a5c577:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.4399110767816516) { p = 1; }
	else if(d > -1.4399110767816516) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5baa0ea4578:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.645752686144955) { p = 0; }
	else if(d > -4.645752686144955) { p = [[self N79a75fff579:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N79a75fff579:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.873656951480322) { p = [[self N5b8f9cbe580:features] doubleValue]; }
	else if(d > -1.873656951480322) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5b8f9cbe580:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.3722670449702745) { p = [[self N317bace8581:features] doubleValue]; }
	else if(d > 1.3722670449702745) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N317bace8581:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.1521507902361336) { p = 1; }
	else if(d > -2.1521507902361336) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e94ccb9582:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 8.743639242279986) { p = 0; }
	else if(d > 8.743639242279986) { p = [[self N2b0c9d93583:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2b0c9d93583:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 12.489276466598609) { p = 0; }
	else if(d > 12.489276466598609) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N493d33f9584:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.909367528046238) { p = [[self N511f45ff585:features] doubleValue]; }
	else if(d > -4.909367528046238) { p = [[self N5a52a0b6638:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N511f45ff585:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.501859111811035) { p = [[self N5c2c91f4586:features] doubleValue]; }
	else if(d > -6.501859111811035) { p = [[self N64dee80b599:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5c2c91f4586:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 87.56156134664772) { p = [[self N72225972587:features] doubleValue]; }
	else if(d > 87.56156134664772) { p = [[self N14aa9552593:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N72225972587:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.8411811160355671) { p = 0; }
	else if(d > -0.8411811160355671) { p = [[self N2d1e85e8588:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2d1e85e8588:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -12.338973875824992) { p = 1; }
	else if(d > -12.338973875824992) { p = [[self N2ee9597c589:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2ee9597c589:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.7142867620187485) { p = [[self N59f1f3f3590:features] doubleValue]; }
	else if(d > -2.7142867620187485) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N59f1f3f3590:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.6364357579612874) { p = 1; }
	else if(d > -0.6364357579612874) { p = [[self N1bc704a7591:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1bc704a7591:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.567734627638784) { p = [[self N27027e30592:features] doubleValue]; }
	else if(d > -2.567734627638784) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N27027e30592:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.281237006049043) { p = 0; }
	else if(d > -7.281237006049043) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N14aa9552593:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.223225248311617) { p = [[self N4b314517594:features] doubleValue]; }
	else if(d > 3.223225248311617) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4b314517594:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.3688077426334588) { p = [[self Nfaf0f92595:features] doubleValue]; }
	else if(d > -1.3688077426334588) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nfaf0f92595:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.15534572204541927) { p = [[self N2e274249596:features] doubleValue]; }
	else if(d > -0.15534572204541927) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e274249596:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.16834141925596272) { p = [[self N1370de4b597:features] doubleValue]; }
	else if(d > 0.16834141925596272) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1370de4b597:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 88.58990525615744) { p = [[self N571217e5598:features] doubleValue]; }
	else if(d > 88.58990525615744) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N571217e5598:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 88.01247973374694) { p = 1; }
	else if(d > 88.01247973374694) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N64dee80b599:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.7789189065713853) { p = [[self N66545de9600:features] doubleValue]; }
	else if(d > 0.7789189065713853) { p = [[self N41671bc1630:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N66545de9600:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.17244712911495144) { p = [[self N2ce1a07b601:features] doubleValue]; }
	else if(d > 0.17244712911495144) { p = [[self N3ff3b2d5628:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2ce1a07b601:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 65.96738206852358) { p = 0; }
	else if(d > 65.96738206852358) { p = [[self N10ef0242602:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N10ef0242602:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.4827917578747776) { p = [[self N3b7d43bd603:features] doubleValue]; }
	else if(d > -1.4827917578747776) { p = [[self N3e27562f619:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b7d43bd603:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.004088820210665) { p = [[self N1cea4bce604:features] doubleValue]; }
	else if(d > 8.004088820210665) { p = [[self N29980f96618:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1cea4bce604:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.0663684798662345) { p = [[self N5a16d036605:features] doubleValue]; }
	else if(d > -7.0663684798662345) { p = [[self Nfbfb76f606:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5a16d036605:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 86.33002323737956) { p = 0; }
	else if(d > 86.33002323737956) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nfbfb76f606:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 67.81271234144093) { p = [[self N73a3e07c607:features] doubleValue]; }
	else if(d > 67.81271234144093) { p = [[self N70c171ec610:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N73a3e07c607:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.325400560419232) { p = 0; }
	else if(d > 4.325400560419232) { p = [[self Nbe72834608:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nbe72834608:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.9417643320063562) { p = 1; }
	else if(d > -2.9417643320063562) { p = [[self N75007406609:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N75007406609:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.362217705269818) { p = 0; }
	else if(d > -4.362217705269818) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N70c171ec610:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.9593382532056374) { p = [[self N2c1e76c9611:features] doubleValue]; }
	else if(d > -0.9593382532056374) { p = [[self N44ea1e12615:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2c1e76c9611:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.29379618182996) { p = [[self N4089cc0612:features] doubleValue]; }
	else if(d > -5.29379618182996) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4089cc0612:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.544407120591555) { p = 0; }
	else if(d > -1.544407120591555) { p = [[self N516b0351613:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N516b0351613:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.367012776828654) { p = [[self N48a6e499614:features] doubleValue]; }
	else if(d > -2.367012776828654) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N48a6e499614:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 72.83332893558406) { p = 0; }
	else if(d > 72.83332893558406) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N44ea1e12615:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.2508185129230931) { p = 0; }
	else if(d > -0.2508185129230931) { p = [[self N665c5316616:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N665c5316616:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.686422884933115) { p = [[self N3752fdda617:features] doubleValue]; }
	else if(d > -3.686422884933115) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3752fdda617:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.6662807383903868) { p = 1; }
	else if(d > -0.6662807383903868) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N29980f96618:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 86.9041321650686) { p = 0; }
	else if(d > 86.9041321650686) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3e27562f619:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.4652879858770609) { p = [[self N88b478a620:features] doubleValue]; }
	else if(d > 1.4652879858770609) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N88b478a620:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 6.841470576331326) { p = [[self N7005b967621:features] doubleValue]; }
	else if(d > 6.841470576331326) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7005b967621:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 69.08611219493038) { p = 0; }
	else if(d > 69.08611219493038) { p = [[self N7cf52a6622:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7cf52a6622:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.41010263697211) { p = [[self N3c3b144b623:features] doubleValue]; }
	else if(d > -4.41010263697211) { p = [[self N44d549a6625:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3c3b144b623:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.8827452131703755) { p = [[self N4ab166d1624:features] doubleValue]; }
	else if(d > 3.8827452131703755) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4ab166d1624:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 74.99431168590844) { p = 0; }
	else if(d > 74.99431168590844) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N44d549a6625:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.132098390063841) { p = [[self Ned65498626:features] doubleValue]; }
	else if(d > 1.132098390063841) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ned65498626:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -4.185862824614918) { p = [[self N194bcec4627:features] doubleValue]; }
	else if(d > -4.185862824614918) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N194bcec4627:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.4362194177064547) { p = 1; }
	else if(d > -2.4362194177064547) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3ff3b2d5628:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.6258284482501573) { p = 0; }
	else if(d > 3.6258284482501573) { p = [[self N1861dec0629:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1861dec0629:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 77.33360269410414) { p = 0; }
	else if(d > 77.33360269410414) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N41671bc1630:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 63.924455707396014) { p = [[self N584f3d72631:features] doubleValue]; }
	else if(d > 63.924455707396014) { p = [[self N3a4b34a9632:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N584f3d72631:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 5.213073530910978) { p = 0; }
	else if(d > 5.213073530910978) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3a4b34a9632:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.2704362051222153) { p = [[self N1f6e6125633:features] doubleValue]; }
	else if(d > 2.2704362051222153) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1f6e6125633:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.861073726884118) { p = 0; }
	else if(d > -2.861073726884118) { p = [[self N7abd442634:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7abd442634:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 7.727151286143942) { p = [[self N21fc3cfd635:features] doubleValue]; }
	else if(d > 7.727151286143942) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N21fc3cfd635:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.8735386145932917) { p = 0; }
	else if(d > 2.8735386145932917) { p = [[self N37081779636:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N37081779636:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 5.5708710946673285) { p = 1; }
	else if(d > 5.5708710946673285) { p = [[self N743d2528637:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N743d2528637:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -4.23985813895223) { p = 1; }
	else if(d > -4.23985813895223) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5a52a0b6638:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.403832360104939) { p = [[self N66b53b0d639:features] doubleValue]; }
	else if(d > -5.403832360104939) { p = [[self N9ddaabc718:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N66b53b0d639:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.9095694493574934) { p = [[self N4380729640:features] doubleValue]; }
	else if(d > 0.9095694493574934) { p = [[self N5e1760b704:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4380729640:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 72.13668436045928) { p = [[self N7a5e16e8641:features] doubleValue]; }
	else if(d > 72.13668436045928) { p = [[self N52c3b31f655:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7a5e16e8641:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 68.18917950136463) { p = 0; }
	else if(d > 68.18917950136463) { p = [[self N3732181b642:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3732181b642:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.725881507488706) { p = [[self N39ccb0ec643:features] doubleValue]; }
	else if(d > -6.725881507488706) { p = [[self N3d3e97d3647:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N39ccb0ec643:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.3197907329725975) { p = [[self N2d737399644:features] doubleValue]; }
	else if(d > -1.3197907329725975) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2d737399644:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.732126720374685) { p = 0; }
	else if(d > 0.732126720374685) { p = [[self N76aa591e645:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N76aa591e645:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 69.70837622770983) { p = 0; }
	else if(d > 69.70837622770983) { p = [[self N29c0fd6f646:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N29c0fd6f646:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.511924281269621) { p = 0; }
	else if(d > -3.511924281269621) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3d3e97d3647:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.8547744760432266) { p = [[self N5861bd0e648:features] doubleValue]; }
	else if(d > -0.8547744760432266) { p = [[self N568b43ab653:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5861bd0e648:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.735541697579351) { p = 0; }
	else if(d > -5.735541697579351) { p = [[self N78c30f76649:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N78c30f76649:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 5.886257284544573) { p = [[self N4e2c49ea650:features] doubleValue]; }
	else if(d > 5.886257284544573) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4e2c49ea650:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.595962372872589) { p = [[self N3da8c9be651:features] doubleValue]; }
	else if(d > -5.595962372872589) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3da8c9be651:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.779542519382032) { p = [[self N1454f892652:features] doubleValue]; }
	else if(d > 2.779542519382032) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1454f892652:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 70.85859935474727) { p = 0; }
	else if(d > 70.85859935474727) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N568b43ab653:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.315772157117106) { p = 0; }
	else if(d > 1.315772157117106) { p = [[self N5107bbf0654:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5107bbf0654:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.6433450562648284) { p = 1; }
	else if(d > -2.6433450562648284) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N52c3b31f655:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.48706246133395076) { p = [[self N2e24e2ac656:features] doubleValue]; }
	else if(d > 0.48706246133395076) { p = [[self N1526faae694:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e24e2ac656:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.877022006394776) { p = [[self N779da1de657:features] doubleValue]; }
	else if(d > 0.877022006394776) { p = [[self N797782b7693:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N779da1de657:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.2488279345008735) { p = [[self Ndee332c658:features] doubleValue]; }
	else if(d > -5.2488279345008735) { p = [[self N1d733b79660:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ndee332c658:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.078706246041037) { p = 0; }
	else if(d > -7.078706246041037) { p = [[self N116194d9659:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N116194d9659:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.2483966441337553) { p = 1; }
	else if(d > -2.2483966441337553) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1d733b79660:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -7.6842214709411705) { p = [[self N78459409661:features] doubleValue]; }
	else if(d > -7.6842214709411705) { p = [[self N4216b5de678:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N78459409661:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.068551147794853) { p = [[self N1ffa188f662:features] doubleValue]; }
	else if(d > 2.068551147794853) { p = [[self Nfaba97f674:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1ffa188f662:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -11.674722543147073) { p = 0; }
	else if(d > -11.674722543147073) { p = [[self N5c6264af663:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5c6264af663:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.5604856159504967) { p = [[self N3fc04c8b664:features] doubleValue]; }
	else if(d > -2.5604856159504967) { p = [[self N49f44947666:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3fc04c8b664:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.457112081740458) { p = [[self N69e15a5f665:features] doubleValue]; }
	else if(d > -2.457112081740458) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N69e15a5f665:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 80.01316950295143) { p = 1; }
	else if(d > 80.01316950295143) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N49f44947666:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.28879211219218387) { p = [[self N44f6fa3f667:features] doubleValue]; }
	else if(d > -0.28879211219218387) { p = [[self N591b1b5a672:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N44f6fa3f667:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.929122985952889) { p = 0; }
	else if(d > -5.929122985952889) { p = [[self N32a76178668:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N32a76178668:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.031089363729813) { p = 0; }
	else if(d > -5.031089363729813) { p = [[self Naf02743669:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Naf02743669:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 80.51123249670016) { p = [[self N1ca1a551670:features] doubleValue]; }
	else if(d > 80.51123249670016) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1ca1a551670:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.306136236039564) { p = 1; }
	else if(d > -3.306136236039564) { p = [[self N386c7786671:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N386c7786671:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.057870142885942145) { p = 0; }
	else if(d > -0.057870142885942145) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N591b1b5a672:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.53981382624393) { p = [[self N2a0df6a673:features] doubleValue]; }
	else if(d > 1.53981382624393) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2a0df6a673:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.7822088435150218) { p = 0; }
	else if(d > 1.7822088435150218) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nfaba97f674:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.9307466418257168) { p = [[self N4f04d8e2675:features] doubleValue]; }
	else if(d > -0.9307466418257168) { p = [[self N74043c5b677:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4f04d8e2675:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.5794307060409718) { p = 1; }
	else if(d > -0.5794307060409718) { p = [[self N473b05f5676:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N473b05f5676:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 77.25625269869903) { p = 0; }
	else if(d > 77.25625269869903) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N74043c5b677:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.1541448391733455) { p = 0; }
	else if(d > -2.1541448391733455) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4216b5de678:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 79.44786225740413) { p = [[self N60fe23b7679:features] doubleValue]; }
	else if(d > 79.44786225740413) { p = [[self N4f60c43f686:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N60fe23b7679:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.1390065261590063) { p = [[self N4cdaf520680:features] doubleValue]; }
	else if(d > -2.1390065261590063) { p = [[self N363dc8cb683:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4cdaf520680:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.32264216933681505) { p = [[self N3b132f4b681:features] doubleValue]; }
	else if(d > -0.32264216933681505) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b132f4b681:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.664294715639631) { p = 0; }
	else if(d > 0.664294715639631) { p = [[self N68860339682:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N68860339682:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.696209794127357) { p = 1; }
	else if(d > 7.696209794127357) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N363dc8cb683:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 74.2206118870041) { p = [[self N1249a33f684:features] doubleValue]; }
	else if(d > 74.2206118870041) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1249a33f684:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.1175268138284753) { p = [[self N207c867a685:features] doubleValue]; }
	else if(d > -0.1175268138284753) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N207c867a685:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.1125542679981257) { p = 1; }
	else if(d > -1.1125542679981257) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4f60c43f686:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.268432860220074) { p = [[self N59f42ccf687:features] doubleValue]; }
	else if(d > -5.268432860220074) { p = [[self N2da9f82c688:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N59f42ccf687:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.71495203074448) { p = 1; }
	else if(d > -2.71495203074448) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2da9f82c688:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -6.5699043044588805) { p = [[self N71e4281f689:features] doubleValue]; }
	else if(d > -6.5699043044588805) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71e4281f689:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 6.645267124918002) { p = [[self N3a0645a3690:features] doubleValue]; }
	else if(d > 6.645267124918002) { p = [[self N7992625b692:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3a0645a3690:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.5836381542323423) { p = [[self N71c5ee17691:features] doubleValue]; }
	else if(d > -0.5836381542323423) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71c5ee17691:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.2619384643931513) { p = 1; }
	else if(d > -3.2619384643931513) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7992625b692:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.8920694925414114) { p = 1; }
	else if(d > -3.8920694925414114) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N797782b7693:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.69764136423652) { p = 0; }
	else if(d > 2.69764136423652) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1526faae694:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.2991874613896495) { p = [[self N3213c05b695:features] doubleValue]; }
	else if(d > 1.2991874613896495) { p = [[self N24a1acc1700:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3213c05b695:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.186479866653464) { p = 0; }
	else if(d > -2.186479866653464) { p = [[self N2eb9b00c696:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2eb9b00c696:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.006716655664771) { p = 0; }
	else if(d > -3.006716655664771) { p = [[self N20d4fbcb697:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N20d4fbcb697:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.6251567373277203) { p = [[self N7ededd43698:features] doubleValue]; }
	else if(d > 1.6251567373277203) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7ededd43698:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.972379698968901) { p = 0; }
	else if(d > -1.972379698968901) { p = [[self N59909ac7699:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N59909ac7699:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.2654943706063724) { p = 1; }
	else if(d > -0.2654943706063724) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N24a1acc1700:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.4515308852529105) { p = [[self N7254c5b0701:features] doubleValue]; }
	else if(d > -1.4515308852529105) { p = [[self N1b7ee074702:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7254c5b0701:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.2693148104487504) { p = 1; }
	else if(d > -2.2693148104487504) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1b7ee074702:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.110764040681398) { p = [[self N26c1edc6703:features] doubleValue]; }
	else if(d > -7.110764040681398) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N26c1edc6703:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.3282288482863533) { p = 0; }
	else if(d > 2.3282288482863533) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5e1760b704:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.960827903938384) { p = 0; }
	else if(d > -6.960827903938384) { p = [[self N150ccf31705:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N150ccf31705:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 78.66278236698622) { p = [[self N7bf6a4c2706:features] doubleValue]; }
	else if(d > 78.66278236698622) { p = [[self N1633862f711:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7bf6a4c2706:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.78258008266173) { p = [[self N7dbafc22707:features] doubleValue]; }
	else if(d > 4.78258008266173) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7dbafc22707:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 71.08840562872629) { p = 0; }
	else if(d > 71.08840562872629) { p = [[self N7eff5caa708:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7eff5caa708:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.798718792927807) { p = [[self N2f1cde09709:features] doubleValue]; }
	else if(d > -5.798718792927807) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f1cde09709:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.973639268233742) { p = [[self N10353909710:features] doubleValue]; }
	else if(d > -5.973639268233742) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N10353909710:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 71.88259627902504) { p = 1; }
	else if(d > 71.88259627902504) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1633862f711:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 90.7055631182995) { p = [[self N10ae830c712:features] doubleValue]; }
	else if(d > 90.7055631182995) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N10ae830c712:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.881920763842528) { p = [[self N311d9162713:features] doubleValue]; }
	else if(d > 3.881920763842528) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N311d9162713:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.577610717971412) { p = 0; }
	else if(d > -4.577610717971412) { p = [[self Nc33d21f714:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nc33d21f714:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.8559699235361027) { p = 1; }
	else if(d > -2.8559699235361027) { p = [[self N1e27f77b715:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1e27f77b715:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 6.240984209613213) { p = [[self N51e8bbb4716:features] doubleValue]; }
	else if(d > 6.240984209613213) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N51e8bbb4716:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.563050855635926) { p = [[self N67b506f717:features] doubleValue]; }
	else if(d > 4.563050855635926) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N67b506f717:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 83.68063092114753) { p = 1; }
	else if(d > 83.68063092114753) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N9ddaabc718:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 67.17698196396738) { p = [[self N37f421b3719:features] doubleValue]; }
	else if(d > 67.17698196396738) { p = [[self N3233d56a788:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N37f421b3719:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 56.835350532404156) { p = [[self N7cd08b77720:features] doubleValue]; }
	else if(d > 56.835350532404156) { p = [[self N55d13898722:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7cd08b77720:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 47.93112898388802) { p = [[self N5f7471a5721:features] doubleValue]; }
	else if(d > 47.93112898388802) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5f7471a5721:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.997375128463768) { p = 1; }
	else if(d > 8.997375128463768) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N55d13898722:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 8.753419763748127) { p = [[self N1adaaf2c723:features] doubleValue]; }
	else if(d > 8.753419763748127) { p = [[self N6d152d0e779:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1adaaf2c723:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 65.04446885093094) { p = [[self Nb227f7a724:features] doubleValue]; }
	else if(d > 65.04446885093094) { p = [[self N12f1206e756:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nb227f7a724:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.9258984341475966) { p = [[self N5df284c725:features] doubleValue]; }
	else if(d > 3.9258984341475966) { p = [[self N2deeb609755:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5df284c725:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.746482781165793) { p = [[self N7dce9896726:features] doubleValue]; }
	else if(d > -1.746482781165793) { p = [[self N75c73ec738:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7dce9896726:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.18818834273823093) { p = 0; }
	else if(d > 0.18818834273823093) { p = [[self N683e061727:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N683e061727:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.0194216829531362) { p = [[self N3c00039e728:features] doubleValue]; }
	else if(d > -1.0194216829531362) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3c00039e728:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.6566079501911422) { p = [[self N24ed98d8729:features] doubleValue]; }
	else if(d > -0.6566079501911422) { p = [[self N4dee96c8734:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N24ed98d8729:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.0409394319509087) { p = [[self N6acd9fd8730:features] doubleValue]; }
	else if(d > -1.0409394319509087) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6acd9fd8730:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -4.00464419811044) { p = 1; }
	else if(d > -4.00464419811044) { p = [[self N61b954af731:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N61b954af731:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.9043002378404847) { p = 1; }
	else if(d > -3.9043002378404847) { p = [[self N4e66df48732:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4e66df48732:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.562271608426987) { p = 0; }
	else if(d > -2.562271608426987) { p = [[self N43cd182e733:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N43cd182e733:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.8482131879998156) { p = 1; }
	else if(d > -2.8482131879998156) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4dee96c8734:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.166304806550009) { p = 0; }
	else if(d > -3.166304806550009) { p = [[self N6aed4c70735:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6aed4c70735:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.20351815359238587) { p = [[self N13583e8736:features] doubleValue]; }
	else if(d > 0.20351815359238587) { p = [[self N6066f4f6737:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N13583e8736:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.6495389085464045) { p = 0; }
	else if(d > -0.6495389085464045) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6066f4f6737:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.8899990933991826) { p = 0; }
	else if(d > -3.8899990933991826) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N75c73ec738:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.387508784111079) { p = [[self N46be8eba739:features] doubleValue]; }
	else if(d > -4.387508784111079) { p = [[self N7bd662ad742:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N46be8eba739:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.016458835322340555) { p = 0; }
	else if(d > -0.016458835322340555) { p = [[self N88c799f740:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N88c799f740:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.8650797783976424) { p = [[self N3e84ba1b741:features] doubleValue]; }
	else if(d > -0.8650797783976424) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3e84ba1b741:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.8269528861404827) { p = 0; }
	else if(d > -2.8269528861404827) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7bd662ad742:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.3063241444718674) { p = 0; }
	else if(d > -3.3063241444718674) { p = [[self N37e88b5f743:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N37e88b5f743:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.05432892366534) { p = 0; }
	else if(d > -5.05432892366534) { p = [[self N41626a6744:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N41626a6744:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.64824177959453) { p = [[self N4a435e62745:features] doubleValue]; }
	else if(d > -4.64824177959453) { p = [[self Nce99a05746:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4a435e62745:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.0344425420069392) { p = 1; }
	else if(d > -1.0344425420069392) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nce99a05746:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.800991618408247) { p = 0; }
	else if(d > -4.800991618408247) { p = [[self N3c7ec4e2747:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3c7ec4e2747:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.4929539037212272) { p = [[self N26aff075748:features] doubleValue]; }
	else if(d > -1.4929539037212272) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N26aff075748:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 5.595430898484269) { p = [[self N68d3a52a749:features] doubleValue]; }
	else if(d > 5.595430898484269) { p = [[self N618fe74c751:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N68d3a52a749:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.903395058059896) { p = [[self N1f009e2a750:features] doubleValue]; }
	else if(d > -0.903395058059896) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1f009e2a750:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.4259401024794651) { p = 1; }
	else if(d > -1.4259401024794651) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N618fe74c751:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.7219477920569213) { p = [[self N2e9a609e752:features] doubleValue]; }
	else if(d > -0.7219477920569213) { p = [[self N193d3cf9753:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e9a609e752:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.30236151484801) { p = 0; }
	else if(d > -3.30236151484801) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N193d3cf9753:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 59.39023098973128) { p = [[self N36e0c61754:features] doubleValue]; }
	else if(d > 59.39023098973128) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N36e0c61754:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 59.0614113124955) { p = 0; }
	else if(d > 59.0614113124955) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2deeb609755:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.160590111655846) { p = 0; }
	else if(d > -2.160590111655846) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N12f1206e756:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.3564945289015449) { p = [[self N14881f79757:features] doubleValue]; }
	else if(d > 1.3564945289015449) { p = [[self N67a62278776:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N14881f79757:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.306357417691588) { p = 0; }
	else if(d > -3.306357417691588) { p = [[self N74ca4b76758:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N74ca4b76758:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.396624572011516) { p = [[self Nd206be1759:features] doubleValue]; }
	else if(d > -6.396624572011516) { p = [[self N73c68e8c761:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nd206be1759:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.309203563539623) { p = 0; }
	else if(d > -7.309203563539623) { p = [[self N4b8a8782760:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4b8a8782760:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 3.7673086019759694) { p = 0; }
	else if(d > 3.7673086019759694) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N73c68e8c761:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.294941813930541) { p = [[self N70b8c4b5762:features] doubleValue]; }
	else if(d > -4.294941813930541) { p = [[self N68c843c3768:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N70b8c4b5762:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 5.592673838339405) { p = [[self N727a80e3763:features] doubleValue]; }
	else if(d > 5.592673838339405) { p = [[self N492437c0767:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N727a80e3763:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.8481451788097026) { p = [[self N48a3f1cc764:features] doubleValue]; }
	else if(d > 0.8481451788097026) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N48a3f1cc764:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.604134038343089) { p = [[self N357ad56765:features] doubleValue]; }
	else if(d > -3.604134038343089) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N357ad56765:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 66.00171327503439) { p = [[self N7134ead0766:features] doubleValue]; }
	else if(d > 66.00171327503439) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7134ead0766:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.2178084011037339) { p = 1; }
	else if(d > -0.2178084011037339) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N492437c0767:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.721818842719737) { p = 1; }
	else if(d > -2.721818842719737) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N68c843c3768:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 4.894628848597732) { p = [[self N33d8ecf3769:features] doubleValue]; }
	else if(d > 4.894628848597732) { p = [[self N66ac601c770:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N33d8ecf3769:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.161514454666711) { p = 0; }
	else if(d > 2.161514454666711) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N66ac601c770:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.85437290564524) { p = [[self N3eda02ed771:features] doubleValue]; }
	else if(d > -0.85437290564524) { p = [[self N67ac69a6774:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3eda02ed771:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.4366952904056378) { p = [[self N5af635d7772:features] doubleValue]; }
	else if(d > -0.4366952904056378) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5af635d7772:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.7342397453539995) { p = [[self N5a48e4e8773:features] doubleValue]; }
	else if(d > -0.7342397453539995) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5a48e4e8773:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.0763096529688283) { p = 1; }
	else if(d > -1.0763096529688283) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N67ac69a6774:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 66.53848970383997) { p = [[self N684c4676775:features] doubleValue]; }
	else if(d > 66.53848970383997) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N684c4676775:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.040907369831581) { p = 1; }
	else if(d > 8.040907369831581) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N67a62278776:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.467084515195409) { p = 0; }
	else if(d > -1.467084515195409) { p = [[self N4c212971777:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4c212971777:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.857596050744936) { p = 0; }
	else if(d > -2.857596050744936) { p = [[self N1527e0c3778:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1527e0c3778:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.640816228729288) { p = 0; }
	else if(d > 4.640816228729288) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6d152d0e779:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.058138678421518) { p = [[self N9412a15780:features] doubleValue]; }
	else if(d > -3.058138678421518) { p = [[self N78a7023c782:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N9412a15780:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.3950093862039212) { p = [[self N1531cd72781:features] doubleValue]; }
	else if(d > 0.3950093862039212) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1531cd72781:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.6597355622934487) { p = 0; }
	else if(d > 2.6597355622934487) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N78a7023c782:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.932065302444029) { p = [[self N1c83ef06783:features] doubleValue]; }
	else if(d > -4.932065302444029) { p = [[self N19c1818a784:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1c83ef06783:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 4.26963640545617) { p = 0; }
	else if(d > 4.26963640545617) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N19c1818a784:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.2040389561993736) { p = [[self N6f1f983b785:features] doubleValue]; }
	else if(d > -3.2040389561993736) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6f1f983b785:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 9.215894260868083) { p = 0; }
	else if(d > 9.215894260868083) { p = [[self N343827c786:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N343827c786:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 62.45096620575305) { p = 1; }
	else if(d > 62.45096620575305) { p = [[self N452b9c90787:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N452b9c90787:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.681151545419336) { p = 0; }
	else if(d > -4.681151545419336) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3233d56a788:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.691843289987881) { p = [[self N69003be5789:features] doubleValue]; }
	else if(d > 1.691843289987881) { p = [[self N4cc36185925:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N69003be5789:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -7.200110911553913) { p = [[self Ne5c6d3e790:features] doubleValue]; }
	else if(d > -7.200110911553913) { p = [[self N15c15d64798:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ne5c6d3e790:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.129917872433874) { p = [[self N560808cf791:features] doubleValue]; }
	else if(d > -3.129917872433874) { p = [[self N7fb505bb794:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N560808cf791:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.743472010230766) { p = [[self N297a7a29792:features] doubleValue]; }
	else if(d > -2.743472010230766) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N297a7a29792:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.477109496664963) { p = 0; }
	else if(d > -6.477109496664963) { p = [[self N27ea2f05793:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N27ea2f05793:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 77.73757113001659) { p = 0; }
	else if(d > 77.73757113001659) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7fb505bb794:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 80.41847641029341) { p = 0; }
	else if(d > 80.41847641029341) { p = [[self N458b797d795:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N458b797d795:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.653527079549889) { p = [[self N47d52136796:features] doubleValue]; }
	else if(d > 0.653527079549889) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N47d52136796:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -8.757375062558621) { p = [[self N79778511797:features] doubleValue]; }
	else if(d > -8.757375062558621) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N79778511797:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.5250867549744793) { p = 1; }
	else if(d > -1.5250867549744793) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N15c15d64798:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -6.460296169885787) { p = [[self N49da5b64799:features] doubleValue]; }
	else if(d > -6.460296169885787) { p = [[self N1a17e2e9820:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N49da5b64799:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.07963548549607678) { p = [[self N1ea6281d800:features] doubleValue]; }
	else if(d > -0.07963548549607678) { p = [[self N6764882d815:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1ea6281d800:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.4603433993637196) { p = [[self N2e9397a3801:features] doubleValue]; }
	else if(d > -0.4603433993637196) { p = [[self N168989b9812:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e9397a3801:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -6.4675119612872916) { p = [[self N5bc86638802:features] doubleValue]; }
	else if(d > -6.4675119612872916) { p = [[self N41af159b803:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5bc86638802:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.19392065211414) { p = 1; }
	else if(d > -1.19392065211414) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N41af159b803:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.3953350471628516) { p = [[self N4db394cd804:features] doubleValue]; }
	else if(d > -2.3953350471628516) { p = [[self N6d32b04b809:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4db394cd804:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.5026529960834663) { p = [[self N48ee4695805:features] doubleValue]; }
	else if(d > -1.5026529960834663) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N48ee4695805:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.2994245916635427) { p = 1; }
	else if(d > -1.2994245916635427) { p = [[self N135c059b806:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N135c059b806:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.9792545233896535) { p = 0; }
	else if(d > -3.9792545233896535) { p = [[self N7e740d0a807:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7e740d0a807:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.7175748099001593) { p = [[self N75044c61808:features] doubleValue]; }
	else if(d > 0.7175748099001593) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N75044c61808:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 73.61661411125516) { p = 0; }
	else if(d > 73.61661411125516) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6d32b04b809:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.3932672861823437) { p = [[self N1ad443ef810:features] doubleValue]; }
	else if(d > -0.3932672861823437) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1ad443ef810:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.3563748788998153) { p = [[self N65b80dab811:features] doubleValue]; }
	else if(d > -1.3563748788998153) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N65b80dab811:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.46431309403692733) { p = 0; }
	else if(d > 0.46431309403692733) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N168989b9812:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.067923782264195) { p = 0; }
	else if(d > -2.067923782264195) { p = [[self N1fb0dc3e813:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1fb0dc3e813:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.395218499617447) { p = [[self N144b7ab3814:features] doubleValue]; }
	else if(d > -2.395218499617447) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N144b7ab3814:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.11975247500241834) { p = 1; }
	else if(d > -0.11975247500241834) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6764882d815:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.798651631457264) { p = 0; }
	else if(d > -2.798651631457264) { p = [[self N79287762816:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N79287762816:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.3043817916094977) { p = [[self N4fb60112817:features] doubleValue]; }
	else if(d > 2.3043817916094977) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4fb60112817:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 69.69287708013681) { p = 1; }
	else if(d > 69.69287708013681) { p = [[self N36006da0818:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N36006da0818:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 6.096528031938515) { p = [[self N561d3f12819:features] doubleValue]; }
	else if(d > 6.096528031938515) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N561d3f12819:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.1450398388592276) { p = 1; }
	else if(d > -1.1450398388592276) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1a17e2e9820:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.266515235292806) { p = [[self N16323c61821:features] doubleValue]; }
	else if(d > 2.266515235292806) { p = [[self Ne0e98b5919:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N16323c61821:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 3.158504492147756) { p = [[self N3c1a0fa9822:features] doubleValue]; }
	else if(d > 3.158504492147756) { p = [[self N9675e68912:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3c1a0fa9822:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.157221895781079) { p = [[self N52fa3f12823:features] doubleValue]; }
	else if(d > 1.157221895781079) { p = [[self N3a33c751898:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N52fa3f12823:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -5.608672878967074) { p = [[self N2b42e14d824:features] doubleValue]; }
	else if(d > -5.608672878967074) { p = [[self N4ff0d26b831:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2b42e14d824:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 6.993675246077365) { p = [[self N33d59c6b825:features] doubleValue]; }
	else if(d > 6.993675246077365) { p = [[self Ncd11168828:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N33d59c6b825:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.3090561211607108) { p = 0; }
	else if(d > -1.3090561211607108) { p = [[self Nd104f63826:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nd104f63826:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 80.61651618912079) { p = [[self N29cbf348827:features] doubleValue]; }
	else if(d > 80.61651618912079) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N29cbf348827:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.5329611097214126) { p = 1; }
	else if(d > -0.5329611097214126) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ncd11168828:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 89.69879220593388) { p = [[self N71cdc96a829:features] doubleValue]; }
	else if(d > 89.69879220593388) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71cdc96a829:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.271223737273652) { p = 0; }
	else if(d > 1.271223737273652) { p = [[self N7d628884830:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7d628884830:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.877974614822496) { p = 1; }
	else if(d > 7.877974614822496) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4ff0d26b831:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.475915346016857) { p = [[self N4b8697cd832:features] doubleValue]; }
	else if(d > 7.475915346016857) { p = [[self N2473cc0e879:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4b8697cd832:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.5138825979562975) { p = [[self N71583a77833:features] doubleValue]; }
	else if(d > 1.5138825979562975) { p = [[self Na82ce8e845:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71583a77833:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 74.21875742212038) { p = [[self N576694c3834:features] doubleValue]; }
	else if(d > 74.21875742212038) { p = [[self N2a5261a0839:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N576694c3834:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.259572454820437) { p = 0; }
	else if(d > -4.259572454820437) { p = [[self Nfb0bb09835:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Nfb0bb09835:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 69.84061166669842) { p = 0; }
	else if(d > 69.84061166669842) { p = [[self N1bc753eb836:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1bc753eb836:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.7659310863734063) { p = [[self N3b56778c837:features] doubleValue]; }
	else if(d > -1.7659310863734063) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b56778c837:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 72.60380804838286) { p = 0; }
	else if(d > 72.60380804838286) { p = [[self N29c2a6c3838:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N29c2a6c3838:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.2806905656403629) { p = 0; }
	else if(d > 1.2806905656403629) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2a5261a0839:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.939613437991378) { p = [[self N6876515840:features] doubleValue]; }
	else if(d > 1.939613437991378) { p = [[self N27a0b500843:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6876515840:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -4.082659978511374) { p = [[self N22fd490c841:features] doubleValue]; }
	else if(d > -4.082659978511374) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N22fd490c841:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.7223811579177054) { p = 1; }
	else if(d > -0.7223811579177054) { p = [[self N22c6c4c6842:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N22c6c4c6842:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.5463743001042554) { p = 0; }
	else if(d > -2.5463743001042554) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N27a0b500843:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.3646924185630955) { p = [[self N27cb2753844:features] doubleValue]; }
	else if(d > 2.3646924185630955) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N27cb2753844:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.8700561244893148) { p = 1; }
	else if(d > -1.8700561244893148) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Na82ce8e845:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.9580193377633437) { p = [[self N11c6d206846:features] doubleValue]; }
	else if(d > 0.9580193377633437) { p = [[self N58421ef8871:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N11c6d206846:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 79.59630452714963) { p = [[self N14069108847:features] doubleValue]; }
	else if(d > 79.59630452714963) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N14069108847:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.2606436850515337) { p = [[self N3b1bae7d848:features] doubleValue]; }
	else if(d > -3.2606436850515337) { p = [[self N54158353857:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b1bae7d848:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 70.84419965717794) { p = [[self N165caedc849:features] doubleValue]; }
	else if(d > 70.84419965717794) { p = [[self N734a083853:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N165caedc849:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 6.138102156321704) { p = [[self N1edbf8fc850:features] doubleValue]; }
	else if(d > 6.138102156321704) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1edbf8fc850:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.5736474863836096) { p = 0; }
	else if(d > -3.5736474863836096) { p = [[self N7bb77837851:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7bb77837851:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.413161248361752) { p = [[self N4a35a255852:features] doubleValue]; }
	else if(d > -0.413161248361752) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4a35a255852:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.7033970991949063) { p = 1; }
	else if(d > -3.7033970991949063) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N734a083853:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.88533889420727) { p = [[self N1015fc27854:features] doubleValue]; }
	else if(d > -3.88533889420727) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1015fc27854:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 4.769500903448862) { p = [[self N135d6cb1855:features] doubleValue]; }
	else if(d > 4.769500903448862) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N135d6cb1855:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 76.0335602141411) { p = [[self N5a8ae265856:features] doubleValue]; }
	else if(d > 76.0335602141411) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5a8ae265856:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 72.2686311238439) { p = 1; }
	else if(d > 72.2686311238439) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N54158353857:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.9474730199413113) { p = 1; }
	else if(d > -3.9474730199413113) { p = [[self N5060e945858:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5060e945858:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.043323581950188865) { p = [[self Na72da3d859:features] doubleValue]; }
	else if(d > -0.043323581950188865) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Na72da3d859:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 6.774831763504241) { p = [[self N7a55e026860:features] doubleValue]; }
	else if(d > 6.774831763504241) { p = [[self N37a4cfd8866:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7a55e026860:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 70.87144211146204) { p = [[self N1bef1d89861:features] doubleValue]; }
	else if(d > 70.87144211146204) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1bef1d89861:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.39869107080801) { p = 1; }
	else if(d > -1.39869107080801) { p = [[self N6f7c1bb2862:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6f7c1bb2862:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 68.75688089220458) { p = 0; }
	else if(d > 68.75688089220458) { p = [[self N3cfe7c4c863:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3cfe7c4c863:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.7854043468155885) { p = [[self N679280dc864:features] doubleValue]; }
	else if(d > -1.7854043468155885) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N679280dc864:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.7412385143848237) { p = 0; }
	else if(d > -2.7412385143848237) { p = [[self N434a20a3865:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N434a20a3865:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.9353729076532257) { p = 1; }
	else if(d > -0.9353729076532257) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N37a4cfd8866:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.193216241023846) { p = [[self N25498a72867:features] doubleValue]; }
	else if(d > -3.193216241023846) { p = [[self N58059bf5870:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N25498a72867:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.437964683819633) { p = 0; }
	else if(d > -2.437964683819633) { p = [[self N7f20557d868:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7f20557d868:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 76.54407436238512) { p = [[self N23ccc2bf869:features] doubleValue]; }
	else if(d > 76.54407436238512) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N23ccc2bf869:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.564475279739284) { p = 0; }
	else if(d > -3.564475279739284) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N58059bf5870:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.5852669548589429) { p = 0; }
	else if(d > -1.5852669548589429) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N58421ef8871:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.256518964987013) { p = [[self N5cff590c872:features] doubleValue]; }
	else if(d > -4.256518964987013) { p = [[self N22d31d29874:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5cff590c872:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.7677713379796596) { p = 0; }
	else if(d > -2.7677713379796596) { p = [[self N2f5287873:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f5287873:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.8800385254092284) { p = 1; }
	else if(d > -1.8800385254092284) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N22d31d29874:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.9473541263810674) { p = [[self N521f809b875:features] doubleValue]; }
	else if(d > 0.9473541263810674) { p = [[self N13f69fc7878:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N521f809b875:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 69.10330732100913) { p = [[self N12346a3c876:features] doubleValue]; }
	else if(d > 69.10330732100913) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N12346a3c876:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.452902320449914) { p = 1; }
	else if(d > -1.452902320449914) { p = [[self N2f2a927a877:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f2a927a877:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.5084393156584386) { p = 0; }
	else if(d > -1.5084393156584386) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N13f69fc7878:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 5.576382308896792) { p = 1; }
	else if(d > 5.576382308896792) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2473cc0e879:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 84.69142813340743) { p = [[self N2e59bdd4880:features] doubleValue]; }
	else if(d > 84.69142813340743) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e59bdd4880:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.157763551135963) { p = [[self N5bdc112881:features] doubleValue]; }
	else if(d > -5.157763551135963) { p = [[self N4ee0f294886:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5bdc112881:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.694048555760161) { p = 0; }
	else if(d > -4.694048555760161) { p = [[self N6cce87af882:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6cce87af882:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 80.79115360326952) { p = [[self N6b2e29f7883:features] doubleValue]; }
	else if(d > 80.79115360326952) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6b2e29f7883:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.8242354608052808) { p = [[self N23c54e1a884:features] doubleValue]; }
	else if(d > 0.8242354608052808) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N23c54e1a884:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 76.63397329996322) { p = 1; }
	else if(d > 76.63397329996322) { p = [[self N6e8a9f4e885:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6e8a9f4e885:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.060228458841394106) { p = 0; }
	else if(d > 0.060228458841394106) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4ee0f294886:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.47510619868610815) { p = [[self N1255fb01887:features] doubleValue]; }
	else if(d > 0.47510619868610815) { p = [[self N2179a7e4895:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1255fb01887:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -3.1141000660247458) { p = [[self N4ad2080e888:features] doubleValue]; }
	else if(d > -3.1141000660247458) { p = [[self Ncf4bd0f893:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4ad2080e888:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.834133080042839) { p = 1; }
	else if(d > 7.834133080042839) { p = [[self N230ef582889:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N230ef582889:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 78.55207532414562) { p = [[self N2b183bc9890:features] doubleValue]; }
	else if(d > 78.55207532414562) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2b183bc9890:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 70.53821020874685) { p = [[self N43fd1f39891:features] doubleValue]; }
	else if(d > 70.53821020874685) { p = [[self N1f0cfa0e892:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N43fd1f39891:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 9.045869308019654) { p = 1; }
	else if(d > 9.045869308019654) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1f0cfa0e892:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.0084605431835585) { p = 0; }
	else if(d > -1.0084605431835585) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ncf4bd0f893:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.686706443264664) { p = [[self N17a82a6e894:features] doubleValue]; }
	else if(d > -5.686706443264664) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N17a82a6e894:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.581329133966385) { p = 1; }
	else if(d > 8.581329133966385) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2179a7e4895:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.941308277807614) { p = [[self N39fd7ae7896:features] doubleValue]; }
	else if(d > -1.941308277807614) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N39fd7ae7896:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 7.782741217735145) { p = [[self N308ff16f897:features] doubleValue]; }
	else if(d > 7.782741217735145) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N308ff16f897:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.3966321367410408) { p = 0; }
	else if(d > 1.3966321367410408) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3a33c751898:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.7234759550491954) { p = [[self N1d62b4b1899:features] doubleValue]; }
	else if(d > -3.7234759550491954) { p = [[self N21910ea9905:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1d62b4b1899:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.3543733599507257) { p = [[self N3b44df89900:features] doubleValue]; }
	else if(d > -1.3543733599507257) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3b44df89900:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.0101834543642787) { p = [[self N26afb9c5901:features] doubleValue]; }
	else if(d > -2.0101834543642787) { p = [[self N5b493b48903:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N26afb9c5901:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 72.29849716290538) { p = 0; }
	else if(d > 72.29849716290538) { p = [[self N5acd485a902:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5acd485a902:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 75.29222122087458) { p = 1; }
	else if(d > 75.29222122087458) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5b493b48903:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.9622797868608584) { p = 0; }
	else if(d > -3.9622797868608584) { p = [[self N24d322ca904:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N24d322ca904:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.07869232992932652) { p = 1; }
	else if(d > -0.07869232992932652) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N21910ea9905:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 3.0036157829399737) { p = [[self N3a598a76906:features] doubleValue]; }
	else if(d > 3.0036157829399737) { p = [[self N15f5a43910:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3a598a76906:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.30557084305701476) { p = [[self N4c9166e7907:features] doubleValue]; }
	else if(d > 0.30557084305701476) { p = [[self N5dfaeef6908:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4c9166e7907:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -2.56213009097635) { p = 1; }
	else if(d > -2.56213009097635) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5dfaeef6908:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 68.05412538479382) { p = [[self N55e88ae909:features] doubleValue]; }
	else if(d > 68.05412538479382) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N55e88ae909:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.4415556739563627) { p = 1; }
	else if(d > -0.4415556739563627) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N15f5a43910:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 79.6012742433747) { p = 0; }
	else if(d > 79.6012742433747) { p = [[self N1b1ee569911:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1b1ee569911:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 85.59489794129037) { p = 1; }
	else if(d > 85.59489794129037) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N9675e68912:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 7.176174356590977) { p = [[self N616702aa913:features] doubleValue]; }
	else if(d > 7.176174356590977) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N616702aa913:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -5.291553527261474) { p = 0; }
	else if(d > -5.291553527261474) { p = [[self N31e018db914:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N31e018db914:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.1101272378776679) { p = [[self N6f7feb71915:features] doubleValue]; }
	else if(d > -1.1101272378776679) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6f7feb71915:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -8.379374057622377) { p = 0; }
	else if(d > -8.379374057622377) { p = [[self N373a80e7916:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N373a80e7916:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.2737724206017518) { p = [[self N61e4da04917:features] doubleValue]; }
	else if(d > 0.2737724206017518) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N61e4da04917:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 70.6972957703338) { p = 0; }
	else if(d > 70.6972957703338) { p = [[self N77a56ed1918:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N77a56ed1918:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.680146989286481) { p = 0; }
	else if(d > -3.680146989286481) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)Ne0e98b5919:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 72.25702740166548) { p = 0; }
	else if(d > 72.25702740166548) { p = [[self N604b9a48920:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N604b9a48920:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.441308267808575) { p = [[self N37e1e5c921:features] doubleValue]; }
	else if(d > -2.441308267808575) { p = [[self N4cfb2bce922:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N37e1e5c921:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.421947401499575) { p = 1; }
	else if(d > 2.421947401499575) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4cfb2bce922:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.8119684516017507) { p = 1; }
	else if(d > -1.8119684516017507) { p = [[self N7df908dd923:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7df908dd923:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.9151674193883044) { p = [[self N68b525c7924:features] doubleValue]; }
	else if(d > 1.9151674193883044) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N68b525c7924:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.12709322884910912) { p = 0; }
	else if(d > -0.12709322884910912) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4cc36185925:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 81.67717624312611) { p = [[self N2f378a22926:features] doubleValue]; }
	else if(d > 81.67717624312611) { p = [[self N1bde842961:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2f378a22926:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.9810018884620566) { p = [[self N674dd665927:features] doubleValue]; }
	else if(d > -1.9810018884620566) { p = [[self N3697db9a944:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N674dd665927:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.9551029044960984) { p = [[self N2736b5df928:features] doubleValue]; }
	else if(d > 0.9551029044960984) { p = [[self N534df5ff941:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2736b5df928:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 2.4187339607056804) { p = [[self N78de5795929:features] doubleValue]; }
	else if(d > 2.4187339607056804) { p = [[self N76cf4c92938:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N78de5795929:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:4] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.633590389225573) { p = 0; }
	else if(d > -4.633590389225573) { p = [[self N4d483531930:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N4d483531930:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.519153071467935) { p = [[self N3f9c4b9a931:features] doubleValue]; }
	else if(d > -3.519153071467935) { p = [[self N2e278c16932:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3f9c4b9a931:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.5389157829365567) { p = 1; }
	else if(d > 2.5389157829365567) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2e278c16932:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.15455617448110429) { p = [[self N265e1006933:features] doubleValue]; }
	else if(d > -0.15455617448110429) { p = [[self N383e6a94935:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N265e1006933:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.1640549177090487) { p = [[self N696e0d97934:features] doubleValue]; }
	else if(d > -1.1640549177090487) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N696e0d97934:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 76.2021911729311) { p = 1; }
	else if(d > 76.2021911729311) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N383e6a94935:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.0069391694110625) { p = 1; }
	else if(d > 2.0069391694110625) { p = [[self N9c73765936:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N9c73765936:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 70.15585099000008) { p = 0; }
	else if(d > 70.15585099000008) { p = [[self N7605cce6937:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7605cce6937:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.980395235132737) { p = 0; }
	else if(d > -3.980395235132737) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N76cf4c92938:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 79.70281633498968) { p = 0; }
	else if(d > 79.70281633498968) { p = [[self N23ac422e939:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N23ac422e939:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.888250050055328) { p = 0; }
	else if(d > -2.888250050055328) { p = [[self N22cec4e940:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N22cec4e940:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.5250867549744793) { p = 1; }
	else if(d > -1.5250867549744793) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N534df5ff941:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 0.043349301708970216) { p = [[self N23516313942:features] doubleValue]; }
	else if(d > 0.043349301708970216) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N23516313942:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.7959807199641142) { p = [[self N343f8682943:features] doubleValue]; }
	else if(d > 2.7959807199641142) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N343f8682943:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.939917671963404) { p = 0; }
	else if(d > -3.939917671963404) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3697db9a944:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:5] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.255291596071111) { p = [[self N2bd27776945:features] doubleValue]; }
	else if(d > -2.255291596071111) { p = [[self N7f537f4c953:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2bd27776945:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.8640747646733793) { p = [[self N6a0fa74946:features] doubleValue]; }
	else if(d > 2.8640747646733793) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N6a0fa74946:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 6.267952432436966) { p = [[self N329ad912947:features] doubleValue]; }
	else if(d > 6.267952432436966) { p = [[self N34843316951:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N329ad912947:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -1.2935459428286762) { p = 1; }
	else if(d > -1.2935459428286762) { p = [[self N542146b2948:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N542146b2948:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 1.0806827722813759) { p = [[self N54a87b44949:features] doubleValue]; }
	else if(d > 1.0806827722813759) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N54a87b44949:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -2.098487269208623) { p = [[self N134d8c8950:features] doubleValue]; }
	else if(d > -2.098487269208623) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N134d8c8950:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.853382410139617) { p = 0; }
	else if(d > 1.853382410139617) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N34843316951:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:9] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -1.9372518463615205) { p = 0; }
	else if(d > -1.9372518463615205) { p = [[self N53360449952:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N53360449952:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -0.3716775508913951) { p = 0; }
	else if(d > -0.3716775508913951) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7f537f4c953:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.017170490308595) { p = [[self N42ca97e2954:features] doubleValue]; }
	else if(d > -4.017170490308595) { p = [[self N66d74c35956:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N42ca97e2954:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 73.9293239482395) { p = [[self N2b998b0955:features] doubleValue]; }
	else if(d > 73.9293239482395) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2b998b0955:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.8674890149254044) { p = 1; }
	else if(d > 2.8674890149254044) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N66d74c35956:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.7227322053400771) { p = [[self N40cc6052957:features] doubleValue]; }
	else if(d > 0.7227322053400771) { p = [[self N9890172960:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N40cc6052957:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:11] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.5533569445449507) { p = 1; }
	else if(d > -0.5533569445449507) { p = [[self N29c7c8ba958:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N29c7c8ba958:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 4.521423350587245) { p = [[self N7b4b40c3959:features] doubleValue]; }
	else if(d > 4.521423350587245) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N7b4b40c3959:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 1.7220084272703335) { p = 0; }
	else if(d > 1.7220084272703335) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N9890172960:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 71.48934404488202) { p = 1; }
	else if(d > 71.48934404488202) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N1bde842961:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 5.218461838164168) { p = [[self N5adb45f2962:features] doubleValue]; }
	else if(d > 5.218461838164168) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5adb45f2962:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:10] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -4.971881703774673) { p = [[self N71cd4177963:features] doubleValue]; }
	else if(d > -4.971881703774673) { p = [[self N5a8525ff964:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N71cd4177963:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:0] doubleValue];
	if(!d) { p = 0; }
	else if(d <= 88.92674960345478) { p = 0; }
	else if(d > 88.92674960345478) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5a8525ff964:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:3] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 0.7168561590468293) { p = [[self N5b81b6c6965:features] doubleValue]; }
	else if(d > 0.7168561590468293) { p = [[self N646f8def968:features] doubleValue]; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N5b81b6c6965:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:6] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -0.45404417490121984) { p = [[self N2106b019966:features] doubleValue]; }
	else if(d > -0.45404417490121984) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N2106b019966:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:8] doubleValue];
	if(!d) { p = 0; }
	else if(d <= -3.8121816876605332) { p = [[self N3e134a3f967:features] doubleValue]; }
	else if(d > -3.8121816876605332) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N3e134a3f967:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:2] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 2.4187339607056804) { p = 1; }
	else if(d > 2.4187339607056804) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N646f8def968:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:7] doubleValue];
	if(!d) { p = 1; }
	else if(d <= -4.7701594668824026) { p = [[self N57cf796c969:features] doubleValue]; }
	else if(d > -4.7701594668824026) { p = 1; }
	return [NSNumber numberWithDouble:p];
}

-(NSNumber *)N57cf796c969:(NSArray *)features
{
	double p = 0.0;
	double d = [[features objectAtIndex:1] doubleValue];
	if(!d) { p = 1; }
	else if(d <= 8.21113353599138) { p = 1; }
	else if(d > 8.21113353599138) { p = 0; }
	return [NSNumber numberWithDouble:p];
}

@end