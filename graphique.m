x=[-2:0.01:2];
y=x.^2;
a=x.^x; %on crée nos fonctions
z=3+0*x; %on crée un vecteur de meme taille que x, égal à 3 tout le temps
v=log(x)/log(3); %on divise log(x) par log(3) pour changer la base
hold on, plot(x,y), plot(x,z), plot(x,v), plot(x,a), axis equal, hold off