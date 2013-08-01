//
//  ViewController.m
//  CollectionViewFotos
//
//  Created by LLBER on 20/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

#import "PersonalizarCelda.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize vistaImagen, tituloImagen, fondoCollection;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self fondoCollection] setDataSource:self];
    [[self fondoCollection] setDelegate:self];
    
    
    vistaImagen = [[NSArray alloc] initWithObjects:@"violin.png", @"guitarra.png", @"micro.png", @"tambor.png", @"trompeta.png", @"bateria.png", @"metronomo.png", @"atril.png", nil];
    
    tituloImagen = [[NSArray alloc] initWithObjects:@"violin", @"guitarra", @"micro", @"tambor", @"trompeta", @"bateria", @"metronomo", @"atril", nil];
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [tituloImagen count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * identificadorDeCelda = @"Cell";
    
    PersonalizarCelda * celda = [collectionView dequeueReusableCellWithReuseIdentifier:identificadorDeCelda forIndexPath:indexPath];
    
    [[celda imagenPorCelda] setImage:[UIImage imageNamed:[vistaImagen objectAtIndex:indexPath.item]]];
    [[celda tituloDeLaImagen] setText:[tituloImagen objectAtIndex:indexPath.item]];
    
    return celda;
    
}


    // Capturar evento
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *celda = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    celda.backgroundColor = [UIColor whiteColor];
    
    celda.alpha = 0.3;
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
