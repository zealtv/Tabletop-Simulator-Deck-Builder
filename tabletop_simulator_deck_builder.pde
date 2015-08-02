int cardWidth;
int cardHeight;

void setup()
{
  noLoop();
  size(1024, 1024);
  
  cardWidth = width/10;
  cardHeight = height/7;
}


void draw()
{
  textAlign( CENTER, CENTER );
  textSize(60);
  fill(125);
  background(255);
  stroke(0);
  
  //draw guides
  for( int i = 1; i < 10; i++ ) line( i * cardWidth, 0, i * cardWidth, height );  
  for( int i = 1; i < 7; i++ ) line( 0, i * cardHeight, width, i * cardHeight );

  int x, y, index;  
  for( y = 0; y < 7; y++ )
  {
    pushMatrix();
    translate(0, y * cardHeight + cardHeight/2 );
    
    for( x = 0; x < 10; x++ )
    {
      //get current card index
      index = x + 1 + 10 * y;
      
      pushMatrix();
      translate( x * cardWidth + cardWidth/2, 0 );

      //Draw card!
      drawCard( index );
      
      popMatrix(); 
    }
    
    popMatrix();
  }
  
  save( "deck.png" );
}





void drawCard( int index )
{
  if( index == 70 ) text( "?", 0, 0 );
  else text( index, 0, 0);
}


void drawCard( int cardPosX, int cardPosY, int index )
{
  text( cardPosX + 1 + 10 * cardPosY, 0, 0);
}
