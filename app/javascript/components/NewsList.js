import React from "react"
import PropTypes from "prop-types"
class NewsList extends React.Component {
  render () {
  	const { stories } = this.props;


  	console.log(this.props);
  	console.log(this.props.Image);

  	//let imageSrc = stories.image !== null 
  	//https://sipsandbits.com/2019/03/01/how-to-react-on-rails/

    return (
      <React.Fragment>

      <h1>React News Articles...</h1>
        <div className="stories">
          { stories.map(story => {
            return <Story key={story.title} story={story} />;
          })}
        </div>
      </React.Fragment>
    );
  }
}

const Story = ({story}) => {
  return (
    <div className="story">
      <img src={story.image} />
      <p>Image path: {story.image}</p>
      <div className="story-content">
        <h3>{story.title}</h3>
        <p>{story.published}</p>
        {story.body}

        <hr/>
      </div>
    </div>
  );
}

export default NewsList
