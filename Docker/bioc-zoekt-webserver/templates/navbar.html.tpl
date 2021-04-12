<nav class="navbar navbar-expand-lg mb-3 py-0">
  <div class="container">
    <a class="navbar-brand flex-grow-1" href="/">
      <img class="brand-square" src="https://www.huber.embl.de/users/msmith/bioconductor_code_square.png" alt="Bioconductor Code Logo" title="Bioconductor Code Tools">
    </a>
    <div class="flex-grow-1 d-flex w-100">
      <form class="form-inline flex-nowrap w-100 m-0 mx-lg-auto rounded p-1">
        <input class="flex-grow-1 form-control mr-sm-2" type="search" 
        id="navsearchbox" type="text" name="q" autofocus
        {{if .Query}}
        value={{.Query}}
        {{end}}>
        <button class="btn btn-success" type="submit">Search</button>
        <button class="btn btn-success p-0 ml-2" type="button" data-toggle="collapse" data-target="#searchExamples" aria-controls="searchExamples" aria-expanded="false" aria-label="Toggle search examples">
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" role="img" focusable="false"><title>Menu</title><path stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M4 7h22M4 15h22M4 23h22"></path></svg>
        </button>
      </form>
    </div>
  </div>
</nav>

    <div class="row collapse" id="searchExamples">
          {{template "searchExamples"}}
    </div>

<script>
  document.onkeydown=function(e){
    var e = e || window.event;
    if (e.key == "/") {
      var navbox = document.getElementById("navsearchbox");
      if (document.activeElement !== navbox) {
        navbox.focus();
        return false;
      }
    }
  };
</script>
