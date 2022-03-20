$(document).ready(function() {
  $('.search-box').select2();

  $('.search-box').on("select2:select", function (e) {
    window.open(e.params.data.id);
    window.location.search += ('&selected=' + e.params.data.text);
  });
});

$(document).on('select2:open', () => {
  document.querySelector('.select2-search__field').focus();
});
