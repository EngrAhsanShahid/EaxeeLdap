�PNG

   IHDR           szz�  IIDATx��}L�u�H���[�?��Q��|@�w':���͔��B+�������I�Nb�v�a
� ��X`��@��;����w��~܏~�\����1������|�H��'�'M�)\)�W2�a*�Z����{��U��{I�o��eDe�g���psA�q����.�(�)�E�.���x2C�Յ^"m�sa
fb[Qܔ Mr�f,< g#T�.tp嚥�B�G��Vn	��7A~��N(�Ia
�k�Z�{U�
�i0y/	�,�^�P2�f��&�l;�=�*���%|�j��o~�q]
*�PTӂ�kzT�p�ٌF�mƻ���QD(�<�`��Л���I^��Ȫ.]����x-�E�8���&%��q7y8������Fy�ɥ�_�ue�� ��'~�E��>5ZQ�ԏ���������(Z�.$�;����ؐ�,�2�����$�y� @��%�Y�u��}F�V��Qm/2� �ΊS��p�q _7B�:�
�~�E�с��ǐPx�%^�R�GTV��26�{���Ĭ;����k�
��GI���kdX�Y�b�]���m�3)d�ҤX��xJ�i�J�W� +o;.j�(;�hZJ��	t��.�7`zI�Ɓ���@�h��+�n�1r��2�saC���%���o'�� �������K$X�:����*���	$뎢��� ?WT�����
�A�$�y8������_�ݶ!ؽ���I��������
�?�4B�> 7�'���ӫ/,)�Z��%���\Q�s'w�f.��X`�d����v#�v7#p���~����ܷA3[�&A�V���_^~S����h����s�?WT�t�;�i�G������Ы��dC��z��[�d�k���
|��.h��;��%� ����CͭNT6�Qo�ex��7%��8��n������G|�;�tN��A�4Z�b��ΐ=H��+*p,3	4��n��Ý���n���fw��������+*���$�̥w��ӥ�{��O۾����Y�8��g{��:[ T����ΟOX���O    IEND�B`�                                                                                                                                                                                                                                                                                                                                                                                              'cancel') || 'Cancel');
	td.appendChild(button);
	
	mxEvent.addListener(button, 'click', function()
	{
		cancelFunct();
	});
	
	tr.appendChild(td);
	this.body.appendChild(tr);
};

/**
 * Function: addText
 * 
 * Adds an input for the given name, type and value and returns it.
 */
mxForm.prototype.addText = function(name, value, type)
{
	var input = document.createElement('input');
	
	input.setAttribute('type', type || 'text');
	input.value = value;
	
	return this.addField(name, input);
};

/**
 * Function: addCheckbox
 * 
 * Adds a checkbox for the given name and value and returns the textfield.
 */
mxForm.prototype.addCheckbox = function(name, value)
{
	var input = document.createElement('input');
	
	input.setAttribute('type', 'checkbox');
	this.addField(name, input);

	// IE can only change the checked value if the input is inside the DOM
	if (value)
	{
		input.checked = true;
	}

	return input;
};

/**
 * Function: addTextarea
 * 
 * Adds a textarea for the given name and value and returns the textarea.
 */
mxForm.prototype.addTextarea = function(name, value, rows)
{
	var input = document.createElement('textarea');
	
	if (mxClient.IS_NS)
	{
		rows--;
	}
	
	input.setAttribute('rows', rows || 2);
	input.value = value;
	
	return this.addField(name, input);
};

/**
 * Function: addCombo
 * 
 * Adds a combo for the given name and returns the combo.
 */
mxForm.prototype.addCombo = function(name, isMultiSelect, size)
{
	var select = document.createElement('select');
	
	if (size != null)
	{
		select.setAttribute('size', size);
	}
	
	if (isMultiSelect)
	{
		select.setAttribute('multiple', 'true');
	}
	
	return this.addField(name, select);
};

/**
 * Function: addOption
 * 
 * Adds an option for the given label to the specified combo.
 */
mxForm.prototype.addOption = function(combo, label, value, isSelected)
{
	var option = document.createElement('option');
	
	mxUtils.writeln(option, label);
	option.setAttribute('value', value);
	
	if (isSelected)
	{
		option.setAttribute('selected', isSelected);
	}
	
	combo.appendChild(option);
};

/**
 * Function: addField
 * 
 * Adds a new row with the name and the input field in two columns and
 * returns the given input.
 */
mxForm.prototype.addField = function(name, input)
{
	var tr = document.createElement('tr');
	var td = document.createElement('td');
	mxUtils.write(td, name);
	tr.appendChild(td);
	
	td = document.createElement('td');
	td.appendChild(input);
	tr.appendChild(td);
	this.body.appendChild(tr);
	
	return input;
};
