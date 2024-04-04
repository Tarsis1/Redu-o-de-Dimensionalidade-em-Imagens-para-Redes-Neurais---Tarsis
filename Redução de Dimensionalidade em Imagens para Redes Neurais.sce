scicv_Init();

img_gray = imread(("C:\Users\Tarsis\Documents\Nova pasta\Clavicorde.JPG"),  CV_LOAD_IMAGE_GRAYSCALE); 
subplot(1,2,1);
matplot(img_gray);

thresh = 100;
img_canny = Canny(img_gray, thresh, thresh*2, 3);

[img_contours, contours] = findContours(img_canny, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, [0, 0]);

subplot(1,2,2);
matplot(img_contours);

delete_Mat(img_gray);
delete_Mat(img_canny);
//delete_Mat(img_contours);
