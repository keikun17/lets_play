class GameSelection extends React.Component {


  handleSubmit() {

    var formData = $( this.refs.add_game_form.getDOMNode() ).serialize();

    $.ajax({
      data: formData,
    })

  }

  render() {
    return (

      <form ref="add_game_form">
        hello it is me {this.props.name}!
      </form>
    )
  }

}

// var CommentBox = React.createClass({
//   getInitialState: function () {
//     return JSON.parse(this.props.presenter);
//   },
//
//   handleCommentSubmit: function ( formData, action ) {
//     $.ajax({
//       data: formData,
//       url: action,
//       type: "POST",
//       dataType: "json",
//       success: function ( data ) {
//         this.setState({ comments: data });
//       }.bind(this)
//     });
//   },
//
//   render: function () {
//     return (
//       <div className="comment-box">
//         <img src={ this.props.imgSrc } alt={ this.props.imgAlt } />
//         <CommentList comments={ this.state.comments } />
//         <hr />
//         <h2>Add a comment:</h2>
//         <CommentForm form={ this.state.form } onCommentSubmit={ this.handleCommentSubmit } />
//       </div>
//     );
//   }
// });
//
// ========================================

// var CommentForm = React.createClass({
//   handleSubmit: function ( event ) {
//     event.preventDefault();
//
//     var author = this.refs.author.getDOMNode().value.trim();
//     var text = this.refs.text.getDOMNode().value.trim();
//
//     // validate
//     if (!text || !author) {
//       return false;
//     }
//
//     // submit
//     var formData = $( this.refs.form.getDOMNode() ).serialize();
//     this.props.onCommentSubmit( formData, this.props.form.action );
//
//     // reset form
//     this.refs.author.getDOMNode().value = "";
//     this.refs.text.getDOMNode().value = "";
//   },
//   render: function () {
//     return (
//       <form ref="form" className="comment-form" action={ this.props.form.action } acceptCharset="UTF-8" method="post" onSubmit={ this.handleSubmit }>
//         <p><input type="hidden" name={ this.props.form.csrf_param } value={ this.props.form.csrf_token } /></p>
//         <p><input ref="author" name="comment[author]" placeholder="Your name" /></p>
//         <p><textarea ref="text" name="comment[text]" placeholder="Say something..." /></p>
//         <p><button type="submit">Post comment</button></p>
//       </form>
//     )
//   }
// });
//
