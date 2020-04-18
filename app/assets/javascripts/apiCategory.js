$(function(){
  // 子カテゴリ、孫カテゴリにname属性を指定しないとDBに保存されない
  $('#middleCategory').attr('name', "post[category_id]");
  $('#subSubCategory').attr('name', "post[category_id]");
  //親カテゴリ選択時の挙動
  $('#post_category_id').on('change', apiMainCategory);
  //子カテゴリ選択時の挙動
  $(document).on('change', '#middleCategory', apiSubCategory);
  // 親カテゴリの処理
  function apiMainCategory(){
    $.ajax({
      method: 'Get',
      url: '/api/categories',
      dataType: 'json'
    })
    .done(subCategory)
    .fail(function(){
      console.log('Error');
    })
    // 子カテゴリの生成
    function subCategory(data){
      let selectData = document.getElementById("post_category_id").value
      let ancestryNumber = data.filter(function(post){
        if (post.ancestry === `1/${selectData}`) return true;
      })
      let html = '<option value="---">---</option>';
      ancestryNumber.forEach(
        element => html += (`<option value=${element.id}>${element.name}</option>`)
      )
      $('#middleCategory').css('display', 'block').append(html)
    }
  }
  // 子カテゴリーのAPIの処理
  function apiSubCategory(){
    $.ajax({
      method: 'Get',
      url: '/api/categories',
      dataType: 'json'
    })
    .done(subSubCategory)
    .fail(function(){
      console.log('Error')
    })
    // 孫カテゴリーの生成
    function subSubCategory(data){
      let selectData = document.getElementById("post_category_id").value
      let selectSubData = document.getElementById("middleCategory").value
      console.log("selectSubData");
      let subAncestryNumber = data.filter(function(post){
        if(post.ancestry === `1/${selectData}/${selectSubData}`) return true;
      })
      let html = '<option value="---">---</option>';
      subAncestryNumber.forEach(
        element => html += (`<option value=${element.id}>${element.name}</option>`)
      )
      $('#subSubCategory').css('display', 'block').append(html)
    }
  }
})