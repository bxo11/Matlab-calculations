function varargout = GUI3(varargin)
% GUI3 MATLAB code for GUI3.fig
%      GUI3, by itself, creates a new GUI3 or raises the existing
%      singleton*.
%
%      H = GUI3 returns the handle to a new GUI3 or the handle to
%      the existing singleton*.
%
%      GUI3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI3.M with the given input arguments.
%
%      GUI3('Property','Value',...) creates a new GUI3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI3

% Last Modified by GUIDE v2.5 05-Apr-2016 13:20:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI3_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI3_OutputFcn, ...
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


% --- Executes just before GUI3 is made visible.
function GUI3_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI3 (see VARARGIN)

% Choose default command line output for GUI3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI3_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function figure1_CreateFcn(~, ~, ~)

function uitable1_CreateFcn(hObject, ~, ~)
set(hObject,'Data',zeros(4))
set(hObject,'ColumnEditable',true(1,4));

function Untitled_1_Callback(~, ~, ~)

function Untitled_5_Callback(~, ~, handles)
ind=get(handles.uitable1,'UserData');
D=get(handles.uitable1,'Data');
D(ind(:,1),ind(:,2))=-D(ind(:,1),ind(:,2));
set(handles.uitable1,'Data',D);

function Untitled_6_Callback(~, ~, handles)
ind=get(handles.uitable1,'UserData');
D=get(handles.uitable1,'Data');
D(ind(:,1),ind(:,2))=1./D(ind(:,1),ind(:,2));
set(handles.uitable1,'Data',D);

function Untitled_2_Callback(~, ~, handles)
set(handles.uitable1,'Data',rand(4))

function Untitled_3_Callback(~, ~, handles)
set(handles.uitable1,'Data',randn(4))

function Untitled_4_Callback(~, ~, ~)

function uitable1_CellSelectionCallback(hObject, eventdata, handles)
set(hObject,'UserData',eventdata.Indices);
if ~isempty(eventdata.Indices)
    set(hObject,'UIContextMenu',handles.Untitled_4);
else
    set(hObject,'UIContextMenu',[]);
end

function uitable1_CellEditCallback(hObject, eventdata, ~)
if isnan(eventdata.NewData)
    D=get(hObject,'Data');
    D(eventdata.Indices(1),eventdata.Indices(2))=eventdata.PreviousData;
    set(hObject,'Data',D);
end
