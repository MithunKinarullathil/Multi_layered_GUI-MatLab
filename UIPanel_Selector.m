function varargout = UIPanel_Selector(varargin)
% UIPANEL_SELECTOR MATLAB code for UIPanel_Selector.fig
%      UIPANEL_SELECTOR, by itself, creates a new UIPANEL_SELECTOR or raises the existing
%      singleton*.
%
%      H = UIPANEL_SELECTOR returns the handle to a new UIPANEL_SELECTOR or the handle to
%      the existing singleton*.
%
%      UIPANEL_SELECTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UIPANEL_SELECTOR.M with the given input arguments.
%
%      UIPANEL_SELECTOR('Property','Value',...) creates a new UIPANEL_SELECTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UIPanel_Selector_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UIPanel_Selector_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UIPanel_Selector

% Last Modified by GUIDE v2.5 19-Aug-2016 13:01:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UIPanel_Selector_OpeningFcn, ...
                   'gui_OutputFcn',  @UIPanel_Selector_OutputFcn, ...
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


% --- Executes just before UIPanel_Selector is made visible.
function UIPanel_Selector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UIPanel_Selector (see VARARGIN)

% Choose default command line output for UIPanel_Selector
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UIPanel_Selector wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UIPanel_Selector_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents = cellstr(get(hObject,'String'));
contents = contents{get(hObject,'Value')}

switch contents
    case 'Panel1'
        set(handles.uipanel1,'Visible','on');
        set(handles.uipanel3,'Visible','off');
        set(handles.uipanel4,'Visible','off');
    case 'Panel2'
        set(handles.uipanel1,'Visible','off');
        set(handles.uipanel3,'Visible','on');
        set(handles.uipanel4,'Visible','off');
    case 'Panel3'
        set(handles.uipanel1,'Visible','off');  
        set(handles.uipanel3,'Visible','off');
        set(handles.uipanel4,'Visible','on');
    otherwise
end
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
