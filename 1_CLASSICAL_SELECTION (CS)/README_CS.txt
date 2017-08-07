
This code explains how to use the “CLASSICAL SELECTION OF DCT FEATURES (CS)" method described in [1].

There are two image databases for feature extraction "INFRARED (IR) and VISIBLE LIGHT (VL)"
 
To extract features for infrared database, “IR*.bmp” should be written in "dir" function, for visible light database, "VL*.bmp" should be used.
 
This folder contains 6 different functions. MAIN function will call the rest of the functions. Running main will produce the files below;    

Birlesik_IR/VL_CSC2x2.arff
Birlesik_IR/VL_CSC4x4.arff
Birlesik_IR/VL_CSC8x8.arff
Birlesik_IR/VL_CSC16x16.arff
Birlesik_IR/VL_CSC32x32.arff
Birlesik_IR/VL_CSC64x64.arff
Birlesik_IR/VL_CSC128x128.arff

After obtaining these “arff” files, WEKA program should be opened and "Knowledge Flow" button is clicked from WEKA GUI CHOOSER. Then "FILE-OPEN" is clicked and "KNOWLEDGE FLOW" file, which will be used for automatic classification with "CLASSIFICATION_MODEL.kf" is selected from the SOFTWARE-X folder, and "OPEN" button is clicked. Then "ARFF LOADER" is clicked. Then "retainsStringsVals" is set to False and "useRelativePath" is set to True. Then "BROWSE" button is selected from the FILENAME tab, and one of the created arff files listed above is selected.

"TEXTSAVER" icon is clicked from the KNOWLEDGE FLOW for each 3 classifier output. In the pop-up window, the address and the name for the results is saved to the "FILE TO SAVE TO" location. "APPEND TO FILE" is set to "TRUE", "WRITE TITLE STRING" is set to "FALSE" and "OK" button is clicked.

Finally, "RUN" button shown at the top left corner of the WEKA program is clicked. The status of the running program can be monitored from the status bar at the bottom of WEKA.

[1]YETGIN,O.E.,GEREK,O.N.,AUTOMATIC RECOGNITION OF SCENES WITH POWER LINE WIRES IN REAL LIFE AERIAL IMAGES USING DCT-BASED FEATURES, Digital Signal Processing, 2017.
