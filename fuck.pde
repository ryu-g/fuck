int x,y,move,w,count;
void setup() {
	size(820, 820);	
	move=20;
	w=move;
	textSize(8);
	noLoop();
}

void draw() {
	translate(width/2, height/2); //move position(0,0) to center 
	background(0);
	count=1;// make spiral from 1
	x=0;
	y=0;
	disp(x,y);
	for(int num=1; num<40; num++){
		for (int unko=1 ; 2*num-1>= unko ; unko++ ) {
			x+=move;
			disp(x,y);
		}
		for (int fuck=1 ; 2*num-1>= fuck ; fuck++ ) {
			y+=move;
			disp(x,y);
		}
		for (int namako=1 ; 2*num>= namako ; namako++ ) {
			x-=move;
			disp(x,y);
		}
		for (int miso=1 ; 2*num>= miso ; miso++ ) {
			y-=move;
			disp(x,y);
		}
	}
}
void disp(int x, int y){
	stroke(255);
	fill(255-sosu(count));
	rect(x,y,w,w);
	fill(sosu(count));
	text(count, x+2,y+10);
	count++;
}

int sosu(int ponzu){
	if(ponzu==1)return 80;
	for(int i=2 ; ponzu >i ; i++)
	if(ponzu%i==0)return 80;//素数じゃない
	return 255;//素数
}
