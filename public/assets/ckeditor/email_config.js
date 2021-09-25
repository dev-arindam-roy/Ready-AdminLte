/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */
CKEDITOR.addCss('.cke_editable { margin: 15px; }');

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.extraPlugins = 'wordcount';
	config.allowedContent = true;
	config.extraAllowedContent = 'div(*)';
	config.autoParagraph = false;
	config.ignoreEmptyParagraph = false;
	config.FillEmptyBlocks = false;
	CKEDITOR.dtd.$removeEmpty.i = 0;
    config.FormatOutput = false;
	config.width = '100%'; 
	config.height = 300;
	config.resize_enabled = false;
	config.wordcount = {
		showWordCount: true,
    	showCharCount : true
  	};
  	config.enterMode = CKEDITOR.ENTER_BR;

  	config.toolbarGroups = [
    	{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
    	{ name: 'styles', groups: [ 'styles' ] },
    	{ name: 'colors', groups: [ 'colors' ] },
    	{ name: 'insert', groups: [ 'insert' ] },
    	{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
    	{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
    	{ name: 'tools', groups: [ 'tools' ] },
  	];

  	config.removeButtons = 'Save,NewPage,Templates,Print,Cut,Copy,Paste,PasteText,PasteFromWord,SelectAll,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Subscript,Superscript,Language,Anchor,Flash,Iframe,About,Find,Replace,Scayt,Blockquote,CreateDiv,Outdent,Indent,BidiLtr,BidiRtl,Smiley,SpecialChar,PageBreak,CopyFormatting,RemoveFormat,ShowBlocks,Strike';
};
