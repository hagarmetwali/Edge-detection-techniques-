%The Image
I = imread('kids.tif');

figure('Name','gray_img');
imshow(gray_img);

%We apply edge detection techniques
    %1)The Sobel filter, creates an image which emphasizes edges and transitions.
       %It is a discrete differentiation operator that computes an approximation of the gradient of the image intensity function. 
       %At each point in the image, the result of the Sobel operator is either the corresponding gradient vector or the norm of this vector. 
       %The Sobel operator is based on convolving the image with a small, separable, and integer valued filter in the horizontal and vertical directions
  edges_sobel = edge(gray_img ,'sobel');  
  figure('Name','edges sobel');
  imshow(edges_sobel);
  title('edges sobel');
       
% derivative filters are very sensitive to noise, it is common to smooth the image 
%(e.g., using a Gaussian filter) before applying the derivative 
%Apply Gaussian filter before sobel filter with different values for Sigma
    %figure('Name','Apply Gaussian filter with different values for Sigma');
%     Iblur1 = imgaussfilt(gray_img,2);
%     subplot(2,2,1)
%     %imshow(Iblur1);
%     Iblur2 = imgaussfilt(gray_img,4);
%     subplot(2,2,2)
%     %imshow(Iblur2);
%     Iblur3 = imgaussfilt(gray_img,8);
%     %subplot(2,2,3)
%     imshow(Iblur3);
    
 %Apply sobel filter after gaussian filter with  sigma =2
    edges_sobel_gaussian_filter = edge(Iblur1 ,'sobel');  
    %figure('Name','edges sobel after Gaussian Filter')
    %imshow(edges_sobel_gaussian_filter);
    %title('edges sobel after Gaussian Filter');
%=========================================================================*
    
 %2-Apply Second derivative "The Laplacian filter"
    edges_Laplacian = edge(gray_img ,'log');  
    figure('Name','edges Laplacian');
    imshow(edges_Laplacian);
    title('edges Laplacian');
%=========================================================================*
 %Apply the Canny method.
    edges_Canny = edge(gray_img ,'Canny');  
    figure('Name','edges Canny');
    imshow(edges_Canny);
    title('edges Canny');