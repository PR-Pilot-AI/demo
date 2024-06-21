import React from 'react';

// Props for the GoToFile component
interface GoToFileProps {
  placeholderText?: string;
  buttonText?: string;
  onButtonClick?: () => void;
}

// Functional component resembling the screenshot
const GoToFile: React.FC<GoToFileProps> = ({
  placeholderText = 'Go to file',
  buttonText = 'Add file',
  onButtonClick,
}) => {
  return (
    <div style={{ display: 'flex', alignItems: 'center', border: '1px solid #d1d5da', borderRadius: '6px', padding: '5px' }}>
      {/* Search input resembling the "Go to file" input box */}
      <input
        type="text"
        placeholder={placeholderText}
        style={{
          border: 'none',
          outline: 'none',
          flex: 1,
          padding: '5px',
          fontSize: '14px',
        }}
      />
      {/* Button resembling the "Add file" button */}
      <button
        onClick={onButtonClick}
        style={{
          backgroundColor: '#f6f8fa',
          border: '1px solid #d1d5da',
          borderRadius: '6px',
          padding: '5px 10px',
          marginLeft: '5px',
          cursor: 'pointer',
          fontSize: '14px',
        }}
      >
        {buttonText}
      </button>
    </div>
  );
};

export default GoToFile;

/*
  This component is designed to resemble the screenshot provided. The screenshot shows a UI element with the following features:
  - A search input box with a placeholder text "Go to file".
  - A button next to the input box with the text "Add file".
  - The button has a dropdown indicator, but for simplicity, this component does not include the dropdown functionality.
  - The overall design includes a border around the input and button, with rounded corners and padding.

  The component accepts the following props:
  - placeholderText: Customizable placeholder text for the input box.
  - buttonText: Customizable text for the button.
  - onButtonClick: Optional click handler for the button.

  The component uses inline styles to closely match the appearance of the elements in the screenshot.
*/
