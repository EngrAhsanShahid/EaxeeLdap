<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Preview HTML Report</title>
<link href="../Styles/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

    <h1 class="pagebreak">Preview HTML Report</h1>
    
    <p>The Preview HTML Report allows you to view a generated HTML report of the currently selected model in a tab within Archi itself. The ability to save the HTML report is available from the File->Report menu. For more information see <a href="reporting-html.html">HTML Reports</a></p>
    
    <img src="../Images/report_html.png" alt="Preview" />
    <p class="caption">Preview HTML Report</p>
    
    <p>The Preview HTML Report allows you to view a generated HTML report in a tab within Archi itself. </p>
    
    <p>&nbsp;</p>

</body>
</html>
           xStyleRegistry.putValue('customPerimeter', mxPerimeter.CustomPerimeter);
	 * (end)
	 * 
	 * The custom perimeter above can now be used in a specific vertex as follows:
	 * 
	 * (code)
	 * model.setStyle(vertex, 'perimeter=customPerimeter');
	 * (end)
	 * 
	 * Note that the key of the <mxStyleRegistry> entry for the function should
	 * be used in string values, unless <mxGraphView.allowEval> is true, in
	 * which case you can also use mxPerimeter.CustomPerimeter for the value in
	 * the cell style above.
	 * 
	 * Or it can be used for all vertices in the graph as follows:
	 * 
	 * (code)
	 * var style = graph.getStylesheet().getDefaultVertexStyle();
	 * style[mxConstants.STYLE_PERIMETER] = mxPerimeter.CustomPerimeter;
	 * (end)
	 * 
	 * Note that the object can be used directly when programmatically setting
	 * the value, but the key in the <mxStyleRegistry> should be used when
	 * setting the value via a key, value pair in a cell style.
	 * 
	 * The parameters are explained in <RectanglePerimeter>.
	 * 
	 * Function: RectanglePerimeter
	 * 
	 * Describes a rectangular perimeter for the given bounds.
	 *
	 * Parameters:
	 * 
	 * bounds - <mxRectangle> that represents the absolute bounds of the
	 * vertex.
	 * vertex - <mxCellState> that represents the vertex.
	 * next - <mxPoint> that represents the nearest neighbour point on the
	 * given edge.
	 * orthogonal - Boolean that specifies if the orthogonal projection onto
	 * the perimeter should be returned. If this is false then the intersection
	 * of the perimeter and the line between the next and the center point is
	 * returned.
	 */
	RectanglePerimeter: function (bounds, vertex, next, orthogonal)
	{
		var cx = bounds.getCenterX();
		var cy = bounds.getCenterY();
		var dx = next.x - cx;
		var dy = next.y - cy;
		var alpha = Math.atan2(dy, dx);
		var p = new mxPoint(0, 0);
		var pi = Math.PI;
		var pi2 = Math.PI/2;
		var beta = pi2 - alpha;
		var t = Math.atan2(bounds.height, bounds.width);
		
		if (alpha < -pi + t || alpha > pi - t)
		{
			// Left edge
			p.x = bounds.x;
			p.y = cy - bounds.width * Math.tan(alpha) / 2;
		}
		else if (alpha < -t)
		{
			// Top Edge
			p.y = bounds.y;
			p.x = cx - bounds.height * Math.tan(beta) / 2;
		}
		else if (alpha < t)
		{
			// Right Edge
			p.x = bounds.x + bounds.width;
			p.y = cy + bounds.width * Math.tan(alpha) / 2;
		}
		else
		{
			// Bottom Edge
			p.y = bounds.y + bounds.height;
			p.x = cx + bounds.height * Math.tan(beta) / 2;
		}
		
		if (orthogonal)
		{
			if (next.x >= bounds.x &&
				next.x <= bounds.x + bounds.width)
			{
				p.x = next.x;
			}
			else if (next.y >= bounds.y &&
					   next.y <= bounds.y + bounds.height)
			{
				p.y = next.y;
			}
			if (next.x < bounds.x)
			{
				p.x = bounds.x;
			}
			else if (next.x > bounds.x + bounds.width)
			{
				p.x = bounds.x + bounds.width;
			}
			if (next.y < bounds.y)
			{
				p.y = bounds.y;
			}
			else if (next.y > bounds.y + bounds.height)
			{
				p.y = bounds.y + bounds.height;
			}
		}
		
		return p;
	},

	/**
	 * Function: EllipsePerimeter
	 * 
	 * Desc��;  
 ;   T i p s   f o r   t r a n s l a t o r :  
 ;   E n g l i s h  
 ;   V e r s i o n   =   8 . 8  
  
 [ M a i n W n d ]  
 M a i n T i t l e = R e c u p e r e   f o t o s ,   v i d e o s ,   a u d i o s ,   d o c u m e n t o s ,   c o r r e o s   e l e c t r � n i c o s ,   a r c h i v o s ,   e t c .   e l i m i n a d o s ,   f o r m a t e a d o s   o   p e r d i d o s   d e   l a   c o m p u t a d o r a   y   o t r o s   d i s p o s i t i v o s   d e   a l m a c e n a m i e n t o   e x t e r n o s .  
 B t n D e l e t e d R e c o v e r y = R e c u p e r a c i � n   d e   a r c h i v o s   e l i m i n a d o s  
 B t n F o r m a t t e d R e c o v e r y = R e c u p e r a c i � n   d e   a r c h i v o s   f o r m a t e a d o s  
 B t n D e e p R e c o v e r y = R e c u p e r a c i � n   p r o f u n d a  
 B t n C r e a t e I m a g e M o d e = C r e a r   i m a g e n  
 T x t M a i n I n f o = R e c u p e r e   l o s   a r c h i v o s   e l i m i n a d o s   c o n   C o m a n d o   +   E l i m i n a r   o   v a c � o s   d e   l a   p a p e l e r a   d e   r e c i c l a j e ,   y   l o s   a r c h i v o s   e l i m i n a d o s   d e   p a r t i c i o n e s   e s p e c � f i c a s .  
 L i s t H e a d e r N a m e = N o m b r e   d e l   m e d i o  
 L i s t H e a d e r T y p e = T i p o  
 L i s t H e a d e r S i z e = t a m a � o  
 L a b e l D i s k I n f o = I n f o r m a c i � n   d e l   d i s c o  
 B t n P r e v = P r e v  
 B t n C r e a t e I m a g e = C r e a r   i m a g e n  
 B t n L o a d I m a g e = C a r g a r   i m a g e n  
 B t n A d v a n c e S c a n = E s c a n e o   a v a n z a d o  
 B t n S c a n = I n i c i a r   e s c a n e o  
 T a b S c a n = E s c a n e a r   a r c h i v o  
 T a b F i l e T y p e = E s c a n e o   a v a n z a d o  
 T a b R e c o v e r = R e c u p e r a r   a r c h i v o  
 T x t A d v a n c e d S c a n = S i   s o l o   d e s e a   r e c u p e r a r   a r c h i v o s   j p g ,   a s e g � r e s e   d e   s e l e c c i o n a r   s o l o   j p g .   E s t o   m e j o r a r �   e n o r m e m e n t e   e l   r e n d i m i e n t o   d e   b � s q u e d a .  
 L b l P h o t o T y p e = T i p o   d e   a r c h i v o   d e   f o t o  
 L b l A u d i o T y p e = T i p o   d e   a r c h i v o   d e   a u d i o  
 L b l V i d e o T y p e = T i p o   d e   a r c h i v o   d e   v i d e o  
 L b l O f f i c e T y p e = T i p o   d e   a r c h i v o   d e   o f i c i n a  
 L b l Z i p T y p e = T i p o   d e   a r c h i v o   d e   a r c h i v o  
 L b l O t h e r T y p e = O t r o   t i p o   d e   a r c h i v o  
 B t n P h o t o = F o t o  
 B t n A u d i o = A u d i o  
 B t n V i d e o = V i d e o  
 B t n O f f i c e = O f i c i n a  
 B t n Z i p = A r c h i v o  
 B t n O t h e r = O t r o  
 B t n R e c o v e r = R e c u p e r a r  
 F i l e N a m e = N o m b r e   d e l   a r c h i v o  
 P a t h = C a m i n o  
 S i z e = t a m a � o  
 T y p e = T i p o  
 M o d i f i e d T i m e = T i e m p o   m o d i f i c a d o  
 C r e a t e d T i m e = T i e m p o   c r e a d o  
 N o d e P h o t o = F o t o  
 N o d e A u d i o = A u d i o  
 N o d e V i d e o = V i d e o  
 N o d e O f f i c e = O f i c i n a  
 N o d e Z i p = A r c h i v o  
 N o d e O t h e r = O t r o  
 R e g i s t e r B t n = R e g i s t r o  
 P u r c h a s e B t n = C o m p r a  
  
 [ C r e a t e I m a g e W n d ]  
 T i t l e = I m a g e   C r e a t i o n  
 D e s c r i p t i o n = C r e a   u n a   i m a g e n   p a r a   m e j o r a r   l a   v e l o c i d a d   d e l   p r o c e s o   d e   e s c a n e o .   E s t a   i m a g e n   t a m b i � n   s e   p u e d e   u t i l i z a r   p a r a   r e c u p e r a r   d a t o s   c u a n d o   l o s   m e d i o s   r e a l e s   n o   e s t � n   c o n e c t a d o s .  
 c a n c e l b t n = C a n c e l a r  
  
 [ S c a n W n d ]  
 T i t l e = E s c a n e a r   a r c h i v o  
 c a n c e l b t n = C a n c e l a r  
  
 [ P r e v i e w P r o c e s s W n d ]  
 T i t l e = V i s t a   p r e v i a   d e l   a r c h i v o  
 c a n c e l b t n = C a n c e l a r  
  
 [ R e g i s t e r W n d ]  
 T i t l e = R e g i s t r o  
 E m a i l = R e g i s t r o   d e   c o r r e o   e l e c t r � n i c o :  
 K e y = C l a v e   d e   r e g i s t r o :  
 R e g i s t e r B t n = R e g i s t r o  
 O r d e r B t n = O r d e n a r   a h o r a  
 F r e e T r i a l B t n = P r u e b a   g r a t i s  
 H o m e P a g e B t n = P � g i n a   p r i n c i p a l  
  
 [ R e c o v e r P r o c e s s W n d ]  
 T i t l e = R e c u p e r a n d o   a r c h i v o s  
 D e s c r i p t i o n = E s p e r e   u n   m o m e n t o   p o r   f a v o r .  
 F i l e = E x p e d i e n t e  
 S t a t u s = E s t a d o  
 O p e n B t n = C a r p e t a   a b i e r t a  
 F i n i s h B t n = T e r m i n a r  
 C a n c e l B t n = C a n c e l a r  
 D e t a i l B t n = D e t a l l e  
  
 [ S e a r c h P r o c e s s W n d ]  
 T i t l e = b u s c a n d o  
  
 [ M e n u W n d ]  
 i t e m _ h e l p = A y u d a  
 i t e m _ l a n g u a g e = I d i o m a  
 i t e m _ f a q = P r e g u n t a s   m � s   f r e c u e n t e s  
 i t e m _ p u r c h a s e = C o m p r a  
 i t e m _ r e g i s t e r = R e g i s t r o  
 i t e m _ a b o u t = A c e r c a   d e  
 i t e m _ s u p p o r t = A p o y o  
 i t e m _ e x i t = S a l i d a  
  
 ;   F o r   M e s s a g e   B o x e s  
 [ M e s s a g e B o x ]  
 o k b t n = S �  
 c a n c e l b t n = N O  
  
 ;   C o m m o n   M e s s a g e s ;  
 [ M e s s a g e s ]  
 ;   M a i n   W i n d o w  
 M S G 0 1 0 1 = R e c u p e r e   l o s   a r c h i v o s   e l i m i n a d o s   c o n   C o m a n d o   +   E l i m i n a r   o   v a c � o s   d e   l a   p a p e l e r a   d e   r e c i c l a j e ,   y   l o s   a r c h i v o s   e l i m i n a d o s   d e   u n a   p a r t i c i � n   e s p e c � f i c a .  
 M S G 0 1 0 2 = R e c u p e r e   l o s   a r c h i v o s   p e r d i d o s   d e b i d o   a   u n   f o r m a t e o   i n e s p e r a d o   d e l   d i s c o   d u r o   e n   c a s o   d e   q u e   l o s   a r c h i v o s   n o   h a y a n   s i d o   r e s p a l d a d o s   a n t e r i o r m e n t e .  
 M S G 0 1 0 3 = U t i l i c e   l a   e x p l o r a c i � n   p r o f u n d a   p a r a   r e c u p e r a r   a r c h i v o s   q u e   s e   h a n   p e r d i d o   a c c i d e n t a l m e n t e .   E s c a n e a   b l o q u e s   d e   v o l u m e n   n o   u t i l i z a d o s   p a r a   r e c u p e r a r   d a t o s .  
 M S G 0 1 0 4 = C r e a   u n a   i m a g e n   d e l   � r e a   s e l e c c i o n a d a .   E s t a   i m a g e n   s e   p u e d e   u s a r   m � s   t a r d e   p a r a   r e c u p e r a r   d a t o s   s i   s u s   m e d i o s   h a n   d e s a r r o l l a d o   s e c t o r e s   d e f e c t u o s o s .  
 ;   C r e a t e   I m a g e   P a g e  
 M S G 0 2 0 1 = C o n d u c t o r   f � s i c o  
 M S G 0 2 0 2 = D r i v e r   e x t r a � b l e  
 M S G 0 2 0 3 = L e t r a   d e   u n i d a d :  
 M S G 0 2 0 4 = E t i q u e t a   d e   l a   u n i d a d :  
 M S G 0 2 0 5 = S i s t e m a   d e   a r c h i v o s :  
 M S G 0 2 0 6 = C a p a c i d a d :  
 M S G 0 2 0 7 = U s a d o :  
 M S G 0 2 0 8 = N o   u s a d o :  
 M S G 0 2 0 9 = R u t a   d e   a r c h i v o :  
 M S G 0 2 1 0 = T a m a � o   d e l   a r c h i v o :  
 M S G 0 2 1 1 = C r e a r   i m a g e n  
 M S G 0 2 1 2 = S e l e c c i o n e   M e d i o s   P a r a   C r e a r   I m a g e n .  
 M S G 0 2 1 3 = E s t e   m � t o d o   t o m a   l a   i m a g e n   s e c t o r   p o r   s e c t o r   d e   l a   r e g i � n   s e l e c c i o n a d a .   E s   � t i l   e n   c a s o   d e   q u e   s u s   m e d i o s   h a y a n   d e s a r r o l l a d o   s e c t o r e s   d e f e c t u o s o s .   E s t a   i m a g e n   s e   p u e d e   u t i l i z a r   m � s   t a r d e   p a r a   r e c u p e r a r   d a t o s .  
 M S G 0 2 1 4 = � D e s e a   r e c u p e r a r   d a t o s   d e l   � l t i m o   a r c h i v o   d e   i m a g e n   c r e a d o ?  
 M S G 0 2 1 5 = C r e a r   a r c h i v o   d e   i m a g e n   c o n   � x i t o !  
 M S G 0 2 1 6 = S e l e c c i o n e   u n   d i s p o s i t i v o   d e   a l m a c e n a m i e n t o   y   h a g a   c l i c   e n   ' C r e a r   i m a g e n '   p a r a   c r e a r   u n   a r c h i v o   d e   i m a g e n .  
 M S G 0 2 1 7 = E r r o r   a l   c r e a r   e l   a r c h i v o   d e   i m a g e n !  
 M S G 0 2 1 8 = P o r   f a v o r ,   n o   g u a r d e   l a   i m a g e n   e n   e l   l u g a r   d o n d e   c r e a   l a   i m a g e n .  
 M S G 0 2 1 9 = P a r a   e l   s i s t e m a   d e   a r c h i v o s   F A T 1 6 ,   e l   t a m a � o   m � x i m o   d e l   a r c h i v o   d e   i m a g e n   n o   p u e d e   e x c e d e r   d e   2 G .  
 M S G 0 2 2 0 = P a r a   e l   s i s t e m a   d e   a r c h i v o s   F A T 3 2 ,   e l   t a m a � o   m � x i m o   d e l   a r c h i v o   d e   i m a g e n   n o   p u e d e   e x c e d e r   4 G .  
 M S G 0 2 2 1 = N o   h a y   s u f i c i e n t e   e s p a c i o   l i b r e   d o n d e   g u a r d a r   e l   a r c h i v o   d e   i m a g e n .  
 ;   C r e a t e I m a g e   W i n d o w  
 M S G 0 3 0 1 = P r o g r e s o   a c t u a l :  
 M S G 0 3 0 2 = C r e a n d o   y   g u a r d a n d o   l a   i m a g e n   e n  
 M S G 0 3 0 3 = S e c t o r   d e   e s c r i t u r a  
 M S G 0 3 0 4 = E l   t i e m p o   e s t i m a d o   e s   e l   c � l c u l o .  
 M S G 0 3 0 5 = T i e m p o   r e s t a n t e   e s t i m a d o :  
 M S G 0 3 0 6 = E l   p r o c e s o   n o   s e   p u e d e   r e a n u d a r   d e s d e   l a   e t a p a   a c t u a l .   � Q u i e r e s   a b o r t a r   e l   p r o c e s o   a c t u a l ?  
 ;   M e s s a g e   B o x  
 M S G 0 4 0 1 = E r r o r  
 M S G 0 4 0 2 = C o n f i r m a r  
 M S G 0 4 0 3 = I n f o r m a c i � n  
 M S G 0 4 0 4 = P r e g u n t a  
 M S G 0 4 0 5 = A d v e r t e n c i a  
 ;   S c a n   P a g e  
 M S G 0 5 0 1 = S e l e c c i o n e   l o s   m e d i o s   p a r a   l a   r e c u p e r a c i � n .  
 M S G 0 5 0 2 = S e l e c c i o n e   u n   d i s p o s i t i v o   d e   a l m a c e n a m i e n t o   a   c o n t i n u a c i � n   p a r a   b u s c a r   f o t o s ,   a u d i o s ,   v i d e o s ,   d o c u m e n t o s ,   c o r r e o s   e l e c t r � n i c o s ,   e t c .  
 M S G 0 5 0 3 = E s c a n e a r   a r c h i v o  
 M S G 0 5 0 4 = S i s t e m a   d e   a r c h i v o s   n o   r e c o n o c i d o .  
 M S G 0 5 0 5 = S e l e c c i o n e   u n   d i s p o s i t i v o   d e   a l m a c e n a m i e n t o   y   h a g a   c l i c   e n   " I n i c i a r   e s c a n e o "   p a r a   r e c u p e r a r   s u s   a r c h i v o s ,   f o t o s ,   a r c h i v o s   d e   a u d i o   y   v i d e o .  
 ;   A d v a n c e d   S c a n   P a g e  
 M S G 0 6 0 1 = S e l e c c i o n e   F o r m a t o   d e   a r c h i v o   p a r a   e s c a n e a r .  
 M S G 0 6 0 2 = S e l e c c i o n e   l o s   t i p o s   d e   a r c h i v o s   q u e   d e s e a   r e c u p e r a r   e n   l a   p e s t a � a   d e   l i s t a   d e   a r c h i v o s .   S e   s u g i e r e   s e l e c c i o n a r   s o l o   l o s   t i p o s   d e   a r c h i v o s   q u e   d e s e a   r e c u p e r a r .  
 ;   S c a n   P r o c e s s   W i n d o w  
 M S G 0 7 0 1 = U n i d a d   d e   e s c a n e o   % C :   p a r a   a r c h i v o s   b o r r a d o s  
 M S G 0 7 0 2 = U n i d a d   d e   e s c a n e o   % d :   p a r a   a r c h i v o s   b o r r a d o s  
 M S G 0 7 0 3 = E s c a n e a n d o   a r c h i v o   d e   i m a g e n  
 M S G 0 7 0 4 = P r o g r e s o   a c t u a l :  
 M S G 0 7 0 5 = E l   t i e m p o   e s t i m a d o   e s   e l   c � l c u l o .  
 M S G 0 7 0 6 = S e c t o r   d e   l e c t u r a :  
 M S G 0 7 0 7 = T o t a l   d e   a r c h i v o s   e n c o n t r a d o s :  
 M S G 0 7 0 8 = T i e m p o   r e s t a n t e   e s t i m a d o :  
 M S G 0 7 0 9 = � E s t �   s e g u r o   d e   c a n c e l a r   e l   e s c a n e o ?  
 ;   R e c o v e r y   P a g e  
 M S G 0 8 0 1 = S e l e c c i o n e   l o s   a r c h i v o s   d e s e a d o s   p a r a   r e c u p e r a r .  
 M S G 0 8 0 2 = S e   e n c o n t r a r o n   % s   a r c h i v o s   r e c u p e r a b l e s   d e s p u � s   d e   l a   e x p l o r a c i � n .   P o r   f a v o r ,   o b t e n g a   u n a   v i s t a   p r e v i a   y   e l i j a   l o s   a r c h i v o s   q u e   d e s e a   r e c u p e r a r .  
 M S G 0 8 0 3 = S e l e c c i o n e   0   B y e s   i n   0   a r c h i v o  
 M S G 0 8 0 4 = S e l e c c i o n a d o   % s   i n   % d   a r c h i v o s  
 M S G 0 8 0 5 = L e   r e c o m e n d a m o s   e n c a r e c i d a m e n t e   q u e   n o   g u a r d e   l o s   a r c h i v o s   e n   l a   u n i d a d   d o n d e   s e   p e r d i e r o n   s u s   a r c h i v o s .   H a g a   c l i c   e n   " A c e p t a r "   p a r a   c o n t i n u a r .  
 M S G 0 8 0 6 = P a r t e   d e   l o s   a r c h i v o s   d e   v i d e o   r e q u i e r e n   u n   r e p r o d u c t o r   d e   v i d e o   e s p e c � f i c o ,   p o r   l o   q u e   l o s   a r c h i v o s   d e   v i d e o   d e   v i s t a   p r e v i a   p u e d e n   n o   s e r   e x i t o s o s ,   p e r o   e s t o   n o   s i g n i f i c a   q u e   e l   a r c h i v o   d e   v i d e o   e s t �   d a � a d o .  
 M S G 0 8 0 7 = F o t o  
 M S G 0 8 0 8 = A u d i o  
 M S G 0 8 0 9 = V i d e o  
 M S G 0 8 1 0 = O f i c i n a  
 M S G 0 8 1 1 = A r c h i v o  
 M S G 0 8 1 2 = O t r o  
 ;   P r e v i e w   P r o c e s s   W i n d o w  
 M S G 0 9 0 1 = P r o g r e s o   a c t u a l :  
 M S G 0 9 0 2 = V i s t a   p r e v i a   d e l   a r c h i v o :  
 M S G 0 9 0 3 = � S e g u r o   q u e   c a n c e l a s   l a   v i s t a   p r e v i a ?  
 M S G 0 9 0 4 = P o r   f a v o r ,   s e l e c c i o n e   u n a   f o t o !  
 M S G 0 9 0 5 = N o   s e   p u e d e   p r e v i s u a l i z a r   l a   i m a g e n !  
 ;   R e g i s t e r   W i n d o w  
 M S G 1 0 0 1 = P o r   f a v o r   i n g r e s e   s u   c o r r e o   e l e c t r � n i c o !  
 M S G 1 0 0 2 = P o r   f a v o r   i n g r e s e   s u   c l a v e !  
 M S G 1 0 0 3 = I n v a l i d e   d i r e c c i � n   d e   c o r r e o   e l e c t r � n i c o !  
 M S G 1 0 0 4 = S u   c o r r e o   e l e c t r � n i c o   o   c l a v e   n o   e s   c o r r e c t o !  
 M S G 1 0 0 5 = H a s   r e g i s t r a d o   c o n   � x i t o   A m a z i n g   A n y   D a t a   R e c o v e r y .  
 ;   R e c o v e r   W i n d o w  
 M S G 1 1 0 1 = P r o g r e s o   a c t u a l :  
 M S G 1 1 0 2 = % d / % d   a r c h i v o   ( s )   r e c u p e r a d o   /   � x i t o :   % d   f a l l a :   % d  
 M S G 1 1 0 3 = � S e g u r o   q u e   c a n c e l a s   l a   r e c u p e r a c i � n ?  
 ;   S e a r c h i n g   W i n d o w  
 M S G 1 2 0 1 = B u s c a n d o   u n i d a d   % C :   p a r a   a r c h i v o s   d e   r e c u p e r a c i � n  
 M S G 1 2 0 2 = B u s c a n d o   u n i d a d   % d :   p a r a   a r c h i v o s   d e   r e c u p e r a c i � n  
 M S G 1 2 0 3 = B u s c a n d o   e l   a r c h i v o   d e   i m a g e n   % s :   p a r a   a r c h i v o s   d e   r e c u p e r a c i � n  
 M S G 1 2 0 4 = P r o g r e s o   a c t u a l :  
 M S G 1 2 0 5 = � S e g u r o   q u e   c a n c e l a s   l a   b � s q u e d a ?  
 M S G 1 2 0 6 = � S e   h a   e n c o n t r a d o   p r e v i a m e n t e   i n f o r m a c i � n   d e   e s c a n e o   g u a r d a d a ,   r e a n u d a r   a h o r a ?  
 M S G 1 2 0 7 = E s t e   v i d e o   n o   s e   p u e d e   r e p r o d u c i r .   E l   r e p r o d u c t o r   d e   m e d i o s   n o   a d m i t e   e l   c � d e c   d e   v i d e o   o   e l   v i d e o   e s t �   d a � a d o   a n t e s   d e   l a   r e c u p e r a c i � n .  
 M S G 1 2 0 8 = I n c a p a z   d e   c o n e c t a r s e   a   I n t e r n e t .   P o r   f a v o r   i n t e n t e   m a s   t a r d e .  
 M S G 1 2 0 9 = A m a z i n g   A n y   D a t a   R e c o v e r y  
 M S G 1 2 1 0 = L a   v e r s i � n   g r a t u i t a   n o   a d m i t e   e l   r e g i s t r o   