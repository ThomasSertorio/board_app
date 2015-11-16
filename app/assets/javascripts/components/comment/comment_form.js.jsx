var CommentForm = React.createClass({

  handleSubmit: function(e){
    e.preventDefault();
    // Get author and content
    var author = this.refs.author.getDOMNode().value.trim();
    var content = this.refs.content.getDOMNode().value.trim();
    console.log(author, content);
    if (!content || !author) {
      return;
    }
    // Send author and content to server
    this.props.onCommentSubmit({author: author, content: content})

    // Erase values
    this.refs.author.getDOMNode().value = "";
    this.refs.content.getDOMNode().value = "";
    return;

  },


  render: function() {
    return (
      <form className="commentForm" onSubmit={this.handleSubmit}>
        <input type="text" placeholder="Your name" ref="author"/>
        <input type="text" placeholder="Say something..." ref="content" />
        <input type="submit" value="Post" />
      </form>
    );
  }
});
