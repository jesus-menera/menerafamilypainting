---
layout: contactinfo
title: Contact Information
permalink: /contact/
---
<div class="container-fluid request-info">
  <div class="row">
    <div class="col-md-offset-3 col-md-2">Phone:</div>
    <div class="col-md-4"><strong>209-324-7490</strong></div>
  </div>
  <div class="row">
    <div class="col-md-offset-3 col-md-2">Email:</div>
    <div class="col-md-4"><strong>menerapainting@gmail.com</strong></div>
  </div>
  <div class="row">
    <div class="col-md-offset-3 col-md-2">Request Form:</div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-body">
          <form id="estimateRequestForm" class="form-horizontal" action="#" method="get">
              <div class="form-group" id="fullNameGroup">
                <label for="fullName" class="col-sm-3 control-label">Full Name:</label>
                <div class="col-sm-8">
                  <input id="fullName" type="text" class="form-control" name="fullName" placeholder="" aria-describedby="helpBlockFullName"> 
                </div>
                <span id="helpBlockFullName" class="help-block"></span>
              </div>
              <div class="form-group" id="phoneNumGroup">
                <label for="phoneNum" class="col-sm-3 control-label">Phone Number:</label>
                <div class="col-sm-8">
                  <input id="phoneNum" type="text" class="form-control" name="phoneNum" placeholder="XXX-XXX-XXXX"> 
                </div>
                <span id="helpBlockPhoneNum" class="help-block"></span>
              </div>
              <div class="form-group" id="emailGroup">
                <label for="email" class="col-sm-3 control-label">Email:</label>
                <div class="col-sm-8">
                  <input id="email" type="email" class="form-control" name="email" placeholder="">
                </div>
                <span id="helpBlockEmail" class="help-block"></span>
              </div>
              <div class="form-group" id="cityGroup">
                <label for="city" class="col-sm-3 control-label">City:</label>
                <div class="col-sm-8">
                  <input id="city" type="text" class="form-control" name="city" placeholder="">
                </div>
                <span id="helpBlockCity" class="help-block"></span>
              </div>
              <div class="form-group" id="descriptionGroup">
                <label for="description" class="col-sm-3 control-label">Description:</label>
                <div class="col-sm-8">
                  <textarea id="description" name="description" class="form-control" rows="3" placeholder="A brief description of we need to paint.">
                  </textarea>
                </div>
                <span id="helpBlockDescription" class="help-block"></span>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-3 col-sm-4">
                  <button id="requestEstimateBtn" type="submit" class="btn btn-default" data-saving-text="Saving...">Submit</button>
                </div>
              </div>
            </form>
            <div id="serverReceipt" class="alert alert-success alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <strong>Success!</strong> <span id="customerName">Awesome Client</span>, thank you very much for your consideration. We have your information and we will be contacting you very soon. We are looking forward to working with you.
              <br><br>
              Keep this number for future references:<br> <strong id='refNum'>89874982947</strong>  
              <br><br>
              <a>Click here to return to the Home Page.</a>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>