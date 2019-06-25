import React from 'react';
import 'draft-js/dist/Draft.css';
import {Editor, EditorState, RichUtils, ContentState, convertFromHTML} from 'draft-js';


export default class MyEditor extends React.Component {
    constructor(props) {
        super(props);

        const html = 'This is a react rich editor component called <i>draft.js</i> from facebook.<br>You can select text and <b>bold</b> it with Ctl-&lt;b&gt;'
        const blocksFromHTML = convertFromHTML(html)
        const content = ContentState.createFromBlockArray(blocksFromHTML)



        this.state = {editorState: EditorState.createWithContent(content)};
        this.onChange = (editorState) => this.setState({editorState});
        this.setEditor = (editor) => {
            this.editor = editor;
        };
        this.focusEditor = () => {
            if (this.editor) {
                this.editor.focus();
            }
        };
    }

    handleKeyCommand = (command) => {
        const newState = RichUtils.handleKeyCommand(this.state.editorState, command)
        if (newState) {
            this.onChange(newState);
            return 'handled';
        }
        return 'not-handled';
    }



    componentDidMount() {
        this.focusEditor();
    }

    render() {
        return (
            <div style={styles.editor} onClick={this.focusEditor}>
              <Editor
                ref={this.setEditor}
                editorState={this.state.editorState}
                onChange={this.onChange}
                handleKeyCommand={this.handleKeyCommand}
                />
            </div>
        );
    }
}

const styles = {
    editor: {
        border: '10px solid blue',
        minHeight: '12em'
    }
};


