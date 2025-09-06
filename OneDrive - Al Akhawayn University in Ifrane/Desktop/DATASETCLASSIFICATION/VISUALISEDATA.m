matFiles = dir('C:\Users\adnane\OneDrive - Al Akhawayn University in Ifrane\Desktop\DATASETCLASSIFICATION/*.mat');
for k = 1:length(matFiles)
    filePath = fullfile(matFiles(k).folder, matFiles(k).name);
    data = load(filePath);
    imageData = data.cjdata.image;
    label = data.cjdata.label;
    imshow(imageData, []);
    colormap('blue');  % Set colormap to blue for brain display
    title(['File: ', matFiles(k).name, ' | Tumor Class: ', num2str(label)]);
    pause(1);  % Pause for 1 second between images
end