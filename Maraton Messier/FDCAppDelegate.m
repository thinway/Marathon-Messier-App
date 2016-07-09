//
//  AppDelegate.m
//  Maraton Messier
//
//  Created by Fran Delgado on 5/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import "FDCAppDelegate.h"
#import "FDCMessierObjectViewController.h"
#import "FDCMessierObjectModel.h"
#import "FDCWebViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Creamos un modelo
    FDCMessierObjectModel *m1 = [[FDCMessierObjectModel alloc] initWithMessierNumber:1
                                                                           ngcNumber:1952
                                                                          commonName:@"Nebulosa del Cangrejo"
                                                                          objectType:@"Remamente de Supernova"
                                                                            distance:6.3
                                                                       constellation:@"Tauro"
                                                                               notes:@"La nebulosa del Cangrejo (también conocida como M1, NGC 1952, Taurus A y Taurus X-1) es un resto de supernova de tipo plerión. Fue observada por primera vez en el año 1054 (SN 1054), por astrónomos chinos y árabes. La nebulosa fue observada en el año 1731 por John Bevis. Es el resto de una supernova que fue observada y documentada, como una estrella visible a la luz del día, por astrónomos chinos y árabes el 4 de julio del año 1054. La explosión se mantuvo visible durante 22 meses. Con este objeto, Charles Messier comenzó su catálogo de objetos no cometarios. Situado a una distancia de aproximadamente 6300 años luz (1930 pc2 ) de la Tierra, en la constelación de Tauro, la nebulosa tiene un diámetro de 6 años luz (1,84 pc) y su velocidad de expansión es de 1500 km/s."
                                                                   apparentMagnitude:9.0
                                                                             webLink:[NSURL URLWithString:@"https://es.wikipedia.org/wiki/Nebulosa_del_Cangrejo"]
                                                                               photo:[UIImage imageNamed:@"900px-Crab_Nebula.jpg"]];
    
    FDCMessierObjectModel *m2 = [[FDCMessierObjectModel alloc] initWithMessierNumber:2
                                                                           ngcNumber:7089
                                                                          commonName:@"Messier 2"
                                                                          objectType:@"Cúmulo Globular"
                                                                            distance:175.0
                                                                       constellation:@"Acuario"
                                                                               notes:@"El cúmulo globular M2 (también conocido como objeto Messier 2, Messier 2, M2 o NGC 7089), se encuentra en la constelación de Acuario. Fue descubierto por Jean-Dominique Maraldi en 1746. Tiene un diámetro de aproximadamente 175 años luz, y contiene unas 150.000 estrellas, además de ser uno de los cúmulos más compactos y ricos conocidos."
                                                                   apparentMagnitude:6.5
                                                                             webLink:[NSURL URLWithString:@"https://es.wikipedia.org/wiki/C%C3%BAmulo_globular_M2"]
                                                                               photo:[UIImage imageNamed:@"600px-Messier_2_Hubble_WikiSky.jpg"]];
    
    FDCMessierObjectModel *m3 = [[FDCMessierObjectModel alloc] initWithMessierNumber:3
                                                                           ngcNumber:5272
                                                                          commonName:@"Messier 3"
                                                                          objectType:@"Cúmulo Globular"
                                                                            distance:33900.0
                                                                       constellation:@"Canes Venatici"
                                                                               notes:@"El Cúmulo globular M3 (también conocido como Objeto Messier 3, Messier 3, M3 o NGC 5272), se encuentra en la constelación de Canes Venatici. Fue descubierto por el astrónomo francés Charles Messier en 1764.Durante el siglo XVIII William Herschel estudió el cúmulo con su gran reflector encontrándolo formado por miles de estrellas, entre la magnitud 13 y la 16, que se apiñaban en su centro. Lord Rosse, con su gran telescopio reflector, pudo notar las alineaciones de estrellas más externas (las famosas patas de araña formadas por alineaciones estelares, también muy notorias en M13) así como localizar algunos pequeños manchones o parches oscuros, aglomeraciones de polvo situados delante del cúmulo (más próximos a la Tierra), proyectados sobre el cuerpo de estrellas."
                                                                   apparentMagnitude:6.2
                                                                             webLink:[NSURL URLWithString:@"https://es.wikipedia.org/wiki/C%C3%BAmulo_globular_M3"]
                                                                               photo:[UIImage imageNamed:@"M3LRGB_891x674.jpg"]];
    
    // Creamos el controlador
    FDCMessierObjectViewController *m1VC = [[FDCMessierObjectViewController alloc] initWithModel:m1];
    FDCMessierObjectViewController *m2VC = [[FDCMessierObjectViewController alloc] initWithModel:m2];
    FDCMessierObjectViewController *m3VC = [[FDCMessierObjectViewController alloc] initWithModel:m3];
    
    UINavigationController *m1NavVC = [[UINavigationController alloc] initWithRootViewController:m1VC];
    UINavigationController *m2NavVC = [[UINavigationController alloc] initWithRootViewController:m2VC];
    UINavigationController *m3NavVC = [[UINavigationController alloc] initWithRootViewController:m3VC];
    
    // FDCWebViewController *webVC = [[FDCWebViewController alloc] initWithModel:m1];
    
    // Creamos un combinador
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.viewControllers = @[m1NavVC, m2NavVC, m3NavVC];
    
    // UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:tabVC];
    
    // Asignamos el combinador como controlador raíz
    self.window.rootViewController = tabVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
