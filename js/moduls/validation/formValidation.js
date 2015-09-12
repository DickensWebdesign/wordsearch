function FormValidation() {

    // constants
    var AJAX_ROOT = "http://www.wordsearch-game.com/php/ajax/";

    // vars
    var statusBox = $(".input-status");
    var errorBox = $(".form-error");
    var infoBox = $("#info-cloud-wrapper");
    var inputFields = ["textarea", "select", "input[type='text']", "input[type='hidden']", "input[type='email']", "input[type='password']", "input[type='checkbox']"];
    var errorFields = [];
    var repeater = [];
    var unequals = [];
    var outputName;
    var Deactivater = [];
    var currentForm;
    var currentFormName;
    var currentFields = {"textarea": [], "select": [], "input[type='text']": [], "input[type='hidden']": [], "input[type='email']":[], "input[type='password']":[], "input[type='checkbox']":[]};
    var fieldValues = {};
    var fieldname;
    var type;
    var id;
    var length;
    var self = this;

    // lengths
    var minLengthShortText = 3;
    var minLengthNormalText = 6;
    var maxLengthLongText = 2000;

    // CHECKING FUNCTIONS
    // check text inputs
    this.checkTextInput = function(minLength) {
        length = $("#"+id).val().length;
        if(length < minLength) {
            self.errorHandler(length, minLength);
        } else {
            self.validOutput();
            return true;
        }
        return false;
     };

    // check textarea
    this.checkLongText = function() {
        var message = $("#"+id).val().length;
        var maxChar = maxLengthLongText - message;
        if (message == 0) {
            maxChar = maxLengthLongText;
            return false;
        }
        $('#form-counter').text('Available signs:' + maxChar);
        return true;
    };

    //check email
     this.checkMail = function() {
         var email = new RegExp(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
         var val = $("#"+id).val();
         if(val.match(email)) {
             self.validOutput();
             return true;
         }
         self.errorHandler();
         return false;
     };

    // check checkboxes
    this.checkCheckbox = function() {
        if($("#"+id).is(':checked')) {
            self.validOutput(1);
            return true;
        }
        self.validOutput(0);
        return true;
    };

    // validateInputs - initiator
    this.validateInput = function() {
        var valid = true;
        self.showInfo(true);
        switch (type) {
            case "email":
                self.showInfo(true);
                valid = self.checkMail();
                break;
            case "text":
                self.showInfo(true);
                (id.indexOf("playername") >= 0) ? valid = self.checkTextInput(minLengthShortText) : valid = self.checkTextInput(minLengthNormalText);
                break;
            case "password":
                self.showInfo(false);
                valid = self.checkTextInput(minLengthNormalText);
                break;
            case "textarea":
                self.showInfo(false);
                valid = self.checkLongText();
                break;
            case "checkbox":
                self.showInfo(false);
                valid = self.checkCheckbox();
                break;
        }
        return valid;
    };

    // // VALIDATION OUTPUT
    // show info to user
    this.showInfo = function(flag) {
        (flag === true) ? infoBox.css({display: "block"}) : infoBox.css({display: "none"});
    };

    //OUTPUT HANDLER
    // VALID INPUT HANDLER
    this.validOutput = function(checked) {
        if(type == "checkbox") {
            var checkVal = "not checked";
            if(checked == 1) {
                checkVal = "checked";
            }
            statusBox.html("<p>" + outputName + "</p><p class='form-valid-input'>" + outputName + " is " + checkVal + "!</p>");
        } else {
            statusBox.html("<p>" + outputName + "</p><p class='form-valid-input'>Valid " + outputName + "!</p>");
        }
    };

    // // ERROR FUNCTIONS
    // error handler
    this.errorHandler = function(length, minLength) {
        outputName = fieldname.replace("_", " ");
        switch(type) {
            case "email":
                self.throwEmailError();
                break;
            case "text":
                self.throwTextError(length, minLength);
                break;
            case "password":
                self.throwTextError(length, minLength);
                break;
        }
    };

    // push error
    this.pushError = function() {
        errorFields.push(fieldname);
    };

    // throw text error
    this.throwTextError = function(length, minLength) {
        var toGo = minLength - length;

        if (length == 0) {
            statusBox.html("<p>" + outputName + "</p><p class='form-invalid-input'>" + outputName + " requires<br />minimum " + minLength + " signs!</p>");
        } else {
            statusBox.html("<p>" + outputName + "</p><p class='form-invalid-input'>Please add " + toGo + "  signs!</p>");
        }
    };

    // throw mail error
    this.throwEmailError = function() {
        if (length == 0) {
            statusBox.html("<p>" + outputName + "</p><p class='form-invalid-input'>Please enter a valid email adress!</p>");
        } else {
            statusBox.html("<p>" + outputName + "</p><p class='form-invalid-input'>Invalid email adress!</p>");
        }
    };

    // error after submit
    this.throwEmptyError = function() {
        var verb = " is";
        var lastElement;
        var stringPart = "";
        var string = "";
        if (errorFields.length > 1) {
            $.each(errorFields, function(index, value) {
                errorFields[index] = value.replace("_", " ");
                if (index > 0) {
                    errorFields[index] = value.toLowerCase();
                }
            });
            lastElement = errorFields[errorFields.length - 1];
            errorFields.pop();
            verb = " are";
            (errorFields.length > 1) ? stringPart = errorFields.join(", ") : stringPart = errorFields;
            string = stringPart + " and " + lastElement;
        } else {
                string = errorFields.replace("_", " ");
        }
        errorBox.html(string + verb +" not correct!");
        errorFields = [];
    };


    // // FORM/INPUT FIELD HANDLER
    // destroy data after submit
    this.destroyData = function() {
        currentFields = {"textarea": [], "select": [], "input[type='text']": [], "input[type='hidden']": [], "input[type='email']":[], "input[type='password']":[], "input[type='checkbox']":[]};
        errorFields = [];
        unequals = [];
        repeater = [];
        fieldValues = {};
    };

    // set unique namefield from id
    this.setNameField = function() {
        var field = id;
        if(id.indexOf("-") >= 1) {
            field = id.split("-");
            field = field.shift();
        }
        fieldname = field.charAt(0).toUpperCase() + field.slice(1);
    };

    // getting all inputs fields
    this.getFormFields = function() {
    for (var i = 0; i < inputFields.length; i++) {
            var x = inputFields[i];
            var fields = currentForm.find(x);
            if (fields.length == 1) {
                currentFields[x][0] = fields;
            }
            if (fields.length > 1) {
                for (var index2 = 0; index2 < fields.length; index2++) {
                    currentFields[x][index2] = fields[index2];
                }
            }
        }
    };

    // EQUALITY HANDLER
    // set fields for equalization
    this.setEqualization = function() {
        var that = $("#"+id);
        if(that.hasClass("unequal")) { unequals.push(fieldname); }
        if(that.hasClass("repeater")) { repeater.push(fieldname); }
    };

    // Unequality check
    this.validateUnequals = function() {
        return fieldValues[unequals[0]] !== fieldValues[unequals[1]];
    };

    this.throwUnequalError = function() {
        $.each(unequals, function(index, value) {
            unequals[index] = value.replace("_", " ");
        });
        errorBox.html(unequals[0] +" and " + unequals[1].toLowerCase() + " are equal!");
    };


    this.validateRepeater = function() {
        return fieldValues[repeater[0]] === fieldValues[repeater[1]];
    };

    this.throwRepeaterError = function() {
        $.each(repeater, function(index, value) {
            repeater[index] = value.replace("_", " ");

        });
        errorBox.html(repeater[0] +" and " + repeater[1].toLowerCase() + " are not equal!");
    };

    $(document).on("click", ".ajax-single", function(e) {
        e.preventDefault();
        currentFormName = $(this).attr("class").split(" ").shift();
        if($(this).hasClass("value")) {
            var value = $("#"+currentFormName+"-value").children().text();
            (value === "active") ? value = false : value = true;
            fieldValues["value"] = value;
        }
        self.processValues();
    });


    // AJAX HANDLER
    // process input values
    this.processValues = function() {
        var url = AJAX_ROOT + currentFormName + ".php";
        $.ajax ({
            type: "POST",
            url: url,
            data: fieldValues,
            success: function(data) {
                self.successHandler(data);
            }
        }).done(function(){
            setTimeout(function() { self.doneHandler(); }, 200 );
        });
        return false;
    };

    // ajax success
    this.successHandler = function(data) {
        var replaced = false;
        var replacer = $("#replace-"+currentFormName);
        if(replacer.length > 0 ) {
            replacer.replaceWith(data);
            replaced = true;
        }
        replacer = null;
        var status = $("#" + currentFormName.replace("-delete", "") + "-statusbox");
        if (status.length > 0) {
            status.html("(saved)").animate({opacity: 1.0}, "slow");
            setTimeout(function () {
                status.animate({opacity: 0}, "slow").delay(1000).html("&nbsp;");
            }, 8000);
            if (data !== null && replaced === false) {
                $("body").append(data);
            }
        }
    };

    function Deactivation (trigger) {
        var self = this;
        this.deactivateFastSubmit = function () {
            var idF = currentFormName;
            var submitter = $("." + idF + ".ajax-single");
            submitter.removeClass("ajax-single").css({opacity: 0.5});
            var submitterText = submitter.text();
            var countdown = $("#countdown-" + idF);
            var dTime = time = countdown.val();
            countdown.remove();
            var deactivatedFast = setInterval(function () {
                dTime--;
                submitter.text(dTime);
                if (dTime == 0) {
                    submitter.addClass('ajax-single').removeAttr("style").text(submitterText);
                    clearInterval(deactivatedFast);
                }
            }, 1000);
        };

        // AJAX done actions
        this.deactivateSubmit = function () {
            var idF = currentFormName;
            var dTime = time = $("#countdown-" + idF).text();
            $("#submit-" + idF).attr('disabled', true);
            var deactivated = setInterval(function () {
                dTime--;
                $("#countdown-" + idF).text(dTime);
                if (dTime == time - 10) {
                    $("#success-green-" + idF).hide("slow").replaceWith('<p class="form-error">&nbsp;</p>');
                }
                if (dTime == 0) {
                    $("#success-" + idF).fadeOut("slow", function () {
                        $(this).remove();
                    });
                    $("#submit-" + idF).removeAttr('disabled');
                    clearInterval(deactivated);
                }
            }, 1000);
        };
        (trigger === "submit") ? self.deactivateSubmit() : self.deactivateFastSubmit();
    }

    // ajax done
    this.doneHandler = function() {
        if ($("#submit-"+currentFormName).length > 0) {
            Deactivater.push(new Deactivation("submit"));
        } else {
            Deactivater.push(new Deactivation("direct"));
        }
        var returnVal = $("#success-value-" + currentFormName);
        if (returnVal.length > 0) {
            if (returnVal.val().indexOf("picture") >= 0) {
                var val = returnVal.val().split("-").shift();
                var imgs = $("img");
                var user = $("#user-name").text();
                if (val == "true") {
                    $("#menu-change").removeClass("hidden");
                } else {
                    $("#menu-change").addClass("hidden");
                }
                $.each(imgs, function (index) {
                    var src = imgs[index].src;
                    if (val == "true") {
                        $("#menu-change").removeClass("hidden");
                        var rand = new Date().getTime();
                        if (imgs[index].src.indexOf(user + ".jpg") >= 0) {
                            src = src.replace(user + ".jpg", user + ".jpg?" + rand);
                        }
                        if (imgs[index].src.indexOf(user + "-small.jpg") >= 0) {
                            src = src.replace(user + "-small.jpg", user + "-small.jpg?" + rand);
                        }
                        if (imgs[index].src.indexOf("guest-small.jpg") >= 0) {
                            src = src.replace("guest-small.jpg", user + "-small.jpg");
                        }
                        if (imgs[index].src.indexOf("guest.jpg") >= 0) {
                            src = src.replace("guest.jpg", user + ".jpg");
                        }
                    } else {
                        $("#success-value-" + currentFormName).remove();
                        if (imgs[index].src.indexOf(user + ".jpg") >= 0) {
                            src = src.replace(user + ".jpg", "guest.jpg");
                        }
                        if (imgs[index].src.indexOf(user + "-small.jpg") >= 0) {
                            src = src.replace(user + "-small.jpg", "guest-small.jpg");
                        }
                    }
                    imgs[index].src = src;
                });
            } else {
                if (returnVal.length > 0) {
                    var val1 = returnVal.val().split("-").shift();
                    var color = returnVal.val().split("-").pop();
                    $("#success-value-" + currentFormName).remove();
                    var state = $("#" + currentFormName.replace("-delete", "") + "-value").children();
                    state.removeAttr("class").addClass(color + "-color").text(val1);

                }
            }
        }
        self.destroyData();
    };

    $(document).ajaxError(function() {
        self.destroyData();
    });

    // // INIT
    // initiator
    $("input[type='text'], input[type='password'], input[type='email'], textarea").on("focus keyup", function () {
        id = $(this).attr('id');
        self.setNameField();
        type = $(this).attr('type');
        if($(this).is("textarea")) {
            type = "textarea";
        }

        self.validateInput();
    });

    // on picture upload
    $("#settings-avatar").on('submit', function(e) {
        e.preventDefault();
        currentFormName = "settings-avatar";
        var url = AJAX_ROOT + currentFormName + ".php";
        if ($("#file").val() !== '') {
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData(this),
                contentType: false,
                processData: false,
                success: function (data) {
                    self.successHandler(data);
                },
            }).done(function () {
                    self.doneHandler();
            });
        } else {
            errorBox.html("Please select a picture!");
        }
    });

    // on submit
    $("form").on( "submit", function(e) {
        e.preventDefault();
        currentForm = $(this);
        currentFormName = $(this).attr('id');
        if(currentFormName !== "settings-avatar") {
            self.getFormFields();
            var valid = true;
            $.each(currentFields, function (index, value) {
                if (currentFields[index].length == 1) {
                    id = currentFields[index][0].attr("id");
                    self.setNameField();
                    self.setEqualization();
                    type = currentFields[index][0].attr("type");
                    if (currentFields[index] == "textarea") {
                        type = "textarea";
                    }
                    valid = self.validateInput();
                    if (valid === true) {
                        (type === "checkbox") ? fieldValues[fieldname] = $('#' + id).is(':checked') : fieldValues[fieldname] = $('#' + id).val();
                    } else {
                        self.pushError();
                    }
                    valid = true;
                }
                if (currentFields[index].length > 1) {
                    for (var i = 0; i < currentFields[index].length; i++) {
                        id = currentFields[index][i].id;
                        self.setNameField();
                        self.setEqualization();
                        type = currentFields[index][i].typeName;
                        if (currentFields[index][i] == "textarea") {
                            type = "textarea";
                        }
                        valid = self.validateInput();
                        if (valid === true) {
                            (type === "checkbox") ? fieldValues[fieldname] = $('#' + id).is(':checked') : fieldValues[fieldname] = $('#' + id).val();
                        } else {
                            self.pushError();
                        }
                    }
                }
            });
            if (errorFields.length > 0) {
                valid = false;
                self.throwEmptyError();
                self.destroyData();
                return false;
            } else {
                if (unequals.length > 1) {
                    valid = self.validateUnequals();
                    if (valid === false) {
                        self.throwUnequalError();
                        self.destroyData();
                        return false;
                    }
                }
                if (repeater.length > 1) {
                    valid = self.validateRepeater();
                    if (valid === false) {
                        self.throwRepeaterError();
                        self.destroyData();
                        return false;
                    }
                }
            }
            self.showInfo(false);
            self.processValues();
            return true;
        }
    });
}