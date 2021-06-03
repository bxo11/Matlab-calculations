function varargout = GUI2(varargin)
% GUI2 MATLAB code for GUI2.fig
%      GUI2, by itself, creates a new GUI2 or raises the existing
%      singleton*.
%
%      H = GUI2 returns the handle to a new GUI2 or the handle to
%      the existing singleton*.
%
%      GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI2.M with the given input arguments.
%
%      GUI2('Property','Value',...) creates a new GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI2

% Last Modified by GUIDE v2.5 02-Apr-2015 14:53:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI2_OutputFcn, ...
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


% --- Executes just before GUI2 is made visible.
function GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI2 (see VARARGIN)

% Choose default command line output for GUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function axes1_CreateFcn(hObject, ~, ~)
x=-1:0.01:1;
y=x;
h=plot(x,y);
set(hObject,'UserData',h);
set(gca,'XLim',[-1 1]);


function listbox1_Callback(hObject, ~, ~)
fs=get(hObject,'String');
f=fs{get(hObject,'Value')};
x=get(get(gca,'UserData'),'XData');
y=eval(f);
set(get(gca,'UserData'),'YData',y);


function listbox1_CreateFcn(hObject, ~, ~)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'x';'x.^2';'x.^3';'2.^x';'0.5.^x';'sin(x)';...
    'cos(x)';'atan(x)';'sinh(x)';'cosh(x)';'exp(x)';'abs(x)'});
set(hObject,'Value',1);

function edit1_Callback(~, ~, handles)
zmiana_zakresu(handles);

function edit1_CreateFcn(hObject, ~, ~)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','-1');

function edit2_Callback(~, ~, handles)
zmiana_zakresu(handles);

function edit2_CreateFcn(hObject, ~, ~)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0.01');

function popupmenu1_Callback(hObject, ~, ~)
ls=get(hObject,'String');
set(get(gca,'UserData'),'LineStyle',ls{get(hObject,'Value')});


function popupmenu1_CreateFcn(hObject, ~, ~)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'-';':';'-.';'--';'none'});
set(hObject,'Value',1);

function popupmenu2_Callback(hObject, ~, ~)
m=get(hObject,'String');
set(get(gca,'UserData'),'Marker',m{get(hObject,'Value')});

function popupmenu2_CreateFcn(hObject, ~, ~)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'.';'o';'x';'+';'*';'s';'d';'v';'^';'>';'<';'p';'h';'none'});
set(hObject,'Value',1);
set(hObject,'Visible','Off');

function slider1_Callback(hObject, ~, ~)
set(get(gca,'UserData'),'LineWidth',get(hObject,'Value'));

function slider1_CreateFcn(hObject, ~, ~)

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'Min',1);
set(hObject,'Max',21);
set(hObject,'SliderStep',[0.05 0.1]);
set(hObject,'Value',1);

function slider2_Callback(hObject, ~, ~)
set(get(gca,'UserData'),'MarkerSize',get(hObject,'Value'));

function slider2_CreateFcn(hObject, ~, ~)

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'Min',1);
set(hObject,'Max',30);
set(hObject,'SliderStep',[0.05 0.1]);
set(hObject,'Value',5);
set(hObject,'Visible','Off');

function pushbutton1_Callback(~, ~, ~)
close(GUI2);

function checkbox1_Callback(hObject, ~, ~)
if get(hObject,'Value')
    grid on;
else
    grid off;
end
function radiobutton1_Callback(~, ~, ~)


function radiobutton2_Callback(~, ~, ~)


function radiobutton1_CreateFcn(hObject, ~, ~)
set(hObject,'String','Linia');
set(hObject,'Value',1);


function radiobutton2_CreateFcn(hObject, ~, ~)
set(hObject,'String','Punkty');
set(hObject,'Value',0);


function pushbutton1_CreateFcn(hObject, ~, ~)
set(hObject,'String','Zamknij');


function checkbox1_CreateFcn(hObject, ~, ~)
set(hObject,'String','Linie siatki');
set(hObject,'Value',0);


function edit3_Callback(~, ~, handles)
zmiana_zakresu(handles);

function edit3_CreateFcn(hObject, ~, ~)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','1');


function uipanel1_SelectionChangeFcn(~, eventdata, handles)
if eventdata.NewValue==handles.radiobutton1
    set(handles.popupmenu1,'Visible','on');
    set(handles.slider2,'Visible','off');
    set(handles.popupmenu2,'Visible','off');
    popupmenu1_Callback(handles.popupmenu1);
    set(get(gca,'UserData'),'Marker','none');
else
    set(handles.slider2,'Visible','on');
    set(handles.popupmenu2,'Visible','on');
    set(handles.popupmenu1,'Visible','off');
    set(get(gca,'UserData'),'LineStyle','none');
    popupmenu2_Callback(handles.popupmenu2);
end


function uipanel1_CreateFcn(hObject, ~, ~)
set(hObject,'Title','Styl');

function zmiana_zakresu(handles)
a=str2double(get(handles.edit1,'String'));
k=str2double(get(handles.edit2,'String'));
b=str2double(get(handles.edit3,'String'));
fs=get(handles.listbox1,'String');
f=fs{get(handles.listbox1,'Value')};
x=a:k:b;
y=eval(f);
set(get(gca,'UserData'),'XData',x);
set(get(gca,'UserData'),'YData',y);
set(gca,'XLim',[a b]);
