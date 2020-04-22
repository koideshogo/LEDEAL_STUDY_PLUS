$(function () {
  var changeSelect = function (id, nextSelect) {
    $.ajax({
      type: 'GET',
      url: '/api/categories',
      data: {keyword: id},
      dataType: 'json'
    })
    .done(function (categories) {
      nextSelect.empty();
      nextSelect.append(`
        <option value="">---</option>
        `);
      categories.forEach(function (category) {
        nextSelect.append(`
        <option value="${category.id}">${category.name}</option>
        `);
      });
    })
    .fail(function () {
      alert('カテゴリの取得に失敗しました');
    });
  }
  
  $('.new_category1 > select').prepend(`
    <option value="" >---</option>
    `).val("");
  
    $('#post_category1').change(function(){
      var id = $(this).val();
  
      if (id === "") {
        $('.category2').css('display', 'none');
        $('.category3').css('display', 'none');
        return;
      }
      $('.category2').css('display', 'block');
      changeSelect(id, $('#post_category2'));
    });
  
    $('#post_category2').change(function(){
      var id = $(this).val();
      if (id === "") {
        $('.category3').css('display', 'none');
        return;
      }
      $('.category3').css('display', 'block');
      changeSelect(id, $('#post_category_id'));
    });
  
    $('#post_category_id').change(function(){
      
      var categorySelect3 = $(this).val();
      var categorySelect1 = $('#post_category1').val();
      if (categorySelect3 !== "" && categorySelect1 <= 3
        ) {
          $('#select_size').css('display', 'block');
        } else {
          $('#select_size').css('display', 'none');
      }
    });
  });