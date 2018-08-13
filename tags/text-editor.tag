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
