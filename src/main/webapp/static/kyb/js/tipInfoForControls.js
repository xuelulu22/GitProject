/*
-------------------------------------------------------------------------------
Author:  LDH
Date:  2016-1-29
Remark:【悬浮文本提示】text,textArea,DropDownList
-------------------------------------------------------------------------------
*/

$(function() {
    textTitle();
});

//----------------------------------------------
//TODO:[TooTip] text,textArea,DropDownList
//     Added By LDH
//----------------------------------------------
function textTitle() {
    //Text
    $('input[type="text"]').each(function () {
        var contentLength = getStrActualLen($(this));
        var textBoxLength = $(this).width();

        //When the content's length of the textBox is less than the content in the textBox,
        //we give you a tooltip information to let you know the information clearly.
        if (contentLength > textBoxLength) {
            $(this).attr('title', $(this).val());
        }
    });

    //TextArea
    $('textarea').each(function () {
        //When the content's length of the textArea is less than the content in the textArea,
        //we give you a tooltip information to let you know the information clearly.
        var contentLength = getStrActualLen($(this));
        var textAreaLength = $(this).width();

        if (contentLength > textAreaLength) {
            $(this).attr('title', $(this).val());
        }
        $(this).attr('title', $(this).val());
    });

    //DropDownList
    showDropDownListItem();
}

//Get the real length of the string.
function getStrActualLen(obj) {
    var count = obj.val().length / 1024;
    return Math.round(count * Math.pow(10, 4));
}

//Add Title For All DropDownList.
function showDropDownListItem() {
    var myDropDownList = document.getElementsByTagName('select');

    for (var i = 0; i < myDropDownList.length; i++) {
        showItem(myDropDownList[i]);
    }
}

//When your mouse over the dropDownList,it'll show its text.
function showItem(obj) {
    for (var i = 0; i < obj.length; i++) {
        obj.options[i].title = obj.options[i].text;
    }
}
