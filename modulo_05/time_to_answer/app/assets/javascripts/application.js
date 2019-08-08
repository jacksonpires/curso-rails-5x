// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require trix
//= require rails-ujs
//= require activestorage


document.addEventListener('trix-attachment-add', function (event) {
  var file = event.attachment.file;
  if (file) {
    var upload = new window.ActiveStorage.DirectUpload(file,'/rails/active_storage/direct_uploads', window);
    upload.create((error, attributes) => {
      if (error) {
        return false;
      } else {        
        return event.attachment.setAttributes({
          url: `/rails/active_storage/blobs/${attributes.signed_id}/${attributes.filename}`,
          href: `/rails/active_storage/blobs/${attributes.signed_id}/${attributes.filename}`,
        });
      }
    });
  }
});

