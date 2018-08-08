<app>
  <p>
    Test
  </p>
  <button type="button" name="button">COMPOSE</button>
  <div class="list">
    <item each { journalList }></item>

  </div>

  <text-editor></text-editor>

  <script>
    this.journalList = [{}]
  </script>


  <style>
    :scope {
      display: block;
      border: 1px solid orange;
      padding: 10px;
      position: fixed;
      height: 100%;
      width: 100%;
    }
    .list {
      margin-top: 15px;
    }
  </style>

</app>
