% testing for github
% still testing


function varargout = module3(varargin)
%MODULE3 M-file for module3.fig
%      MODULE3, by itself, creates a new MODULE3 or raises the existing
%      singleton*.
%
%      H = MODULE3 returns the handle to a new MODULE3 or the handle to
%      the existing singleton*.
%
%      MODULE3('Property','Value',...) creates a new MODULE3 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to module3_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      MODULE3('CALLBACK') and MODULE3('CALLBACK',hObject,...) call the
%      local function named CALLBACK in MODULE3.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help module3

% Last Modified by GUIDE v2.5 29-Jun-2016 11:32:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @module3_OpeningFcn, ...
    'gui_OutputFcn',  @module3_OutputFcn, ...
    'gui_LayoutFcn',  [], ...
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


% --- Executes just before module3 is made visible.
function module3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for module3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes module3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Initializing variable sliders and displaying values

set(handles.slider1, 'min', 0.0001);
set(handles.slider1, 'max', 0.01);
set(handles.slider1, 'Value', 0.00505);

set(handles.slider2, 'min', 0.1);
set(handles.slider2, 'max', 2.0);
set(handles.slider2, 'Value', 1.05);

set(handles.slider3, 'min', 0.1);
set(handles.slider3, 'max', 2.0);
set(handles.slider3, 'Value', 1.05);

set(handles.slider4, 'min', 1000);
set(handles.slider4, 'max', 20000);
set(handles.slider4, 'Value', 10500);

set(handles.slider5, 'min', 0.1);
set(handles.slider5, 'max', 2.0);
set(handles.slider5, 'Value', 1.05);

% --- Outputs from this function are returned to the command line.
function varargout = module3_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
B = get(handles.slider1,'Value'); % B
B = round(B*10000)/10000;
B = num2str(B);
str = ['B = ' B];
% Displays slider values
set(handles.edit2,'String',str);
% Plotting
PlotC_dC(handles.Cure, handles.avg_data, handles);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
n = get(handles.slider2,'Value'); % n
n = round(n*10000)/10000;
n = num2str(n);
str = ['n = ' n];
% Displays slider values
set(handles.edit3,'String',str);
% Plotting
PlotC_dC(handles.Cure, handles.avg_data, handles);

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
m = get(handles.slider3,'Value'); % m
m = round(m*10000)/10000;
m = num2str(m);
str = ['m = ' m];
% Displays slider values
set(handles.edit4,'String',str);
% Plotting
PlotC_dC(handles.Cure, handles.avg_data, handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
E = get(handles.slider4,'Value'); % E (J/mol)
E = round(E*10000)/10000;
E = num2str(E);
str = ['E (J/mol) = ' E];
% Displays slider values
set(handles.edit5,'String',str);
% Plotting
PlotC_dC(handles.Cure, handles.avg_data, handles);


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
k = get(handles.slider5,'Value'); % k
k = round(k*10000)/10000;
k = num2str(k);
str = ['k = ' k];
% Displays slider values
set(handles.edit6,'String',str);
% Plotting
PlotC_dC(handles.Cure, handles.avg_data, handles);


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end





% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Recalls data that was uploaded
data = handles.data;
% Gets handles to be used in plotting
axes(handles.axes1);
% Plotting
Plot_dsc( data, handles, 0 );

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% Gets handles to be used in plotting

% Recalls data that was uploaded
data = handles.data;
% Gets handles to be used in plotting
axes(handles.axes1);
% Plotting
Plot_dsc ( data, handles, 0 );
% displaying value in edit box
max = get(handles.slider8,'Value');
max = round(max*100)/100;
max = num2str(max);
str = ['Upper Bound = ' max];
set(handles.edit7,'String',str);

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Recalls data that was uploaded
data = handles.data;
% Gets handles to be used in plotting
axes(handles.axes1);
% Plotting
Plot_dsc( data, handles, 0 );
% displaying value in edit box
min = get(handles.slider9,'Value');
min = round(min*100)/100;
min = num2str(min);
str = ['Lower Bound = ' min];
set(handles.edit8,'String',str);



% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Loads DSC data.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = uigetfile('.txt');
% Gets filename from text box
%file = get(handles.edit1,'String');
%file = horzcat(filename);
% Uploads corresponding file
fid = fopen(filename,'r');
count =1;
while ~feof(fid)
    data(count, :)=fscanf(fid,' %f %f %f ', [1 3] );
    count = count+1;
end
fclose(fid);
% data = csvread(file);
% Adds to handles structure to be called in different functions in the GUI
handles.data = data;
guidata(hObject,handles)
% Setting slider values
set(handles.slider8, 'max', max(data(:,1)));
set(handles.slider8, 'Value', max(data(:,1))/2);
set(handles.slider9, 'max', max(data(:,1)));
set(handles.slider9, 'Value', max(data(:,1))/2);
set(handles.slider7, 'min', min(data(:,3)));
set(handles.slider7, 'max', max(data(:,3)));
set(handles.slider7, 'Value', 0);

% Plotting data
Plot_dsc (data, handles, 1 );

% --- Integrates over region chosen by user.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% averages dsc_data to be used in optimization and plotting of Cure and
% Conversion
% Setting size of time step for rest of functions
handles.tStep = .05;
guidata(hObject,handles);
avg_data = avg_DSC(handles.data, handles, handles.tStep );
% Adds to handles structure to be called in different functions in the GUI
handles.avg_data = avg_data;
guidata(hObject,handles)
% Integrates to get Conversion and Cure
Cure = Integrate(handles.avg_data,handles);
handles.Cure = Cure;
guidata(hObject,handles);
PlotC_dC(handles.Cure, handles.avg_data, handles);


% --- Optimizes slider values using a Genetic Algorithm.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Optimizes values for B,n,m,E,k
OptimizeGA(handles.avg_data,handles);



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
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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


function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functions called by the different sliders and pushbuttons
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function Plot_dsc(data, handles, initial)
% Plots DSC and temperature curves

% Gets handles to be used in plotting
axes(handles.axes1);

% Deletes previous lines
delete(findobj('type','line','color',[0,0,0]))
delete(findobj('type','line','color',[.01,.01,.01]))
delete(findobj('type','line','color',[.02,.02,.02]))


% Plots temperature and heatflow on seperate axes
hold on;
[ax,p1,p2] = plotyy(data(:,1),data(:,3),data(:,1),data(:,2));
axis([0 max(data(:,1)) min(data(:,3)) max(data(:,3))])

% Line Spec for dsc data
set(p1,'color','red')
set(p2,'color','blue')
if (initial == 1)
    % Adding Legend
    legend( [p1,p2],'Heat Flow','Temperature')
end

% Plotting vertical lines
Max = get(handles.slider8,'Value');
line([Max,Max],[-100, 100],'color',[.01,.01,.01]);
Min = get(handles.slider9,'Value');
line([Min,Min],[-100, 100],'color',[.02,.02,.02]);

% Plotting horizontal line
base = get(handles.slider7, 'Value');
[h,l] = size(data);
D = ones(h,1)*base;
plot(data(:,1),D, 'color', [0,0,0]);

% Labels axes
xlabel(ax(1), 'Time (min)', 'FontSize', 14, 'color', 'k');
ylabel(ax(1), 'Heat Flow (W/g)', 'FontSize', 14, 'color', 'r');
ylabel(ax(2), 'Temperature (C)', 'FontSize', 14, 'color', 'b');
hold off;

function [avg_data] = avg_DSC( data, handles, t_step )
% Averages data over given time step in range of interest. 
% Used to aid in comparison of model to real data

% Variables
% data: original dsc_data uploaded
% handles: allows access of slider values
% t_step: desired time step for averaging data

% Getting boundaries of data of interest
max1 = get(handles.slider8,'Value');
min1 = get(handles.slider9,'Value');
base = get(handles.slider7, 'Value');

% Size of data
[h,l] = size(data);

% Limiting data to range between vertical sliders
dataOriginal = zeros(h,l);
count = 1;
for i = 1:h
    if data(i,1) > min1 && data(i,1) < max1
        dataOriginal(count,:) = data(i,:);
        count = count+1;
    end
end

dataOriginal = dataOriginal(1:count-1,:);
[hOri,lOri] = size(dataOriginal);

% subtracting value of 'base' from the actual values to aid in
% determination of area between base and dsc curve in range of interest
dataOriginal(:,3) = dataOriginal(:,3)-base;

% shifting data to t = 0, so it will match up with model
dataOriginal(:,1) = dataOriginal(:,1)-dataOriginal(1,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Averaging the data for given time step

% First row in matrix is taken to be t = 0
% t = given_time is taken to be all rows with t <= given_time 
% and t > given_time - t_step

% matrix to hold average values
t_max = ceil(data(count-2,1)*(1/t_step))/(1/t_step);
avg_data = zeros(ceil(t_max/t_step)+1,3);

% populating matrix

% First row
avg_data(1,1) = dataOriginal(1,1);
avg_data(1,2) = dataOriginal(1,2);
avg_data(1,3) = dataOriginal(1,3);

t_index = 1;
data_index = 2;
% averaging
for i = t_step:t_step:t_max
    avg_count = 0;
    while dataOriginal(t_index) < i && t_index < hOri-1
        avg_count = avg_count+1;
        t_index = t_index+1;
        temp_matrix(avg_count,1:2) = dataOriginal(t_index,2:3);
    end
    avg_data(data_index,1) = i;
    avg_data(data_index,2:3) = mean(temp_matrix);
    data_index = data_index+1;
end

function [Cure] = Integrate(data, handles)
% Computes the area under the dsc curve and saves cure and cure rate for
% use in plotting

% size of data 
[h,l] = size(data);

% Conversion calculation and plotting
TotalHeat = trapz(data(:,1),data(:,3));
set(handles.edit10, 'String', TotalHeat);

C1 = 0; % Conversion
dC_dt1 = 0; % Conversion rate
for i = 1:h-1
    dC_dt1 = (data(i,3)+data(i+1,3))/2*(data(i+1,1)-data(i,1));
    C1 = C1+dC_dt1;
    % saving values for plot
    matrix_C1(i) = C1;
end
matrix_C1 = matrix_C1/TotalHeat; % Normalizing data
Cure(:,1) = data(1:h-1,1);
Cure(:,2) = matrix_C1;


function PlotC_dC(C_Real, data, handles)
% Caculates conversion rate
C_Real = C_Real(:,2);
C_Real = C_Real';
% size of data 
[h,l] = size(data);
% Obtaining slider values
B = get(handles.slider1,'Value'); % B
n = get(handles.slider2,'Value'); % n
m = get(handles.slider3,'Value'); % m
E = get(handles.slider4,'Value'); % E (J/mol)
k = get(handles.slider5,'Value'); % k
% time step
delta_t = handles.tStep;
% gas constant
R = 8.314;
% when while loop stops
completeConversion = .99;
% starting conversion
C = 0;

% Need to add a correction in case model finishes conversion before the
% data

% initializing count for plotting purposes
count = 1;
while C < completeConversion && count < h-1
    T = data(count,2)+273;
    f_C = (B+C^n)*(1-C^m);
    dC_dt = k*exp(-E/(R*T))*f_C;
    C = C+dC_dt*delta_t;
    
    % saving values for plot
    count = count+1;
    matrix_C(count) = C;
    matrix_dC_dt(count) = dC_dt;
end

C = matrix_C;
dC_dt = matrix_dC_dt;

if count < h-1
    C(count+1:h-1) = C(count);
end
% Plotting of all calculated values
axes(handles.axes3);
plot(data(1:h-1,1),C_Real,'r-') % Real Data
hold on;
plot(data(1:h-1,1),C,'b--'); % Model
xlabel('Time (min)', 'FontSize', 14, 'color', 'k');
ylabel('Conversion', 'FontSize', 14, 'color', 'k');
legend('data','model')
hold off;
axes(handles.axes2);
plot(data(1:count,1),dC_dt, 'b--');
xlabel('Time (min)', 'FontSize', 14, 'color', 'k');
ylabel('Cure Rate', 'FontSize', 14, 'color', 'k');
err = immse(C_Real, C);
err = num2str(err);
str = ['Error = ' err];
set(handles.edit11,'String',str);



function [p] = OptimizeGA(data,handles)
% data is the data that we are trying to match the model to

% Cure rate of real data
Cure = Integrate(data, handles);

% p is the list of parameter values that are found to be the best fit

% This function uses a Genetic Algorithm to determine the best fit of the
% conversion curve

% The optimal solution will be chosen to be the most fit organisms in the
% final generation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameters to be varied
% Start with creating an initial, random population
n = 5; % number of parameters
numBits = 16; % number of bits 
popSize = 50; % number of organisms created in each generation
pMin = [0.0005 0.1 0.1 1000 0.1]; % parameter minimum values
pMax = [.01 2 2 20000 2]; % parameter max values
maxGen = 100; % Max number of iterations
tol = .001; % Margin of error willing to accept
mutRate = .01; % percentage of genes that will be mutated
% End of input
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% population uses binary vectors to describe values of parameter values
% random starting population
population{1} = randi([0,1],popSize, n*numBits);
gen = 1; % first generation

% Breeding/updating of populations

% Exits if max number of generation has been reached
% Exits if tolerance has been met (lowest prefitness value within
% tolerance specified above)
aveCount = 0; 
% 1 if tolerance met, 0 otherwise
tolMet = 0;
              
while gen <= maxGen && aveCount < 4 && tolMet == 0;
    % count of offspring created
    oCount = 0;
    % fitness calculation
    % returns new population{gen} that has been reordered from most to
    % least fit
    [preFit{gen}, preFitAve(gen), rawFit{gen}, avRawFit(gen), population{gen}] = ...
        fitnessCalc(population{gen}, pMin, pMax, data, Cure, handles);
    
    % Checking to see if most fit individual is within tolerance
    if preFit{gen}(1) < tol
        tolMet =1;
    end
    
    % Determining number of offspring for each organism of previous generation
    offspring1{gen} = rawFit{gen}/avRawFit(gen);
    offspring2{gen} = floor(offspring1{gen});
    offspring3{gen} = offspring1{gen} - offspring2{gen};
    
    % Creation of next generation
    gen = gen+1;
    % Add in most fit member of previous generation to poulation of 
    population{gen}(1,:) = population{gen-1}(1,:);
    oCount = 1; % incrementing offspring count
    
    % Breeding fit individuals
    i = 1; % individual that is being bred
    while oCount < popSize && i < popSize
        for j = 1:offspring2{gen-1}(i)
            % Breeds with next most fit individuals as determined by the
            % matrix offspring 2
            if 0 < i+j < popSize && 0 < i
                population{gen}(oCount+1,:) = Crossover(population{gen-1}(i,:),...
                    population{gen-1}(i+j,:));
                % keeps track of how many time individuals have already been
                % bred
                offspring2{gen-1}(i+j) = offspring2{gen-1}(i+j)-1;
                % incrementing count to reflect number of current individuals
                % in next generation
                oCount = oCount+1;
            end
        end
        i = i+1;
    end
    
    % If this is not sufficient to populate next generation, the population
    % is re-sorted by which individuals have largest number after decimal
    % for number of offsprings
    if oCount < popSize
        % Sorting most to least fit leftovers
        [offspring3{gen-1}, idx] = sort(offspring3{gen-1});
        % Rearranging population in this order
        pop = population{gen-1}(idx,:);
        % breeds 1 and 2, then 3 and 4 and so on, until the next generation
        % is full populated
        j = 1;
        while oCount < popSize && j < popSize
            population{gen}(oCount+1,:) = Crossover(pop(j,:), pop(j+1,:));
            oCount = oCount +1;
            j = j + 2;
        end
    end
    
    % If next generation is still not fully populated, the last individuals
    % are populated with random individuals
    population{gen}(oCount+1:popSize,:) =  randi([0,1],popSize-oCount, n*numBits);
  
    % Next generation is now fully populated
    
    % Mutating next generation, minus best individual from previous
    for i = 2:popSize
        population{gen}(i,:) = Mutate(population{gen}(i,:),mutRate);
    end
end

for i = 1:gen
    pop = population{i}(1,:);
    for j = 1:n
        % Extracting binary vectors for each variable
        binVec = pop((j-1)*numBits+1:j*numBits);
        % calculation of parameter value
        p(1,j) = bin2int(binVec,pMin(j), pMax(j));
    end
    parameters(i,:) = p;
end

[h,~] = size(parameters);
p = parameters(h,:);
[yModel,yPrime] = ComputeCure(p(1), p(2), p(3), p(4), p(5), data, handles);

B = p(1);
n = p(2);
m = p(3);
E = p(4);
k = p(5);
% Setting slider values to best guess
set(handles.slider1, 'Value', B);
set(handles.slider2, 'Value', n);
set(handles.slider3, 'Value', m);
set(handles.slider4, 'Value', E);
set(handles.slider5, 'Value', k);
% Updating edit boxes
B = round(B*10000)/10000;
B = num2str(B);
str = ['B = ' B];
set(handles.edit2,'String',str);

n = round(n*10000)/10000;
n = num2str(n);
str = ['n = ' n];
set(handles.edit3,'String',str);

m = round(m*10000)/10000;
m = num2str(m);
str = ['m = ' m];
set(handles.edit4,'String',str);

E = round(E*10000)/10000;
E = num2str(E);
str = ['E (J/mol) = ' E];
set(handles.edit5,'String',str);

k = round(k*10000)/10000;
k = num2str(k);
str = ['k = ' k];
set(handles.edit6,'String',str);

% Cure rate of real data
Cure = Integrate(data, handles);

% Plotting of all calculated values
axes(handles.axes3);
plot(Cure(:,1),Cure(:,2),'r-'); % Real data
hold on;
plot(Cure(:,1),yModel,'b--'); % Model
xlabel('Time (min)', 'FontSize', 14, 'color', 'k');
ylabel('Conversion', 'FontSize', 14, 'color', 'k');
legend('data','model');
hold off;
axes(handles.axes2);
plot(Cure(:,1),yPrime, 'b--');
xlabel('Time (min)', 'FontSize', 14, 'color', 'k');
ylabel('Cure Rate', 'FontSize', 14, 'color', 'k');
% Calculating Error
err = immse(Cure(:,2), yModel);
err = num2str(err);
str = ['Error = ' err];
set(handles.edit11,'String',str);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functions used by Genetic algorithm

function [ int ] = bin2int(binVec, mini, maxi)
% Converts binary vector to integer, and then converts integer to variable
% value

% maxi and mini are the maximum and minimu values the parameter in question
% can take

l = length(binVec);
b = 0;
for i = 1:l
    b = b+ binVec(i)*2^(l-i);
end

int = (b/2^l)*(maxi-mini)+mini;

function [ pNew ] = Mutate(p,mutRate)
% Randomly mutates p at rate mutRate

l = length(p);
pNew = zeros(1,l);
for i = 1:l
    x = rand;
    if x < mutRate
        pNew(i) = 1-p(i);
    else
        pNew(i) = p(i);
    end
end

function [ p3 ] = Crossover(p1,p2)
% Creates offspring (p3) of two organisms (p1,p2) using crossover
c = 2;
% c denotes type of crossover

l = length(p1);
p3 = zeros(1,l);
if c == 1;
    % double point crossover
    xA = randi([1,l]);
    xB = randi([1,l]);

    if xA > xB
        x1 = xB;
        x2 = xA;
    else
        x1 = xA;
        x2 = xB;
    end

    p3(1:x1) = p1(1:x1);
    p3(x1+1:x2) = p2(x1+1:x2);
    p3(x2+1:l) = p1(x2+1:l);
end

if c == 2 
    % Random crossover
    for i = 1:l
        x = rand;
        if x < .5
            p3(l) = p1(l);
        else
            p3(l) = p2(l);
        end
    end
end



function [ preFitness, preFitAve, rawFitness, avgFitness, popOut ] = ...
    fitnessCalc( pop, pMin, pMax, data, Cure, handles)
% population represents the individuals whose fitness is to be assessed
% pMin and pMax represent the ranges of the parameter values
% data represents both the x and y values of the curve you are trying to
% match
% Calculates the raw fitness, pre fitness  average pre fitness and average 
% fitness of a population, as well as returns the population sorted from
% most to least fit

yReal = Cure(:,2);
% Extracting binary vectors for each variable
[h,l] = size(pop); % h = number of individuals
n = length(pMin); % number of variables
numBin = l/n; % size of binomial vectors
preFitness = zeros(h,1); % Matrix to hold pre fitness values
p = zeros(2,1);
for i = 1:h
    for j = 1:n
        % Extracting binary vectors for each variable
        binVec = pop(i,(j-1)*numBin+1:j*numBin);
        % calculation of parameter value
        p(j) = bin2int(binVec,pMin(j), pMax(j));
    end
    % calculation of model
    [y,yPrime] = ComputeCure(p(1), p(2), p(3), p(4), p(5), data, handles);
    % prefitness (sum of squares of difference)
    preFitness(i) = sum((yReal-y).^2);
end

% Calculation of raw fitness
preFitAve = mean(preFitness);
preFitMin = min(preFitness);
% Sorting most to least fit
[preFitness, idx] = sort(preFitness);
% Rearranging population in this order
popOut = pop(idx,:);
% least fit individual
maxP = max(preFitness); 
rawFitness = maxP-preFitness; 
avgFitness = mean(rawFitness);

function [y,yPrime] = ComputeCure(B, n, m, E, k, avg_data, handles)
% Computes the cure given the parameters inputed
% B, n, m, E, k are constants from sliders used in mathematical model
% lengthObserved is the length of time the real cure took
% avg_data is the 
[h,~] = size(avg_data);
lengthObserved = h-1;
% gas constant
R = 8.314;
% one condition for while loop stopping
completeConversion = .99;
% Starting time
t = 0;
C = 0;
delta_t = handles.tStep;
% initializing count for plotting purposes
count = 1;
while C < completeConversion && count < lengthObserved
    t = t + delta_t;
    T = avg_data(count,2)+273;
    f_C = (B+C^n)*(1-C^m);
    dC_dt = k*exp(-E/(R*T))*f_C;
    C = C+dC_dt*delta_t;
    
    % saving values for plot
    count = count+1;
    matrix_C(count) = C;
    matrix_dC_dt(count) = dC_dt;
end

if count < lengthObserved
    matrix_C(count+1:lengthObserved) = matrix_C(count);
    matrix_dC_dt(count+1:lengthObserved) = 0;
end

    

y = matrix_C';
yPrime = matrix_dC_dt';



