var y, c, k, i, l, w, r, a;
varexo e;

parameters beta, rho, alpha, delta, sigma;

alpha = 0.36;
beta  = 0.99;
delta = 0.025;
rho   = 0.95;
sigma = 0.09;

model;
	#Y = exp( y );
	#C = exp( c );
	#LEAD_C = exp( c(+1) );
	#K = exp( k );
	#LAG_K = exp( k(-1) );
	#L = exp( l );
	#W = exp( w );
	#R = exp( r );
	#LEAD_R = exp( r(+1) );
	#I = exp( i );
	#A = exp( a );
	W = C;
	beta * ( C / LEAD_C * (1-delta+LEAD_R) ) = 1;
	W = (1-alpha)*Y/L;
	R = alpha*Y/LAG_K;
	Y = C + I;
	Y = A * LAG_K^alpha * L ^ ( 1 - alpha );
	K = ( 1 - delta ) * LAG_K + I;
	a = rho * a(-1) + sigma * e;
end;

shocks;
var e; stderr 1;
end;

steady;

check;

stoch_simul( irf = 80, order = 3 );
