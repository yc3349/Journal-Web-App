<text-editor>
<p>
  Editor
</p>
<div>
  <span>Title: </span>
  <input type="text" value="">
</div>
<div>
  <span>Date: </span>
  <input type="text" value="">
</div>

<textarea name="name" rows="8" cols="40"></textarea>

<button type="button" name="button">Done</button>


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
