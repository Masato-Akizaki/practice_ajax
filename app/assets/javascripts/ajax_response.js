// Ajax: form送信はRails、受信以降はJS
$( () => {
  $('#ajax-request-3').on('ajax:success', (e) => {
    const result = $('#ajax-test3');
    result.text(e.detail[0]);
  });
});