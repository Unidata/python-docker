function top_level_mods() {
  $('body').append('<div id="footer" />');
}

define([
    'base/js/events'
], function(events) {
    events.on('app_initialized.DashboardApp', function(){
      top_level_mods();
      $('div#ipython-main-app').prepend('<div id="notice" >');
      $('#notice').html('This is a proof-of-concept demonstration server.<br>You can also test <a href="/lab">JupyterLab</a>.');
    });
  });

$([Jupyter.events]).on('app_initialized.NotebookApp', function() {
  top_level_mods();
});

console.log('Loaded Unidata theming.');
