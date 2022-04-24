var generalData
$(document).ready(function(){
    window.addEventListener('message', function(event){
        generalData = event.data.data;
        switch (event.data.action) {
            case "openUI":
                if (event.data.data) {
                    if (event.data.login) {
                        $.each(event.data.data, function(index, value) {
                            if (localStorage.getItem(index)) {
                                var activeOrPassive = localStorage.getItem(index);
                                lsLoader(index, activeOrPassive);
                            } else {
                                activeOrPassive = "passive"
                            }
                            $(".form").append(`<li onclick="blipFunc('${index}')"><a id="${index}" class="${activeOrPassive}"><i class="${value.icon}"></i><span class="title-blip"> ${value.name}</span></a></li>`);
                        });
                        $(".form").append('<div id="sil"></div>')
                        $('body').show();
                        nuiStatus(true);
                    } else {
                        $('body').show();
                        nuiStatus(true);
                    }                    
                } else {
                    nuiStatus(false);
                }
                break;
            case "closeUI":
                nuiStatus(false);
                break;
            case "setupLS":
                if (event.data.status) {
                    $.each(event.data.data, function(index, value) {
                        if (localStorage.getItem(index)) {
                            var activeOrPassive = localStorage.getItem(index);
                            lsLoader(index, activeOrPassive);
                        } else {
                            lsLoader(index, "active");
                            localStorage.setItem(index, "active");
                        }
                    });
                } else {
                    $.each(event.data.data, function(index, value) {
                        if (localStorage.getItem(index)) {
                            var activeOrPassive = localStorage.getItem(index);
                            lsLoader(index, activeOrPassive);
                        }
                    });
                }
                break;
        }
    });
});

var locked = false;
function blipFunc(id) {
    if(!locked) {
        if($('#'+id).hasClass("passive")) {
            $("#"+id).removeClass("passive").addClass("active");
            var blipData = {
                blipStatus: "active",
                blipID: id
            }
            localStorage.setItem(id, "active");
            $.post('https://cs-blipMenu/setupBlip', JSON.stringify({data: blipData}))
        } else if ($('#'+id).hasClass("active")) {
            $("#"+id).removeClass("active").addClass("passive");
            var blipData = {
                blipStatus: "passive",
                blipID: id
            }
            localStorage.setItem(id, "passive");
            $.post('https://cs-blipMenu/setupBlip', JSON.stringify({data: blipData}))
        }
        locked = true;
        setTimeout(unlock, 500);
    } else {
        if(!$('#warningSlayt').hasClass("showWarning")) {
            $("#sil").append(`<li id="warningSlayt" class="showWarning"> <a class="logout"> <i class="fas fa-exclamation-triangle"></i><span class="title-blip">${config.warningText}</span><i class="fas fa-exclamation-triangle"></i></a></li>`);
            $( "#warningSlayt" ).slideDown("slow", function() {
                $('#warningSlayt').fadeOut(500);
                $('#warningSlayt').fadeIn(500);
                $('#warningSlayt').fadeOut(500);
                $('#warningSlayt').fadeIn(500);
            });
            setTimeout(function() {          
                $('#sil').empty();
            },2000);  
        }
    }
}

function lsLoader(id, status) {
    if (id && status == "active") {
        var blipData = {
            blipStatus: "active",
            blipID: id
        }
        $.post('https://cs-blipMenu/setupBlip', JSON.stringify({data: blipData}))
    }
}

function unlock () {
    locked = false;
}

$(document).on('keydown', function(e) {
    switch(e.key) {
        case "Escape":
            nuiStatus(false);
            break;
    }
});

function nuiStatus(status) {
    if(status){
        $(".form").show();
        $(".form").hide().slideToggle("slow");
    }
    if(!status){
        $.post('https://cs-blipMenu/closeBlipMenu', JSON.stringify({}))         
        $('.form').hide('slide', {direction: 'up'}, 1000);
        setTimeout(function() {          
            $("body").hide();
        },1000);         
    }
}
