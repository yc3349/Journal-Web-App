<text-editor>
<p>
  Editor
</p>
<div>
  <span>Title: </span> <input type="text" ref="title" value="">
</div>

<div>
  <span>Date: </span>  <input type="text" ref="date" value="">
</div>

<textarea name="name" ref="content" rows="8" cols="40"></textarea>

<button type="button" name="button" onclick={ doneWriting }>Done</button>
<button type="button" name="button" onclick={ parent.closeEditor }>Cancle</button>


<script>
  this.doneWriting = function(event) {
    var newJournal = {
      title: this.refs.title.value,
      date: this.refs.date.value,
      content: this.refs.content.value
    };
    this.parent.journalList.push(newJournal);
    this.parent.update();
    this.parent.closeEditor();
  };


  this.journalList = [];

  addItem(event){
    var newTask = {};
        newTask.task = event.title.value;

        //We are going to write to the database
        var database = firebase.database();
        var xRef = database.ref('title')

        //where are we writing data to? --> reference


        //write the data
        var newKey = xRef.push().key;
        xRef.child(newKey).set(newTask);

        event.title.value = "";
        event.title.focus();

  }

</script>

<style>
  :scope {
    display: block;
    color:red;
    background: pink;
    border: 1px solid maroon;
    padding: 10px;
    /* sets the position relative to the browser window */
    position:fixed;
    right:0;
    bottom: 0;
    width: 300px;
    height: 200px;

  }
  textarea {

    margin-top: 5px;
    height: 50px;
  }
</style>
</text-editor>
