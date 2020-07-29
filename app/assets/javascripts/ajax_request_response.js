$(document).ready( () => {
  $('#btn2').on('click', (e) => {
    e.preventDefault();

    const param = $('#static_ajax_data2').val();

    // CSRFトークンを取得＆セット
    $.ajaxPrefilter( (options, originalOptions, jqXHR) => {
        if (!options.crossDomain) {
          const token = $('meta[name="csrf-token"]').attr('content');
          if (token) {
               return jqXHR.setRequestHeader('X-CSRF-Token', token);
           }
        }
    });

   $.ajax({
      url: `/static/ajax_update2`,
      type: 'POST',
      data: {
        data: param
      }
    })
    .done( (data, textStatus, jqXHR) => {
      var result = $('#ajax-test4');
      result.text(data);
    });
  });
});