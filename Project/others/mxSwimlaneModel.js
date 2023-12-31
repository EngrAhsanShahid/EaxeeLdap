<?xml version="1.0" encoding="UTF-8"?>
<?eclipse version="3.4"?>
<plugin>
   <extension
         point="org.eclipse.ui.editors">
      <editor
            class="com.archimatetool.editor.browser.BrowserEditor"
            contributorClass="com.archimatetool.editor.browser.BrowserEditorActionBarContributor"
            default="false"
            icon="img/browser.png"
            id="com.archimatetool.editor.browser.browserEditor"
            name="%editorBrowser">
      </editor>
   </extension>
   <extension
         point="org.eclipse.ui.elementFactories">
      <factory
            class="com.archimatetool.editor.browser.BrowserEditorInputFactory"
            id="com.archimatetool.editor.browser.BrowserEditorInputFactory">
      </factory>
   </extension>

</plugin>
                                                                                                                                                                                                                             sources
 * scanRanksFromSinks - Whether rank assignment is from the sinks or sources.
 * usage
 */
function mxSwimlaneModel(layout, vertices, roots, parent, tightenToSource)
{
	var graph = layout.getGraph();
	this.tightenToSource = tightenToSource;
	this.roots = roots;
	this.parent = parent;

	// map of cells to internal cell needed for second run through
	// to setup the sink of edges correctly
	this.vertexMapper = new mxDictionary();
	this.edgeMapper = new mxDictionary();
	this.maxRank = 0;
	var internalVertices = [];

	if (vertices == null)
	{
		vertices = this.graph.getChildVertices(parent);
	}

	this.maxRank = this.SOURCESCANSTARTRANK;
	// map of cells to internal cell needed for second run through
	// to setup the sink of edges correctly. Guess size by number
	// of edges is roughly same as number of vertices.
	this.createInternalCells(layout, vertices, internalVertices);

	// Go through edges set their sink values. Also check the
	// ordering if and invert edges if necessary
	for (var i = 0; i < vertices.length; i++)
	{
		var edges = internalVertices[i].connectsAsSource;

		for (var j = 0; j < edges.length; j++)
		{
			var internalEdge = edges[j];
			var realEdges = internalEdge.edges;

			// Only need to process the first real edge, since
			// all the edges connect to the same other vertex
			if (realEdges != null && realEdges.length > 0)
			{
				var realEdge = realEdges[0];
				var targetCell = layout.getVisibleTerminal(
						realEdge, false);
				var internalTargetCell = this.vertexMapper.get(targetCell);

				if (internalVertices[i] == internalTargetCell)
				{
					// If there are parallel edges going between two vertices and not all are in the same direction
					// you can have navigated across one direction when doing the cycle reversal that isn't the same
					// direction as the first real edge in the array above. When that happens the if above catches
					// that and we correct the target cell before continuing.
					// This branch only detects this single case
					targetCell = layout.getVisibleTerminal(
							realEdge, true);
					internalTargetCell = this.vertexMapper.get(targetCell);
				}

				if (internalTargetCell != null
						&& internalVertices[i] != internalTargetCell)
				{
					internalEdge.target = internalTargetCell;

					if (internalTargetCell.connectsAsTarget.length == 0)
					{
						internalTargetCell.connectsAsTarget = [];
					}

					if (mxUtils.indexOf(internalTargetCell.connectsAsTarget, internalEdge) < 0)
					{
						internalTargetCell.connectsAsTarget.push(internalEdge);
					}
				}
			}
		}

		// Use the temp variable in the internal nodes to mark this
		// internal vertex as having been visited.
		internalVertices[i].temp[0] = 1;
	}
};

/**
 * Variable: maxRank
 *
 * Stores the largest rank number allocated
 */
mxSwimlaneModel.prototype.maxRank = null;

/**
 * Variable: vertexMapper
 *
 * Map from graph vertices to internal model nodes.
 */
mxSwimlaneModel.prototype.vertexMapper = null;

/**
 * Variable: edgeMapper
 *
 * Map from graph edges to internal model edg��;  
 ;   T i p s   f o r   t r a n s l a t o r :  
 ;   E n g l i s h  
 ;   V e r s i o n   =   8 . 8  
  
 [ M a i n W n d ]  
 M a i n T i t l e = H e r s t e l   v e r w i j d e r d e ,   g e f o r m a t t e e r d e   o f   v e r l o r e n   f o t o ' s ,   v i d e o ' s ,   a u d i o ' s ,   d o c u m e n t e n ,   e - m a i l s ,   a r c h i e v e n ,   e n z .   V a n   d e   c o m p u t e r   e n   a n d e r e   e x t e r n e   o p s l a g a p p a r a t e n .  
 B t n D e l e t e d R e c o v e r y = V e r w i j d e r d e   B e s t a n d s h e r s t e l  
 B t n F o r m a t t e d R e c o v e r y = G e f o r m a t t e e r d   b e s t a n d s h e r s t e l  
 B t n D e e p R e c o v e r y = D i e p   h e r s t e l  
 B t n C r e a t e I m a g e M o d e = M a a k   a f b e e l d i n g  
 T x t M a i n I n f o = H e r s t e l   b e s t a n d e n   v e r w i j d e r d   d o o r   C o m m a n d   +   D e l e t e   o f   l e e g g e m a a k t   u i t   d e   p r u l l e n b a k   e n   b e s t a n d e n   v e r w i j d e r d   v a n   e e n   s p e c i f i e k e   p a r t i t i e .  
 L i s t H e a d e r N a m e = M e d i a   n a a m  
 L i s t H e a d e r T y p e = T y p e  
 L i s t H e a d e r S i z e = G r o o t t e  
 L a b e l D i s k I n f o = S c h i j f i n f o r m a t i e  
 B t n P r e v = V o r i g e  
 B t n C r e a t e I m a g e = M a a k   a f b e e l d i n g  
 B t n L o a d I m a g e = L a a d   a f b e e l d i n g  
 B t n A d v a n c e S c a n = G e a v a n c e e r d e   s c a n  
 B t n S c a n = S t a r t   S c a n  
 T a b S c a n = S c a n   b e s t a n d  
 T a b F i l e T y p e = G e a v a n c e e r d e   s c a n  
 T a b R e c o v e r = H e r s t e l   b e s t a n d  
 T x t A d v a n c e d S c a n = A l s   u   a l l e e n   j p g - b e s t a n d e n   w i l t   h e r s t e l l e n ,   z o r g   e r   d a n   v o o r   d a t   u   a l l e e n   j p g   s e l e c t e e r t .   D i t   z a l   d e   z o e k p r e s t a t i e s   a a n z i e n l i j k   v e r b e t e r e n .  
 L b l P h o t o T y p e = T y p e   f o t o b e s t a n d  
 L b l A u d i o T y p e = T y p e   a u d i o b e s t a n d  
 L b l V i d e o T y p e = T y p e   v i d e o b e s t a n d  
 L b l O f f i c e T y p e = O f f i c e   b e s t a n d s t y p e  
 L b l Z i p T y p e = A r c h i e f   B e s t a n d s t y p e  
 L b l O t h e r T y p e = A n d e r   b e s t a n d s t y p e  
 B t n P h o t o = F o t o  
 B t n A u d i o = A u d i o  
 B t n V i d e o = V i d e o  
 B t n O f f i c e = K a n t o o r  
 B t n Z i p = A r c h i e f  
 B t n O t h e r = a n d e r s  
 B t n R e c o v e r = H e r s t e l l e n  
 F i l e N a m e = B e s t a n d s n a a m  
 P a t h = P a d  
 S i z e = G r o o t t e  
 T y p e = T y p e  
 M o d i f i e d T i m e = G e w i j z i g d e   t i j d  
 C r e a t e d T i m e = G e c r e � e r d e   t i j d  
 N o d e P h o t o = F o t o  
 N o d e A u d i o = A u d i o  
 N o d e V i d e o = V i d e o  
 N o d e O f f i c e = K a n t o o r  
 N o d e Z i p = A r c h i e f  
 N o d e O t h e r = a n d e r s  
 R e g i s t e r B t n = R e g i s t r e r e n  
 P u r c h a s e B t n = A a n k o o p  
  
 [ C r e a t e I m a g e W n d ]  
 T i t l e = I m a g e   C r e a t i o n  
 D e s c r i p t i o n = M a a k   e e n   a f b e e l d i n g   o m   d e   s c a n i n g   s n e l h e i d   t e   v e r b e t e r e n .   D e z e   a f b e e l d i n g   k a n   o o k   w o r d e n   g e b r u i k t   o m   g e g e v e n s   t e   h e r s t e l l e n   w a n n e e r   h e t   w e r k e l i j k e   m e d i u m   n i e t   i s   a a n g e s l o t e n .  
 c a n c e l b t n = a n n u l e r e n  
  
 [ S c a n W n d ]  
 T i t l e = S c a n   b e s t a n d  
 c a n c e l b t n = a n n u l e r e n  
  
 [ P r e v i e w P r o c e s s W n d ]  
 T i t l e = V o o r b e e l d b e s t a n d   b e k i j k e n  
 c a n c e l b t n = a n n u l e r e n  
  
 [ R e g i s t e r W n d ]  
 T i t l e = R e g i s t r e r e n  
 E m a i l = R e g i s t r a t i e   e - m a i l :  
 K e y = R e g i s t r a t i e   s l e u t e l :  
 R e g i s t e r B t n = R e g i s t r e r e n  
 O r d e r B t n = B e s t e l   n u  
 F r e e T r i a l B t n = G r a t i s   p r o e f v e r s i e  
 H o m e P a g e B t n = S t a r t p a g i n a  
  
 [ R e c o v e r P r o c e s s W n d ]  
 T i t l e = B e s t a n d e n   h e r s t e l l e n  
 D e s c r i p t i o n = W a c h t   a u b   e e n   m o m e n t .  
 F i l e = h e t   d o s s i e r  
 S t a t u s = s t a a t  
 O p e n B t n = O p e n   F o l d e r  
 F i n i s h B t n = A f   h e b b e n  
 C a n c e l B t n = a n n u l e r e n  
 D e t a i l B t n = D e t a i l  
  
 [ S e a r c h P r o c e s s W n d ]  
 T i t l e = Z o e k e n  
  
 [ M e n u W n d ]  
 i t e m _ h e l p = H e l p e n  
 i t e m _ l a n g u a g e = T a a l  
 i t e m _ f a q = F A Q  
 i t e m _ p u r c h a s e = A a n k o o p  
 i t e m _ r e g i s t e r = R e g i s t r e r e n  
 i t e m _ a b o u t = W a t   b e t r e f t  
 i t e m _ s u p p o r t = O n d e r s t e u n i n g  
 i t e m _ e x i t = U i t g a n g  
  
 ;   F o r   M e s s a g e   B o x e s  
 [ M e s s a g e B o x ]  
 o k b t n = O K  
 c a n c e l b t n = N E E  
  
 ;   C o m m o n   M e s s a g e s ;  
 [ M e s s a g e s ]  
 ;   M a i n   W i n d o w  
 M S G 0 1 0 1 = H e r s t e l   b e s t a n d e n   v e r w i j d e r d   d o o r   C o m m a n d   +   D e l e t e   o f   l e e g g e m a a k t   u i t   d e   p r u l l e n b a k   e n   b e s t a n d e n   v e r w i j d e r d   v a n   e e n   s p e c i f i e k e   p a r t i t i e .  
 M S G 0 1 0 2 = H e r s t e l   v e r l o r e n   b e s t a n d e n   a l s   g e v o l g   v a n   o n v e r w a c h t e   f o r m a t t e r i n g   v a n a f   d e   h a r d e   s c h i j f   i n   h e t   g e v a l   d a t   b e s t a n d e n   n i e t   e e r d e r   z i j n   g e b a c k - u p t .  
 M S G 0 1 0 3 = G e b r u i k   d e e p   s c a n   o m   b e s t a n d e n   t e   h e r s t e l l e n   d i e   p e r   o n g e l u k   z i j n   v e r l o r e n .   H e t   s c a n t   o n g e b r u i k t e   b l o k k e n   v a n   v o l u m e   o m   g e g e v e n s   t e   h e r s t e l l e n .  
 M S G 0 1 0 4 = M a a k   e e n   a f b e e l d i n g   v a n   h e t   g e s e l e c t e e r d e   g e b i e d .   D e z e   a f b e e l d i n g   k a n   l a t e r   w o r d e n   g e b r u i k t   o m   g e g e v e n s   t e   h e r s t e l l e n   a l s   u w   m e d i a   s l e c h t e   s e c t o r e n   h e e f t   o n t w i k k e l d .  
 ;   C r e a t e   I m a g e   P a g e  
 M S G 0 2 0 1 = F y s i e k e   b e s t u u r d e r  
 M S G 0 2 0 2 = V e r w i j d e r b a r e   d r i v e r  
 M S G 0 2 0 3 = D r i v e   L e t t e r :  
 M S G 0 2 0 4 = D r i v e   L a b e l :  
 M S G 0 2 0 5 = B e s t a n d s s y s t e e m :  
 M S G 0 2 0 6 = C a p a c i t e i t :  
 M S G 0 2 0 7 = G e b r u i k t :  
 M S G 0 2 0 8 = o n g e b r u i k t :  
 M S G 0 2 0 9 = B e s t a n d s p a d :  
 M S G 0 2 1 0 = B e s t a n d s g r o o t t e :  
 M S G 0 2 1 1 = M a a k   a f b e e l d i n g  
 M S G 0 2 1 2 = S e l e c t e e r   M e d i a   o m   a f b e e l d i n g   t e   m a k e n .  
 M S G 0 2 1 3 = D e z e   m e t h o d e   n e e m t   s e c t o r   p e r   b e e l d   v a n   d e   g e s e l e c t e e r d e   r e g i o .   H e t   i s   h a n d i g   i n   h e t   g e v a l   u w   m e d i a   s l e c h t e   s e c t o r e n   h e b b e n   o n t w i k k e l d .   D e z e   a f b e e l d i n g   k a n   l a t e r   w o r d e n   g e b r u i k t   o m   g e g e v e n s   t e   h e r s t e l l e n .  
 M S G 0 2 1 4 = W i l t   u   g e g e v e n s   h e r s t e l l e n   v a n   h e t   l a a t s t   g e m a a k t e   a f b e e l d i n g s b e s t a n d ?  
 M S G 0 2 1 5 = C r e � e r   e e n   s u c c e s v o l   i m a g e b e s t a n d !  
 M S G 0 2 1 6 = S e l e c t e e r   e e n   o p s l a g a p p a r a a t   e n   k l i k   o p   ' A f b e e l d i n g   m a k e n '   o m   e e n     a f b e e l d i n g s b e s t a n d   t e   m a k e n !  
 M S G 0 2 1 7 = M a k e n   v a n   a f b e e l d i n g s b e s t a n d   m i s l u k t !  
 M S G 0 2 1 8 = B e w a a r   d e   a f b e e l d i n g   n i e t   o p   d e   p l a a t s   w a a r   u   e e n   a f b e e l d i n g   v a n   m a a k t .  
 M S G 0 2 1 9 = V o o r   F A T 1 6 - b e s t a n d s s y s t e e m   m a g   d e   m a x i m a l e   b e s t a n d s g r o o t t e   n i e t   g r o t e r   z i j n   d a n   2 G .  
 M S G 0 2 2 0 = V o o r   h e t   F A T 3 2 - b e s t a n d s s y s t e e m   m a g   d e   m a x i m a l e   b e s t a n d s g r o o t t e   n i e t   g r o t e r   z i j n   d a n   4 G .  
 M S G 0 2 2 1 = E r   i s   n i e t   v o l d o e n d e   v r i j e   r u i m t e   w a a r   u   h e t   a f b e e l d i n g s b e s t a n d   o p s l a a t .  
 ;   C r e a t e I m a g e   W i n d o w  
 M S G 0 3 0 1 = H u i d i g     p r o g e s s :  
 M S G 0 3 0 2 = A f b e e l d i n g   m a k e n   e n   o p s l a a n   o p  
 M S G 0 3 0 3 = S e c t o r   s c h r i j v e n  
 M S G 0 3 0 4 = G e s c h a t t e   t i j d   i s   a a n   h e t   b e r e k e n e n .  
 M S G 0 3 0 5 = G e s c h a t t e   r e s t e r e n d e   t i j d :  
 M S G 0 3 0 6 = H e t   p r o c e s   k a n   n i e t   w o r d e n   h e r v a t   v a n a f   h e t   h u i d i g e   s t a d i u m .   W i l t   u   h e t   h u i d i g e   p r o c e s   a f b r e k e n ?  
 ;   M e s s a g e   B o x  
 M S G 0 4 0 1 = F o u t  
 M S G 0 4 0 2 = B e v e s t i g e n  
 M S G 0 4 0 3 = I n f o r m a t i e  
 M S G 0 4 0 4 = V r a a g  
 M S G 0 4 0 5 = W a a r s c h u w i n g  
 ;   S c a n   P a g e  
 M S G 0 5 0 1 = S e l e c t e e r   M e d i a   v o o r   h e r s t e l .  
 M S G 0 5 0 2 = S e l e c t e e r   h i e r o n d e r   e e n   o p s l a g a p p a r a a t   o m   f o t o ' s ,   a u d i o ' s ,   v i d e o ' s ,   d o c u m e n t e n ,   e - m a i l s ,   e n z .   T e   s c a n n e n .  
 M S G 0 5 0 3 = S c a n   b e s t a n d  
 M S G 0 5 0 4 = N i e t - h e r k e n d e   b e s t a n d s s y s t e e m .  
 M S G 0 5 0 5 = S e l e c t e e r   e e n   o p s l a g a p p a r a a t   e n   k l i k   o p   ' S c a n   S t a r t '   o m   u w   b e s t a n d e n ,   f o t o ' s ,   a u d i o -   e n   v i d e o b e s t a n d e n   t e   h e r s t e l l e n !  
 ;   A d v a n c e d   S c a n   P a g e  
 M S G 0 6 0 1 = S e l e c t e e r   B e s t a n d s f o r m a a t   o m   t e   s c a n n e n .  
 M S G 0 6 0 2 = S e l e c t e e r   b e s t a n d s t y p e n   d i e   u   w i l t   h e r s t e l l e n   i n   h e t   t a b b l a d   b e s t a n d s l i j s t .   E r   w o r d t   v o o r g e s t e l d   o m   a l l e e n   d e   b e s t a n d s t y p e n   t e   s e l e c t e r e n   d i e   u   w i l t   h e r s t e l l e n .  
 ;   S c a n   P r o c e s s   W i n d o w  
 M S G 0 7 0 1 = S c a n n e n   s t a t i o n   % C :   v o o r   v e r w i j d e r d e   b e s t a n d e n  
 M S G 0 7 0 2 = S c a n n e n   s t a t i o n   % d :   v o o r   v e r w i j d e r d e   b e s t a n d e n  
 M S G 0 7 0 3 = A f b e e l d i n g b e s t a n d   s c a n n e n  
 M S G 0 7 0 4 = H u i d i g e   v o o r u i t g a n g :  
 M S G 0 7 0 5 = G e s c h a t t e   t i j d   i s   a a n   h e t   b e r e k e n e n .  
 M S G 0 7 0 6 = S e c t o r   l e z e n :  
 M S G 0 7 0 7 = T o t a l e   b e s t a n d e n   g e v o n d e n :  
 M S G 0 7 0 8 = G e s c h a t t e   r e s t e r e n d e   t i j d :  
 M S G 0 7 0 9 = W e e t   j e   z e k e r   d a t   j e   h e t   s c a n n e n   w i l t   a n n u l e r e n ?  
 ;   R e c o v e r y   P a g e  
 M S G 0 8 0 1 = S e l e c t e e r   d e   g e w e n s t e   b e s t a n d e n   d i e   u   w i l t   h e r s t e l l e n .  
 M S G 0 8 0 2 = V o n d   % s   h e r s t e l b a r e   b e s t a n d e n   n a   d e   s c a n .   B e k i j k   e e n   v o o r b e e l d   e n   k i e s   d e   b e s t a n d e n   d i e   u   w i l t   h e r s t e l l e n .  
 M S G 0 8 0 3 = S e l e c t e e r   0   B y e s   i n   0   b e s t a n d  
 M S G 0 8 0 4 = G e s e l e c t e e r d e   % s   i n   % d   b e s t a n d e n  
 M S G 0 8 0 5 = W e   r a d e n   u   t e n   z e e r s t e   a a n   d e   b e s t a n d e n   n i e t   o p   t e   s l a a n   o p   d e   s c h i j f   w a a r   u w   b e s t a n d e n   v e r l o r e n   z i j n   g e g a a n .   K l i k   o p   " O K "   o m   v e r d e r   t e   g a a n .  
 M S G 0 8 0 6 = E e n   d e e l   v a n   d e   v i d e o b e s t a n d e n   v e r e i s t   e e n   s p e c i f i e k e   v i d e o s p e l e r ,   d u s   d e   v i d e o b e s t a n d e n   m e t   v o o r v e r t o n i n g   z i j n   m o g e l i j k   n i e t   s u c c e s v o l ,   m a a r   d i t   b e t e k e n t   n i e t   d a t   h e t   v i d e o b e s t a n d   i s   b e s c h a d i g d .  
 M S G 0 8 0 7 = F o t o  
 M S G 0 8 0 8 = A u d i o  
 M S G 0 8 0 9 = V i d e o  
 M S G 0 8 1 0 = K a n t o o r  
 M S G 0 8 1 1 = A r c h i e f  
 M S G 0 8 1 2 = a n d e r s  
 ;   P r e v i e w   P r o c e s s   W i n d o w  
 M S G 0 9 0 1 = H u i d i g e   v o o r u i t g a n g :  
 M S G 0 9 0 2 = V o o r b e e l d b e s t a n d :  
 M S G 0 9 0 3 = W e e t   j e   z e k e r   d a t   j e   h e t   v o o r b e e l d   w i l t   a n n u l e r e n ?  
 M S G 0 9 0 4 = S e l e c t e e r   a l s t u b l i e f t   e e n   f o t o !  
 M S G 0 9 0 5 = I k   k a n   d e   a f b e e l d i n g   n i e t   b e k i j k e n !  
 ;   R e g i s t e r   W i n d o w  
 M S G 1 0 0 1 = V o e r   u w   e - m a i l a d r e s   i n !  
 M S G 1 0 0 2 = V o e r   u w   s l e u t e l   i n !  
 M S G 1 0 0 3 = I n v a l i d e   e m a i l   a d d r e s s !  
 M S G 1 0 0 4 = U w   e - m a i l   o f   s l e u t e l   i s   n i e t   c o r r e c t !  
 M S G 1 0 0 5 = U   h e b t   A m a z i n g   A n y   D a t a   R e c o v e r y   s u c c e s v o l   g e r e g i s t r e e r d .  
 ;   R e c o v e r   W i n d o w  
 M S G 1 1 0 1 = H u i d i g e   v o o r u i t g a n g :  
 M S G 1 1 0 2 = % d / % d   b e s t a n d   ( e n )   h e r s t e l d   /   s u c c e s :   % d   m i s l u k t :   % d  
 M S G 1 1 0 3 = W e e t   j e   z e k e r   d a t   j e   h e t   h e r s t e l l e n   w i l t   a n n u l e r e n ?  
 ;   S e a r c h i n g   W i n d o w  
 M S G 1 2 0 1 = D r i v e   % C   z o e k e n :   v o o r   h e r s t e l b e s t a n d e n  
 M S G 1 2 0 2 = D r i v e   % d   z o e k e n :   v o o r   h e r s t e l b e s t a n d e n  
 M S G 1 2 0 3 = B e e l d b e s t a n d   % s   z o e k e n :   v o o r   h e r s t e l b e s t a n d e n  
 M S G 1 2 0 4 = H u i d i g e   v o o r u i t g a n g :  
 M S G 1 2 0 5 = W e e t   j e   z e k e r   d a t   j e   h e t   z o e k e n   m o e t   a n n u l e r e n ?  
 M S G 1 2 0 6 = E e r d e r   o p g e s l a g e n   s c a n i n f o r m a t i e   g e v o n d e n ,   n u   h e r v a t ?  
 M S G 1 2 0 7 = D e z e   v i d e o   k a n   n i e t   a f g e s p e e l d   w o r d e n .   D e   v i d e o c o d e c   w o r d t   n i e t   o n d e r s t e u n d   d o o r   d e   m e d i a s p e l e r   o f   d e   v i d e o   i s   b e s c h a d i g d   v o o r d a t   h e t   h e r s t e l   p l a a t s v o n d .  
 M S G 1 2 0 8 = O n m o g e l i j k   o m   m e t   h e t   I n t e r n e t   t e   v e r b i n d e n .   P r o b e e r   h e t   l a t e r   a l s t u b l i e f t .  
 M S G 1 2 0 9 = A m a z i n g   A n y   D a t a   R e c o v e r y  
 M S G 1 2 1 0 = G r a t i s   v e r s i e   b i e d t   g e e n   o n d e r s t e u n i n g   v o o r   r e g i s t r a t i e   o f   h e r s t e l ,   d o w n l o a d   e n   i n s t a l l e e r   R c y s o f t   D a t a   R e c o v e r y   U l t i m a t e . e x e   o m   t e   r e g i s t r e r e n   e n   t e   h e r s t e l l e n   ( d o w n l o a d a d r e s   i n   d e   i n k o o p m a i l ) .  
 M S G 1 2 1 1 = H e r s t e l   5 1 2 M B - g e g e v e n s   g r a t i s : % s   o v e r .   P r o b e e r   n u   N u   u p g r a d e n   o m   m e e r   t e   h e r s t e l l e n .  
  
 M S G 1 2 1 2 = S c a n   a l l e   v o l g e n d e   b e s t a n d e n  
 M S G 1 2 1 3 = V e e l   v o o r k o m e n d e   a f b e e l d i n g s b e s t a n d e n   o f   d i g i t a l e   c a m e r a - f o t o ' s ,   z o a l s   J P G ,   P N G ,   G I F ,   B M P ,   e t c .  
 M S G 1 2 1 4 = A l g e m e n e   a u d i o b e s t a n d e n ,   z o a l s   M P 3 ,   W M A ,   e n z .  
 M S G 1 2 1 5 = A l g e m e n e   d o c u m e n t b e s t a n d e n ,   z o a l s   M S   W o r d ,   E x c e l ,   P D F ,   P P T - b e s t a n d e n ,   e n z .  
 M S G 1 2 1 6 = A l g e m e n e   v i d e o - b e s t a n d e n ,   z o a l s   o p n a m e s   v a n   d i g i t a l e   c a m e r a ' s ,   z o a l s   M P 4 ,   A V I ,   M K V ,   F L V ,   W M V ,   e n z .  
 M S G 1 2 1 7 = H e r s t e l   R A R ,   Z I P ,   B Z i p 2 ,   7 z ,   S I T ,   S I T X   e n   m e e r   v o l l e d i g .  
 M S G 1 2 1 8 = B e s t a n d e n   g e g e n e r e e r d   d o o r   b e k e n d e   p r o g r a m m a ' s ,   z o a l s   P h o t o s h o p ,   A u t o C A D ,   3 D - M a x ,   e n z .  
 M S G 1 2 1 9 = B e g i n  
  
 M S G 1 2 2 0 = A l l e   b e s t a n d s t y p e n  
 M S G 1 2 2 1 = F o t o ' s  
 M S G 1 2 2 2 = A u d i o  
 M S G 1 2 2 3 = D o c u m e n t  
 M S G 1 2 2 4 = V i d e o  
 M S G 1 2 2 5 = A r c h i e f  
 M S G 1 2 2 6 = a n d e r e n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      