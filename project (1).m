function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 30-Apr-2022 14:01:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
    
end

% End initialization code - DO NOT EDIT


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes12.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload_photo.
function upload_photo_Callback(hObject, eventdata, handles)
% hObject    handle to upload_photo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('*.*');
a=imread(a);
axes(handles.axes1);
imshow(a)
setappdata(0,'a',a);




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in nag.
function nag_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to nag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=getappdata(0,'a');


L = 2 ^ 8;
negImg = (L - 1) - b;
axes(handles.axes2);
imshow(negImg)



% --- Executes on button press in down.
function down_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to down (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=getappdata(0,'a');


[rows, cols, matricesNo] = size(c);
SamplingFactor = 16;
for metricesIndex=1:1:matricesNo
    resizedImage(:,:,metricesIndex) = subSampling(c(:,:,metricesIndex),SamplingFactor);
end

axes(handles.axes2);
imshow(resizedImage)

setappdata(0,'m',resizedImage);
function [outImage] = subSampling(image, subSamplingFactor)
[rows, cols] = size(image);
outImage = image(1:subSamplingFactor:rows,1:subSamplingFactor:cols);



% --- Executes on button press in upsize.
function upsize_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to upsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=getappdata(0,'m'); 
g=imresize(g,10);
axes(handles.axes2);
 imshow(g)
 
% [origImRows, origImColumns,~] = size(g);
% 
% newImage = zeros(origImRows*3, origImColumns*3,3);
% newImRow = 1; newImColumn = 1;
% rowCounter = 1;
% columnCounter=1;
% for row = 1:3:origImRows   
%     for column = 1:3:origImColumns
%         newImage(row:row+2, column:column+2,:)=g(rowCounter, columnCounter,:);
%         columnCounter = columnCounter+1;
%     end
%     rowCounter=rowCounter+1;
% end
% axes(handles.axes1);
% imshow(negImg)
% figure; imshow(originalImage);
% figure; imshow(newImage/255);


% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes3,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
[row,cols,matrix]=size(a);
if matrix >1
a=rgb2gray(a);
axes(handles.axes2);
imshow(a);
setappdata(0,'a',a);
else
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a);
end

b=getappdata(0,'l');
[row1,cols1,matrix1]=size(b);
if matrix1 >1
b=rgb2gray(b);
axes(handles.axes2);
imshow(b);
setappdata(0,'l',b);
else
axes(handles.axes2);
imshow(b);
setappdata(0,'l',b);
end




% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
logg=getappdata(0,'a');
axes(handles.axes1);
imshow(logg)
c=str2double(get(handles.edit1, 'String'));
orImage=im2double(logg);
lo = c * log((orImage + 1));
axes(handles.axes2);
imshow(lo);


% --- Executes on button press in str.
function str_Callback(hObject, eventdata, handles)
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes3,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
logg=getappdata(0,'a');
axes(handles.axes1);
imshow(logg);
[origImRows, origImColumns, matricesNo] = size(logg);
maxR = max(max(max(logg)));
minR =min(min(min(logg)));
maxs=str2double(get(handles.edit3, 'String'));
mins=str2double(get(handles.edit4, 'String'));

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
contrastStretching(rows,cols,:) = ((maxs - mins)/(maxR - minR)) * (logg(rows , cols) - minR)+mins;

    end
end
axes(handles.axes2);
imshow(contrastStretching);



% --- Executes on button press in hist.
function hist_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to hist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


y=str2double(get(handles.data, 'String'));
if y ==1

 s=getappdata(0,'z');
[rows,cols]=size(s);
counts=zeros(1,256);
for i=1:rows
 for j=1:cols
    grayLevel=s(i,j);
    counts(grayLevel+1)=counts(grayLevel+1)+1;
end
end

axes(handles.axes1);
imshow(s);
grayLevels = 0 : 255;
axes(handles.axes2);
bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;
 
else
c=getappdata(0,'a');    
[rows,cols]=size(c);
counts=zeros(1,256);
for i=1:rows
 for j=1:cols
    grayLevel=c(i,j);
    counts(grayLevel+1)=counts(grayLevel+1)+1;
end
end
 

axes(handles.axes1);
imshow(c);
grayLevels = 0 : 255;
axes(handles.axes2);
bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;
end
    



% --- Executes on button press in pl.
function pl_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to pl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=getappdata(0,'a');
c=1;

y=str2double(get(handles.edit7, 'String'));

double_value = im2double(d);
out3= c*(double_value.^y);
axes(handles.axes2)
imshow(out3);



% --- Executes on button press in histo.
function histo_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to histo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=getappdata(0,'a'); 
numofpixels=size(a,1)*size(a,2);

axes(handles.axes2)

imshow(a);
title("Original image");

HIm=uint8(zeros(size(a,1),size(a,2)));

freq=zeros(256,1);

probc=zeros(256,1);

output=zeros(256,1);
for i=1:size(a,1)

    for j=1:size(a,2)

        value=a(i,j);

        freq(value+1)=freq(value+1)+1;

    end

end


sum=0;
no_bins=255;
%The cumulative distribution probability is calculated. 

for i=1:size(freq)

   sum=sum+freq(i);

   probc(i)=sum/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(a,1)

    for j=1:size(a,2)

            HIm(i,j)=output(a(i,j)+1);

    end

end
% Plot top plot.


axes(handles.axes2)

imshow(HIm);
setappdata(0,'z',HIm);


function MedianFilter_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to MedianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'a');    
axes(handles.axes1);
% displaying the image
imshow(gray_image);
title("Original image");

[rows,cols]=size(gray_image);
out=gray_image;
for i=2:rows-1
 for j=2:cols-1
     temp = [gray_image(i-1, j-1) gray_image(i-1, j) gray_image(i-1, j + 1) gray_image(i, j-1) gray_image(i, j) gray_image(i, j + 1) gray_image(i + 1, j-1) gray_image(i + 1, j) gray_image(i + 1, j + 1)];
     temp = sort(temp);
     out(i, j)= temp(5);
end
end
axes(handles.axes2);
imshow(out);
title("Median Image");



% --- Executes on button press in slicing.
function slicing_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to slicing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit9, 'String'));
if a==1
    origImage = getappdata(0,'a');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=100)&(origImage(rows,cols,:)<=150)
    
    origImage(rows,cols,:)=255;
else
    origImage(rows,cols,:)=0;
end
    

    end
end
axes(handles.axes1);
imshow(bcopyimge)
axes(handles.axes2);
imshow(origImage);

else
 origImage = getappdata(0,'a');
[origImRows, origImColumns, ] = size(origImage);
 bcopyimge=origImage;

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=100) & (origImage(rows,cols,:)<=150)
    
    origImage(rows,cols,:)=0;
else
    origImage(rows,cols,:)= origImage(rows,cols,:);
end
    

    end
end
axes(handles.axes1);
imshow(bcopyimge)
axes(handles.axes2);
imshow(origImage);

    
end



% --- Executes on button press in therdshold.
function therdshold_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to therdshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'a');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;
theredshold=str2double(get(handles.edit10, 'String'));
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if origImage(rows,cols,:)<theredshold 
    origImage(rows,cols,:)=0;
else
    origImage(rows,cols,:)=255;
end
    

    end
end
axes(handles.axes1);
imshow(bcopyimge)
axes(handles.axes2);
imshow(origImage);


% --- Executes on button press in gray_scale.
function gray_scale_Callback(hObject, eventdata, handles)
handles.axes3.Visible = 'on'; % Show 4 axes.
handles.axes4.Visible = 'on'; % Show 4 axes.
handles.axes5.Visible = 'on'; % Show 4 axes.
handles.axes6.Visible = 'on'; % Show 4 axes.
handles.axes7.Visible = 'on'; % Show 4 axes.
handles.axes8.Visible = 'on'; % Show 4 axes.
handles.axes9.Visible = 'on'; % Show 4 axes.
handles.axes10.Visible = 'on'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to gray_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
scale=getappdata(0,'a');
k = 8;
while (k > 0)
 target_levels = 2^k;
 target_compr_factor = 256 / target_levels;
 reduced_image = uint8(floor(double(scale)/256 * target_levels) * target_compr_factor);
 handles.hAxes = [ handles.axes3, handles.axes6, handles.axes9,handles.axes4,handles.axes7,handles.axes10,handles.axes5,handles.axes8];
axes( handles.hAxes(k) );
 imshow(reduced_image, [0 255]);
 k = k - 1; 
end






% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'a');
[rows,cols]=size(gray_image);

outimage = gray_image;

for i=2:rows-1
   for j=2:cols-1

  temp = (gray_image(i-1, j-1)*1/9 + gray_image(i-1, j)*1/9 + gray_image(i-1,j+1)*1/9 + gray_image(i, j-1)*1/9 + gray_image(i,j)*1/9 + gray_image(i , j+1)*1/9 + gray_image(i+1, j-1)*1/9 + gray_image(i+1,j)*1/9 + gray_image(i+1 , j+1)*1/9);
   
    outimage(i, j)= temp;
%    temp=[gray_image(i-1, j-1)  gray_image(i-1, j)  gray_image(i-1,j+1)  gray_image(i, j-1)  gray_image(i,j)  gray_image(i , j+1)  gray_image(i+1, j-1) gray_image(i+1,j)  gray_image(i+1 , j+1)]; 
% outimage(i,j)=mean(temp);

    end

end
axes(handles.axes2);
imshow(outimage)
axes(handles.axes1);
imshow(gray_image);










% --- Executes on button press in bit.
function bit_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'a');
[origImRows, origImColumns,matricesNo] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns,8);
for k=1:8
  for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        bcopyimge(rows,cols,k)=bitget(origImage(rows,cols),k);      
    end
  end
  
handles.hAxes = [ handles.axes3, handles.axes6, handles.axes9,handles.axes4,handles.axes7,handles.axes10,handles.axes5,handles.axes8];
axes( handles.hAxes(k) );
imshow(bcopyimge(:,:,k));
 
  
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function data_Callback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of data as text
%        str2double(get(hObject,'String')) returns contents of data as a double


% --- Executes during object creation, after setting all properties.
function data_CreateFcn(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in weghtie.
function weghtie_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to weghtie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'a');
[rows,cols]=size(gray_image);
out = gray_image;
for i=2:rows-1
   for j=2:cols-1
    temp = (gray_image(i-1, j-1)*1/16 + gray_image(i-1, j)*2/16 + gray_image(i-1,j+1)*1/16 + gray_image(i, j-1)*2/16 + gray_image(i,j)*4/16 + gray_image(i , j+1)*2/16 + gray_image(i+1, j-1)*1/16 + gray_image(i+1,j)*2/16 + gray_image(i+1 , j+1)*1/16);
       out(i, j)= temp;
    end
end
axes(handles.axes2);
imshow(out)
axes(handles.axes1);
imshow(gray_image);


% --- Executes on button press in photo.
function photo_Callback(hObject, eventdata, handles)
b=uigetfile('*.*');
b=imread(b);
axes(handles.axes2);
imshow(b)
setappdata(0,'l',b);
% hObject    handle to photo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'a');
x=getappdata(0,'l');
[origImRows, origImColumns, ] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns);
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        
        bcopyimge(rows,cols)= (origImage(rows,cols)) - (x(rows,cols));
   end
end
axes(handles.axes1);
imshow(origImage)
axes(handles.axes2);
imshow(x)
axes(handles.axes12);
imshow(bcopyimge)
