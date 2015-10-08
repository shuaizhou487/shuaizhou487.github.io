$(function () 
{
    $(".resizable1").resizable(
    {
        autoHide: true,
        containment:".splitter",
        handles: 'e',
        resize: function(e, ui) 
        {
            var parent = ui.element.parent();
            var remainingSpace = parent.width() - ui.element.outerWidth(),
                divTwo = ui.element.next(),
                divTwoWidth = (remainingSpace - (divTwo.outerWidth() - divTwo.width()))/parent.width()*100+"%";
                divTwo.width(divTwoWidth);
        },
        stop: function(e, ui) 
        {
            var parent = ui.element.parent();
            ui.element.css(
            {
                width: ui.element.width()/parent.width()*100+"%",
            });
        }
    });
});