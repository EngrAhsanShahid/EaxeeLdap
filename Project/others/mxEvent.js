/**
 * Copyright (c) 2006-2015, JGraph Ltd
 * Copyright (c) 2006-2015, Gaudenz Alder
 */
var mxEvent =
{

	/**
	 * Class: mxEvent
	 * 
	 * Cross-browser DOM event support. For internal event handling,
	 * <mxEventSource> and the graph event dispatch loop in <mxGraph> are used.
	 * 
	 * Memory Leaks:
	 * 
	 * Use this class for adding and removing listeners to/from DOM nodes. The
	 * <removeAllListeners> function is provided to remove all listeners that
	 * have been added using <addListener>. The function should be invoked when
	 * the last reference is removed in the JavaScript code, typically when the
	 * referenced DOM node is removed from the DOM.
	 *
	 * Function: addListener
	 * 
	 * Binds the function to the specified event on the given element. Use
	 * <mxUtils.bind> in order to bind the "this" keyword inside the function
	 * to a given execution scope.
	 */
	addListener: function()
	{
		var updateListenerList = function(element, eventName, funct)
		{
			if (element.mxListenerList == null)
			{
				element.mxListenerList = [];
			}
			
			var entry = {name: eventName, f: funct};
			element.mxListenerList.push(entry);
		};
		
		if (window.addEventListener)
		{
			return function(element, eventName, funct)
			{
				element.addEventListener(eventName, funct, false);
				updateListenerList(element, eventName, funct);
			};
		}
		else
		{
			return function(element, eventName, funct)
			{
				element.attachEvent('on' + eventName, funct);
				updateListenerList(element, eventName, funct);				
			};
		}
	}(),

	/**
	 * Function: removeListener
	 *
	 * Removes the specified listener from the given element.
	 */
	removeListener: function()
	{
		var updateListener = function(element, eventName, funct)
		{
			if (element.mxListenerList != null)
			{
				var listenerCount = element.mxListenerList.length;
				
				for (var i = 0; i < listenerCount; i++)
				{
					var entry = element.mxListenerList[i];
					
					if (entry.f == funct)
					{
						element.mxListenerList.splice(i, 1);
						break;
					}
				}
				
				if (element.mxListenerList.length == 0)
				{
					element.mxListenerList = null;
				}
			}
		};
		
		if (window.removeEventListener)
		{
			return function(element, eventName, funct)
			{
				element.removeEventListener(eventName, funct, false);
				updateListener(element, eventName, funct);
			};
		}
		else
		{
			return function(element, eventName, funct)
			{
				element.detachEvent('on' + eventName, funct);
				updateListener(element, eventName, funct);
			};
		}
	}(),

	/**
	 * Function: removeAllListeners
	 * 
	 * Removes all listeners from the given element.
	 */
	removeAllListeners: function(element)
	{
		var list = element.mxListenerList;

		if (list != null)
		{
			while (list.length > 0)
			{
				var entry = list[0];
				mxEvent.removeListener(element, entry.name, entry.f);
			}
		}
	},
	
	/**
	 * Function: addGestureListeners
	 * 
	 * Adds the given listeners for touch, mouse and/or pointer events. If
	 * <mxClient.IS_POINTER> is true then pointer events will be registered,
	 * else the respective mouse events will be registered. If <mxClient.IS_POINTER>
	 * is false and <mxClient.IS_TOUCH> is true then the respective touch events
	 * will be registered as well as the mouse events.
	 */
	addGestureListeners: function(node, startListener, moveListener, endListener)
	{
		if (startListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointerdown' : 'mousedown', startListener);
		}
		
		if (moveListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointermove' : 'mousemove', moveListener);
		}
		
		if (endListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointerup' : 'mouseup', endListener);
		}
		
		if (!mxClient.IS_POINTER && mxClient.IS_TOUCH)
		{
			if (startListener != null)
			{
				mxEvent.addListener(node, 'touchstart', startListener);
			}
			
			if (moveListener != null)
			{
				mxEvent.addListener(node, 'touchmove', moveListener);
			}
			
			if (endListener != null)
			{
				mxEvent.addListener(node, 'touchend', endListener);
			}
		}
	},
	
	/**
	 * Function: removeGestureListeners
	 * 
	 * Removes the given listeners from mousedown, mousemove, mouseup and the
	 * respective touch events if <mxClient.IS_TOUCH> is true.
	 */
	removeGestureListeners: function(node, startListener, moveListener, endListener)
	{
		if (startListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointerdown' : 'mousedown', startListener);
		}
		
		if (moveListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointermove' : 'mousemove', moveListener);
		}
		
		if (endListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointerup' : 'mouseup', endListener);
		}
		
		if (!mxClient.IS_POINTER && mxClient.IS_TOUCH)
		{
			if (startListener != null)
			{
				mxEvent.removeListener(node, 'touchstart', startListener);
			}
			
			if (moveListener != null)
			{
				mxEvent.removeListener(node, 'touchmove', moveListener);
			}
			
			if (endListener != null)
			{
				mxEvent.removeListener(node, 'touchend', endListener);
			}
		}
	},
	
	/**
	 * Function: redirectMouseEvents
	 *
	 * Redirects the mouse events from the given DOM node to the graph dispatch
	 * loop using the event and given state as event arguments. State can
	 * either be an instance of <mxCellState> or a function that returns an
	 * <mxCellState>. The down, move, up and dblClick arguments are optional
	 * functions that take the trigger event as arguments and replace the
	 * default behaviour.
	 */
	redirectMouseEvents: function(node, graph, state, down, move, up, dblClick)
	{
		var getState = function(evt)
		{
			return (typeof(state) == 'function') ? state(evt) : state;
		};
		
		mxEvent.addGestureListeners(node, function (evt)
		{
			if (down != null)
			{
				down(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_DOWN, new mxMouseEvent(evt, getState(evt)));
			}
		},
		function (evt)
		{
			if (move != null)
			{
				move(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_MOVE, new mxMouseEvent(evt, getState(evt)));
			}
		},
		function (evt)
		{
			if (up != null)
			{
				up(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_UP, new mxMouseEvent(evt, getState(evt)));
			}
		});

		mxEvent.addListener(node, 'dblclick', function (evt)
		{
			if (dblClick != null)
			{
				dblClick(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				var tmp = getState(evt);
				graph.dblClick(evt, (tmp != null) ? tmp.cell : null);
			}
		});
	},

	/**
	 * Function: release
	 * 
	 * Removes the known listeners from the given DOM node and its descendants.
	 * 
	 * Parameters:
	 * 
	 * element - DOM node to remove the listeners from.
	 */
	release: function(element)
	{
		try
		{
			if (element != null)
			{
				mxEvent.removeAllListeners(element);
				
				var children = element.childNodes;
				
				if (children != null)
				{
			        var childCount = children.length;
			        
			        for (var i = 0; i < childCount; i += 1)
			        {
			        	mxEvent.release(children[i]);
			        }
			    }
			}
		}
		catch (e)
		{
			// ignores errors as this is typically called in cleanup code
		}
	},

	/**
	 * Function: addMouseWheelListener
	 * 
	 * Installs the given function as a handler for mouse wheel events. The
	 * function has two arguments: the mouse event and a boolean that specifies
	 * if the wheel was moved up or down.
	 * 
	 * This has been tested with IE 6 and 7, Firefox (all versions), Opera and
	 * Safari. It does currently not work on Safari for Mac.
	 * 
	 * Example:
	 * 
	 * (code)
	 * mxEvent.addMouseWheelListener(function (evt, up)
	 * {
	 *   mxLog.show();
	 *   mxLog.debug('mouseWheel: up='+up);
	 * });
	 *(end)
	 * 
	 * Parameters:
	 * 
	 * funct - Handler function that takes the event argument and a boolean up
	 * argument for the mousewheel direction.
	 * target - Target for installing the listener in Google Chrome. See 
	 * https://www.chromestatus.com/features/6662647093133312.
	 */
	addMouseWheelListener: function(funct, target)
	{
		if (funct != null)
		{
			var wheelHandler = function(evt)
			{
				// IE does not give an event object but the
				// global event object is the mousewheel event
				// at this point in time.
				if (evt == null)
				{
					evt = window.event;
				}
			
				//To prevent window zoom on trackpad pinch
				if (evt.ctrlKey) 
				{
					evt.preventDefault();
				}

				var delta = -evt.deltaY;
				
				// Handles the event using the given function
				if (Math.abs(evt.deltaX) > 0.5 || Math.abs(evt.deltaY) > 0.5)
				{
					funct(evt, (evt.deltaY == 0) ?  -evt.deltaX > 0 : -evt.deltaY > 0);
				}
			};
	
			target = target != null ? target : window;
					
			if (mxClient.IS_SF && !mxClient.IS_TOUCH)
			{
				var scale = 1;
				
				mxEvent.addListener(target, 'gesturestart', function(evt)
				{
					mxEvent.consume(evt);
					scale = 1;
				});
				
				mxEvent.addListener(target, 'gesturechange', function(evt)
				{
					mxEvent.consume(evt);
					var diff = scale - evt.scale;
					
					if (Math.abs(diff) > 0.2)
					{
						funct(evt, diff < 0, true);
						scale = evt.scale;
					}
				});

				mxEvent.addListener(target, 'gestureend', function(evt)
				{
					mxEvent.consume(evt);
				});
			}
			
			mxEvent.addListener(target, 'wheel', wheelHandler);
		}
	},
	
	/**
	 * Function: disableContextMenu
	 *
	 * Disables the context menu for the given element.
	 */
	disableContextMenu: function(element)
	{
		mxEvent.addListener(element, 'contextmenu', function(evt)
		{
			if (evt.preventDefault)
			{
				evt.preventDefault();
			}
			
			return false;
		});
	},
	
	/**
	 * Function: getSource
	 * 
	 * Returns the event's target or srcElement depending on the browser.
	 */
	getSource: function(evt)
	{
		return (evt.srcElement != null) ? evt.srcElement : evt.target;
	},

	/**
	 * Function: isConsumed
	 * 
	 * Returns true if the event has been consumed using <consume>.
	 */
	isConsumed: function(evt)
	{
		return evt.isConsumed != null && evt.isConsumed;
	},

	/**
	 * Function: isTouchEvent
	 * 
	 * Returns true if the event was generated using a touch device (not a pen or mouse).
	 */
	isTouchEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'touch' || evt.pointerType ===
			evt.MSPOINTER_TYPE_TOUCH) : ((evt.mozInputSource != null) ?
					evt.mozInputSource == 5 : evt.type.indexOf('touch') == 0);
	},

	/**
	 * Function: isPenEvent
	 * 
	 * Returns true if the event was generated using a pen (not a touch device or mouse).
	 */
	isPenEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'pen' || evt.pointerType ===
			evt.MSPOINTER_TYPE_PEN) : ((evt.mozInputSource != null) ?
					evt.mozInputSource == 2 : evt.type.indexOf('pen') == 0);
	},

	/**
	 * Function: isMultiTouchEvent
	 * 
	 * Returns true if the event was generated using a touch device (not a pen or mouse).
	 */
	isMultiTouchEvent: function(evt)
	{
		return (evt.type != null && evt.type.indexOf('touch') == 0 && evt.touches != null && evt.touches.length > 1);
	},

	/**
	 * Function: isMouseEvent
	 * 
	 * Returns true if the event was generated using a mouse (not a pen or touch device).
	 */
	isMouseEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'mouse' || evt.pointerType ===
			evt.MSPOINTER_TYPE_MOUSE) : ((evt.mozInputSource != null) ?
				evt.mozInputSource == 1 : evt.type.indexOf('mouse') == 0);
	},
	
	/**
	 * Function: isLeftMouseButton
	 * 
	 * Returns true if the left mouse button is pressed for the given event.
	 * To check if a button is pressed during a mouseMove you should use the
	 * <mxGraph.isMouseDown> property. Note that this returns true in Firefox
	 * for control+left-click on the Mac.
	 */
	isLeftMouseButton: function(evt)
	{
		// Special case for mousemove and mousedown we check the buttons
		// if it exists because which is 0 even if no button is pressed
		if ('buttons' in evt && (evt.type == 'mousedown' || evt.type == 'mousemove'))
		{
			return evt.buttons == 1;
		}
		else if ('which' in evt)
		{
	        return evt.which === 1;
	    }
		else
		{
	        return evt.button === 1;
	    }
	},
	
	/**
	 * Function: isMiddleMouseButton
	 * 
	 * Returns true if the middle mouse button is pressed for the given event.
	 * To check if a button is pressed during a mouseMove you should use the
	 * <mxGraph.isMouseDown> property.
	 */
	isMiddleMouseButton: function(evt)
	{
		if ('which' in evt)
		{
	        return evt.which === 2;
	    }
		else
		{
	        return evt.button === 4;
	    }
	},
	
	/**
	 * Function: isRightMouseButton
	 * 
	 * Returns true if the right mouse button was pressed. Note that this
	 * button might not be available on some systems. For handling a popup
	 * trigger <isPopupTrigger> should be used.
	 */
	isRightMouseButton: function(evt)
	{
		if ('which' in evt)
		{
	        return evt.which === 3;
	    }
		else
		{
	        return evt.button === 2;
	    }
	},

	/**
	 * Function: isPopupTrigger
	 * 
	 * Returns true if the event is a popup trigger. This implementation
	 * returns true if the right button or the left button and control was
	 * pressed on a Mac.
	 */
	isPopupTrigger: function(evt)
	{
		return mxEvent.isRightMouseButton(evt) || (mxClient.IS_MAC && mxEvent.isControlDown(evt) &&
			!mxEvent.isShiftDown(evt) && !mxEvent.isMetaDown(evt) && !mxEvent.isAltDown(evt));
	},

	/**
	 * Function: isShiftDown
	 * 
	 * Returns true if the shift key is pressed for the given event.
	 */
	isShiftDown: function(evt)
	{
		return (evt != null) ? evt.shiftKey : false;
	},

	/**
	 * Function: isAltDown
	 * 
	 * Returns true if the alt key is pressed for the given event.
	 */
	isAltDown: function(evt)
	{
		return (evt != null) ? evt.altKey : false;
	},

	/**
	 * Function: isControlDown
	 * 
	 * Returns true if the control key is pressed for the given event.
	 */
	isControlDown: function(evt)
	{
		return (evt != null) ? evt.ctrlKey : false;
	},

	/**
	 * Function: isMetaDown
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	isMetaDown: function(evt)
	{
		return (evt != null) ? evt.metaKey : false;
	},

	/**
	 * Function: getMainEvent
	 * 
	 * Returns the touch or mouse event that contains the mouse coordinates.
	 */
	getMainEvent: function(e)
	{
		if ((e.type == 'touchstart' || e.type == 'touchmove') && e.touches != null && e.touches[0] != null)
		{
			e = e.touches[0];
		}
		else if (e.type == 'touchend' && e.changedTouches != null && e.changedTouches[0] != null)
		{
			e = e.changedTouches[0];
		}
		
		return e;
	},
	
	/**
	 * Function: getClientX
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	getClientX: function(e)
	{
		return mxEvent.getMainEvent(e).clientX;
	},

	/**
	 * Function: getClientY
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	getClientY: function(e)
	{
		return mxEvent.getMainEvent(e).clientY;
	},

	/**
	 * Function: consume
	 * 
	 * Consumes the given event.
	 * 
	 * Parameters:
	 * 
	 * evt - Native event to be consumed.
	 * preventDefault - Optional boolean to prevent the default for the event.
	 * Default is true.
	 * stopPropagation - Option boolean to stop event propagation. Default is
	 * true.
	 */
	consume: function(evt, preventDefault, stopPropagation)
	{
		preventDefault = (preventDefault != null) ? preventDefault : true;
		stopPropagation = (stopPropagation != null) ? stopPropagation : true;
		
		if (preventDefault)
		{
			if (evt.preventDefault)
			{
				if (stopPropagation)
				{
					evt.stopPropagation();
				}
				
				evt.preventDefault();
			}
			else if (stopPropagation)
			{
				evt.cancelBubble = true;
			}
		}

		// Opera
		evt.isConsumed = true;

		// Other browsers
		if (!evt.preventDefault)
		{
			evt.returnValue = false;
		}
	},
	
	//
	// Special handles in mouse events
	//
	
	/**
	 * Variable: LABEL_HANDLE
	 * 
	 * Index for the label handle in an mxMouseEvent. This should be a negative
	 * value that does not interfere with any possible handle indices. Default
	 * is -1.
	 */
	LABEL_HANDLE: -1,
	
	/**
	 * Variable: ROTATION_HANDLE
	 * 
	 * Index for the rotation handle in an mxMouseEvent. This sh�PNG

   
�dy�##7�����y�{uwUo���}o~�ڷnwuݦ���տ��Rs �ab�R �8K��c�]* h�I���+���U�����QC�wi���ݏ����_�D-��G4WEKE�OS����
%?�,MNK���K���Ē�8�-f��:af閹�N�1T���G^|�Ճ��.�5G�7oi}��i����*	�,_՞����T�
���H�5~3w�;�Mɬ��䀤]����}'��S23_�`@���(�-표b�r�$Ɲǥ[�K�^��>��V�;u���W�S5��X��RE݆s��Rj;���QB��#i�93E혴?Y�� �캃�h�4P�vOK#w,}�F��]D�����ef� �<)��1�?�@#��W�J](9��e6��$R���S�C'�R�_�_�Z�Уg���@�q�2-�3�t�Bj]J�����Z�4{��U�m�C��Q���{&��\O�6V�'��MUk�0��C��:h�v��F8�ԥ/��6��/VR��ե��ش�Ɛ/i��i�h4Q%��ע\F�>�P�{��r�Qr���5����Q�D�4�q�_Z������R,��KO~m�R��N������j�Wm)��T�;U��!�B�n&?���r���!]{����'1]�]�GB�K��`�I�y�@�H�������������g9Ng5t��F6.Y� ����ٴ���oP׶� [���$��@@�4z� ��љ�W�>��h������cW�4�������[�q����w)���x]z��w`i@`Ko��F6���^�^�,

�̙�eK��� �4$����֭[���������>ܷo�F�\�m�K���th����+M�k�G+���LJ���dӦMM�4;v����G�QQQ1z�h�~������řP��iiŪ�k�
)vE�t�V7�[�j�cǎ�￟��MKw,�ut�W��>/[6���fm��Z���͙77�)�u��/]��q�s�����W�[�t���#����fpىǄRH�*�OU	�+��]��|���_�8�����4
�}�
aR����?�hˎ�Ox�j�
�
)����4Q
�KW�=�K6tM%q�T�xE?ƫ="~�f�^_QQB��n�dY��)�'�4���3��Z�n��I���dʔ)q��8��@�0��r�K���O��"�B��>��!��z���b�v�Z�@(��G">̀ x����O�����Wx�	x� �X
 ^, ���׉KYC�a� n1�"^T��1x�
 nI�"��K���@���ڠ��Q�
f��� �I�Y��f�-�s���9}��hp�����RA��4���M�^$��D㧥�������@�T�z�F	� ��>�'�#�k�D�����\�TJ�4."̚5���p��lA. �]\��q�S��ؤ_��@�XпzF{N�A3��'�(����"��N�G
 x��Ky Z0}�%Eދ�N9��y
���pȽ �%tc��y��P��T�X c�(mB}ӗh���
 xO?/��E �<n)  ȳ�B-
 2�  � �N�X�Ʌp� �6�ۅ� �
���oBI���+osh��z
n�!�.}��x��:�f�t9uN�g\��Y�w�@��&k6Z&��|�%�wM厒rf'JE�ʯ-@���(���-��(��S*9�7�WxL�&Q�c�k�z��m���lx�k�b\7��lyp��1[��~����o<�dY����j��o�]��C��wϜ^=O{O�rJ���e`!WM)=7V��R}�%��X��A�T�ID�TV�~�_���5�8�K#�8ڻn`�[X��J]��)��\�ȬK���2R�:�u�#��&@TP�T�DBsW(��_����yu745�] G%����N�c7,jW��E���?{����𺁥.b1�C(,�y1�5n��A�6�+=��QJ(5>E�V"�<1[SB}���(�=K�?1O��X�Ww]7��e�y��ѭ&�fH��R[��#%��&�-��o6�hG_H��C����h��ZrM�W�?�ҡ�E%]s��I���>J�F÷�9�n`i0
����,5,
-���;�J���궖Vvl�B�d2�v�n�n^%�/q�`e�?
�"��J�T4���9�hX*E3\����Je*T��s�}l������"�AX8^�QH�w���y�+�c�Q�d_-e�WѯZ�,���Rd-�ۊ���r��Vn#�u=U��͙r4���V[��/y�r�WՎ5m�
Ƃ��$�-E�<�qT���#1�wd�S��ED�X5��0G9k�H�?��� TV�L.&Ɠ��G�8XN��R�D��6-倥
�(��倥��i�, ����K�뀥 �u�R �:`) x�48��j��x�o�:�R:�_��!�ѾJ��b���)h#���k(��>|�ҥ�ﾻQ�F�;�3��%>�-
��� ��&��u�<����@]Q�A_* $D��ׯ__�`��0��p~~~�ƍ-feg6��V�֬0>%��]P�M6UP�U��������0�A[* DD����{ѢE��K�,Y�ti(VGD@��0���I݌�Ad��:��h��*��g���p�ʁP��"���匏��z�j(���@`Fa�7��Q�d_-e�W�O���FQk)"Du]Q_QQB��mD�IΔ�)��|��
e�xUA��[��v�i��8�
��RċZRR2eʔ��X��8�E}��;�0�h�Ɩ*g`�����W���B����xs��4�
��R�8n膎@�l�	X��ҟ� QXh[�P�6(�R �:`) x� �X
 ^, ���ED<�"��-��_!&-�}��`)��c��җ-U���a0�/� K)�Z'�@fy�R��n̏K�
�a��R
��/�b)b�J{���A���J��A{�q� B K�X58u)RE!��[�w��8y,�ʩ��
O@�o�Qb5�RuX}"C�Y�  K���e���#���� K)�z^b VC,��ܣ��4`) x� �X
 ^, �1���r�Mk �K�	$�C �d)�iɰ�q r���0.O�6��7D)f)R�ɶ�Y s\C3-��,0/7�!-���QȺB29    IEND�B`�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     CELLS: 'resizeCells',

	/**
	 * Variable: CELLS_RESIZED
	 *
	 * Specifies the event name for cellsResized.
	 */
	CELLS_RESIZED: 'cellsResized',

	/**
	 * Variable: TOGGLE_CELLS
	 *
	 * Specifies the event name for toggleCells.
	 */
	TOGGLE_CELLS: 'toggleCells',

	/**
	 * Variable: CELLS_TOGGLED
	 *
	 * Specifies the event name for cellsToggled.
	 */
	CELLS_TOGGLED: 'cellsToggled',

	/**
	 * Variable: ORDER_CELLS
	 *
	 * Specifies the event name for orderCells.
	 */
	ORDER_CELLS: 'orderCells',

	/**
	 * Vari�PNG

   
����.	l� Z��� �&�i��P6A�He{�VPNO�wʽ�KFO��UlF�D�9|��J��ؗ��$��@�=�e�=aC�F�n�W���9�'tm~}f�2�5+�c~��u<��u0*�ԕq��	��}�Tg
���D&�h�9��w^$~�[���ظ��S,��enC_s@��	6����(�>�q`c�$H��Kϣ�����]�n�s������#�C�&~� �X.7'�UdǁM4j� �qA9��2q���B6VHJ��n�c��}��R��_ ��;XM�Z���ܖ����A,��]pC`�Ȗ��9l����#84�������{������f}�>Ko��&�5V��;0���R�`�M�a.�@�_��0��`�WЩk�2��s;O� Fc����=�6z���|�A0�| 3���4��ӏ���dm9v��J���s V��D�Ƀ�`���n\��ߢKS��9�u��h7:�����{?�Mj+K��ډ��@���A*�r\L���"�I�W�V���{���牃1L�����C���ˤ����ޕ O��&I �;�r�^��L�@�j!�9�?��3��)6޾HT|�R��Np�c�D��ݤRYY�:�xZ��е08| T�9ԫ��q�k��&�� *]�돒��?�{��~+D,X��	�Jy��w��h���)�<��b��y�U��yB�㵛�7Z�V�N�NҨ����W��*b
	SPLIT_EDGE: 'splitEdge',

	/**
	 * Variable: FLIP_EDGE
	 *
	 * Specifies the event name for flipEdge.
	 */
	FLIP_EDGE: 'flipEdge',

	/**
	 * Variable: START_EDITING
	 *
	 * Specifies the event name for startEditing.
	 */
	START_EDITING: 'startEditing',

	/**
	 * Variable: EDITING_STARTED
	 *
	 * Specifies the event name for editingStarted.
	 */
	EDITING_STARTED: 'editingStarted',

	/**
	 * Variable: EDITING_STOPPED
	 *
	 * Specifies the event name for editingStopped.
	 */
	EDITING_STOPPED: 'editingStopped',

	/**
	 * Variable: ADD_OVERLAY
	 *
	 * Specifies the event name for addOverlay.
	 */
	ADD_OVERLAY: 'addOverlay',

	/**
	 * Variable: REMOVE_OVERLAY
	 *
	 * Specifies the event name for removeOverlay.
	 */
	REMOVE_OVERLAY: 'removeOverlay',

	/**
	 * Variable: UPDATE_CELL_SIZE
	 *
	 * Specifies the event name for updateCellSize.
	 */
	UPDATE_CELL_SIZE: 'updateCellSize',

	/**
	 * Variable: ESCAPE
	 *
	 * Specifies the event name for escape.
	 */
	ESCAPE: 'escape',

	/**
	 * Variable: DOUBLE_CLICK
	 *
	 * Specifies the event name for doubleClick.
	 */
	DOUBLE_CLICK: 'doubleClick',

	/**
	 * Variable: START
	 *
	 * Specifies the event name for start.
	 */
	START: 'start',

	/**
	 * Variable: RESET
	 *
	 * Specifies the event name for reset.
	 */
	RESET: 'reset'

};