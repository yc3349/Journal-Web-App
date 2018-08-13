<app>
  <p>
    <i class="fa fa-bars" style="font-size:36px"></i>
  </p>

  <button type="button" name="button" onclick={ toggleEditor }>Start Journaling</button>


  <div class="list">

    <item each={ journalList }></item>

  </div>

  <text-editor if={ creatingJournal }></text-editor>



  <script>

    var that = this;

    this.creatingJournal = false;


    this.toggleEditor = function(event){
      this.creatingJournal = true;
    };

    this.closeEditor = function(event){
      that.creatingJournal = false;
      that.update();
    };

    this.journalList = [{
      title: "this is awesome",
      date: "August 12",
      content: "I really love the tutorial."
    },{
      title: "this is awesome",
      date: "August 12",
      content: "I really love the tutorial."
    },{
      title: "this is awesome",
      date: "August 12",
      content: "I really love the tutorial."
    }];


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
    button{
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
      background-color: #dae0da;
    color: black;
    border: 2px solid #4CAF50;
    }
    button:hover {
      background-color: #4CAF50;
      color: white;
      opacity: 1

    }
  </style>

</app>
