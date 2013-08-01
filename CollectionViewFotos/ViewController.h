//
//  ViewController.h
//  CollectionViewFotos
//
//  Created by LLBER on 20/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>


@property (strong, nonatomic) IBOutlet UICollectionView *fondoCollection;


@property NSArray * vistaImagen;
@property NSArray * tituloImagen;





@end
