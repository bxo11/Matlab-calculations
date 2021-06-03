function varargout = GUI1(varargin)
% GUI1 MATLAB code for GUI1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI1

% Last Modified by GUIDE v2.5 31-Mar-2015 19:36:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI1_OutputFcn, ...
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


% --- Executes just before GUI1 is made visible.
function GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI1 (see VARARGIN)

% Choose default command line output for GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
pozycja_myszki=get(hObject,'CurrentPoint');
set(handles.text1,'String',num2str(pozycja_myszki(1)));
set(handles.text2,'String',num2str(pozycja_myszki(2)));

function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
ktory_przycisk=get(hObject,'SelectionType');
if strcmp(ktory_przycisk,'normal')
    set(handles.text3,'String','LEWY');
elseif strcmp(ktory_przycisk,'extend')
    set(handles.text3,'String','�RODKOWY');
elseif strcmp(ktory_przycisk,'alt')
    set(handles.text3,'String','PRAWY');
else
    set(handles.text3,'String','PODW�JNE');
end

function figure1_WindowButtonUpFcn(hObject, eventdata, handles)
set(handles.text3,'String','');

function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
set(handles.text4,'String',eventdata.Key);
set(handles.text5,'String',eventdata.Modifier);
set(handles.text6,'String',eventdata.Character);

function figure1_WindowKeyReleaseFcn(hObject, eventdata, handles)
set(handles.text4,'String','');
set(handles.text5,'String','');
set(handles.text6,'String','');

function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
if eventdata.VerticalScrollCount>0
    set(handles.text7,'String','W Dӣ');
elseif eventdata.VerticalScrollCount<0
    set(handles.text7,'String','W G�R�');
end