$(function () {
    // ラジオボタンを選択変更したら実行
    $('input[name="fruit"]').change(function () {

        // value値取得
        var val = $(this).val();
        console.log(val);
        // ajax
        $.ajax({
            type: 'GET',
            url: '/fruits/content',
            data: {
                fruit: {
                    id: val
                }
            },
            dataType: 'text'  //json形式指定
        })
            .done(function (data) {
                $('#content').text(data)
                console.log(data);
            })
            .fail(function (jqXHR, textStatus, errorThrown) {
                // 通信失敗時の処理
                alert('ファイルの取得に失敗しました。');
                console.log("ajax通信に失敗しました");
                console.log("jqXHR                : " + jqXHR.status); // HTTPステータスが取得
                console.log("textStatus           : " + textStatus);    // タイムアウト、パースエラー
                console.log("errorThrown          : " + errorThrown.message); // 例外情報
            });
    });
});