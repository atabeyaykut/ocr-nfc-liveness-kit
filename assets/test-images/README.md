# Test Images for OCR Module

This folder contains sample images for testing the OCR functionality without requiring a real camera.

## Available Test Images:

### 1. id-card-sample.jpg
- **Type**: Turkish ID Card sample
- **Content**: Contains typical Turkish ID card fields
- **Expected OCR Results**:
  - Name: MEHMET
  - Surname: YILMAZ  
  - TC No: 12345678901
  - Birth Date: 01.01.1990

### 2. passport-sample.jpg
- **Type**: Turkish Passport sample
- **Content**: Contains passport information
- **Expected OCR Results**:
  - Surname: KAYA
  - Given Names: AYŞE
  - Passport No: U12345678

### 3. document-sample.jpg
- **Type**: General document sample
- **Content**: Contains basic document text
- **Expected OCR Results**:
  - Date: 15.03.2024
  - Number: 2024/001
  - Subject: Test Belgesi

## Usage

These images are referenced by the OCR test component and will return mock OCR results when selected. The actual image files are not required for the mock environment to function - the OCR component simulates text extraction based on the image names.

## Adding New Test Images

To add new test images:

1. Add the image file to this directory
2. Update the `testImages` array in `components/OCRTestComponent.js`
3. Add corresponding mock results in the `recognizeTextFromImage` function

## Note

In a real implementation, you would place actual image files here. For this mock environment, the images are simulated and the OCR results are pre-defined based on the image names.
