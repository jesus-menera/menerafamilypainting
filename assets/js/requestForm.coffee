---
---
$ ->
    validation_states=
        valid: "has-success"
        error: "has-error"
    valid_data={}
    resetForm = () ->
        $("#fullName").val("")
        $("#fullNameGroup").removeClass(validation_states.valid)
        $("#fullNameGroup span").text("")

        $("#email").val("")
        $("#emailGroup").removeClass(validation_states.valid)
        $("#emailGroup span").text("")

        $("#phoneNum").val("")
        $("#phoneNumGroup").removeClass(validation_states.valid)
        $("#phoneNumGroup span").text("")

        $("#description").val("")
        $("#descriptionGroup").removeClass(validation_states.valid)
        $("#descriptionGroup span").text("")

        $("#city").val("")
        $("#cityGroup").removeClass(validation_states.valid)
        $("#cityGroup span").text("")
        return
    validateFullName = () ->
        $("#fullNameGroup").removeClass(validation_states.error)
        if ! fullNameValidator = validate.single( $("#fullName").val(),{ presence: true } )
            $("#fullNameGroup").addClass(validation_states.valid)
            $("#helpBlockFullName").text("✔")
            valid_data.fullName = $("#fullName").val()
        else
            $("#fullNameGroup").addClass(validation_states.error)
            $("#helpBlockFullName").text(fullNameValidator)
        return fullNameValidator
    validateEmail = () ->
        $("#emailGroup").removeClass(validation_states.error)
        $("#emailGroup").removeClass(validation_states.success)
        if ! emailValidator = validate.single($("#email").val(), { email: true, presence: { allowEmpty: true } } )
            $("#emailGroup").addClass(validation_states.valid)
            $("#helpBlockEmail").text("✔")
            valid_data.email = $("#email").val()
        else
            if $("#email").val() == ""
                console.log('empty')
                $("#emailGroup").removeClass(validation_states.error)
            else
                console.log('non-empty')
                $("#emailGroup").addClass(validation_states.error)
                $("#helpBlockEmail").text(emailValidator)
        return emailValidator
    validatePhone = () ->
        $("#phoneNumGroup").removeClass(validation_states.error)
        if ! phoneValidator = validate.single( $("#phoneNum").val().replace(/[- ]/g,''),{ format: {pattern: /(\d){10,11}/} } )
            $("#phoneNumGroup").addClass(validation_states.valid)
            $("#helpBlockPhoneNum").text("✔")
            valid_data.phoneNum = $("#phoneNum").val()
        else
            $("#phoneNumGroup").addClass(validation_states.error)
            $("#helpBlockPhoneNum").text(phoneValidator)
        return phoneValidator
    validateDescription = () ->
        $("#descriptionGroup").removeClass(validation_states.error)
        if ! descriptionValidator = validate.single( $("#description").val(), { length: { maximum: 140 } } )
            $("#descriptionGroup").addClass(validation_states.valid)
            $("#helpBlockDescription").text("✔")
            valid_data.description = $("#description").val()
        else
            $("#descriptionGroup").addClass(validation_states.error)
            $("#helpBlockDescription").text(descriptionValidator)
        return descriptionValidator
    validateCity = () ->
        $("#cityGroup").removeClass(validation_states.error)
        if ! cityValidator = validate.single( $("#city").val(), { length: { maximum: 50 } } )
            $("#cityGroup").addClass(validation_states.valid)
            $("#helpBlockCity").text("✔")
            valid_data.city = $("#city").val()
        else
            $("#cityGroup").addClass(validation_states.error)
            $("#helpBlockCity").text(cityValidator)
        return cityValidator
    validateForm = (evt) ->
        evt.preventDefault()
        fullname = validateFullName()
        phoneNum = validatePhone()
        email = validateEmail()
        description = validateDescription()
        city = validateCity()
        if  !fullname and !phoneNum and !email and !description and !city
            ###
            console.log( valid_data )
            $("#estimateRequestForm").submit()
            ###
            resetForm()
            $("#requestEstimateBtn").button('saving')
            $.ajax({
                url:"{{site.data.function.action.name}}",
                data: valid_data,
                success: (res) ->
                    resetForm()
                    $("#customerName").text(valid_data.fullName)
                    $("#refNum").text(res.success)
                    $("#serverReceipt").css("display","block")
                    $("#requestEstimateBtn").button('reset')
            })
        
        ###
            issue: class has-success remains even with emoty string.
        ###
        return 
        
        
        
    $("#requestEstimateBtn").on("click", validateForm)
    return