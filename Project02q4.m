function varargout = Project02q4(varargin)
% PROJECT02Q4 MATLAB code for Project02q4.fig
%      PROJECT02Q4, by itself, creates a new PROJECT02Q4 or raises the existing
%      singleton*.
%
%      H = PROJECT02Q4 returns the handle to a new PROJECT02Q4 or the handle to
%      the existing singleton*.
%
%      PROJECT02Q4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT02Q4.M with the given input arguments.
%
%      PROJECT02Q4('Property','Value',...) creates a new PROJECT02Q4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project02q4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project02q4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project02q4

% Last Modified by GUIDE v2.5 01-Jan-2022 18:14:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project02q4_OpeningFcn, ...
                   'gui_OutputFcn',  @Project02q4_OutputFcn, ...
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


% --- Executes just before Project02q4 is made visible.
function Project02q4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project02q4 (see VARARGIN)

% Choose default command line output for Project02q4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project02q4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project02q4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editVam_Callback(hObject, eventdata, handles)
% hObject    handle to editVam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVam as text
%        str2double(get(hObject,'String')) returns contents of editVam as a double


% --- Executes during object creation, after setting all properties.
function editVam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVbm_Callback(hObject, eventdata, handles)
% hObject    handle to editVbm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVbm as text
%        str2double(get(hObject,'String')) returns contents of editVbm as a double


% --- Executes during object creation, after setting all properties.
function editVbm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVbm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVcm_Callback(hObject, eventdata, handles)
% hObject    handle to editVcm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVcm as text
%        str2double(get(hObject,'String')) returns contents of editVcm as a double


% --- Executes during object creation, after setting all properties.
function editVcm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVcm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVap_Callback(hObject, eventdata, handles)
% hObject    handle to editVap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVap as text
%        str2double(get(hObject,'String')) returns contents of editVap as a double


% --- Executes during object creation, after setting all properties.
function editVap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVbp_Callback(hObject, eventdata, handles)
% hObject    handle to editVbp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVbp as text
%        str2double(get(hObject,'String')) returns contents of editVbp as a double


% --- Executes during object creation, after setting all properties.
function editVbp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVbp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVcp_Callback(hObject, eventdata, handles)
% hObject    handle to editVcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVcp as text
%        str2double(get(hObject,'String')) returns contents of editVcp as a double


% --- Executes during object creation, after setting all properties.
function editVcp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Taking inputs from the user interface and converting them into integers
Vam=str2double(get(handles.editVam,'String'));
Vap=str2double(get(handles.editVap,'String'));
Vbm=str2double(get(handles.editVbm,'String'));
Vbp=str2double(get(handles.editVbp,'String'));
Vcm=str2double(get(handles.editVcm,'String'));
Vcp=str2double(get(handles.editVcp,'String'));
%calculations of the question
a=complex(1*cos(deg2rad(120)),1*sin(deg2rad(120)));

Va=complex(Vam*cos(deg2rad(Vap)),Vam*sin(deg2rad(Vap)));
Vb=complex(Vbm*cos(deg2rad(Vbp)),Vbm*sin(deg2rad(Vbp)));
Vc=complex(Vcm*cos(deg2rad(Vcp)),Vcm*sin(deg2rad(Vcp)));

Va0=(1/3)*(Va+Vb+Vc);
Va1=(1/3)*(Va+(a*Vb)+(a^2*Vc));
Va2=(1/3)*(Va+(a^2*Vb)+(a*Vc));

Vb0=Va0;
Vb1=a^2*Va1;
Vb2=a*Va2;

Vc0=Va0;
Vc1=a*Va1;
Vc2=a^2*Va2;
%Taking outputs with respect to polar coordinates
Va0_=sprintf('%.2f < %.1f V',abs(Va0),rad2deg(angle(Va0)));
Va1_=sprintf('%.2f < %.1f V',abs(Va1),rad2deg(angle(Va1)));
Va2_=sprintf('%.2f < %.1f V',abs(Va2),rad2deg(angle(Va2)));

Vb0_=sprintf('%.2f < %.1f V',abs(Vb0),rad2deg(angle(Vb0)));
Vb1_=sprintf('%.2f < %.1f V',abs(Vb1),rad2deg(angle(Vb1)));
Vb2_=sprintf('%.2f < %.1f V',abs(Vb2),rad2deg(angle(Vb2)));

Vc0_=sprintf('%.2f < %.1f V',abs(Vc0),rad2deg(angle(Vc0)));
Vc1_=sprintf('%.2f < %.1f V',abs(Vc1),rad2deg(angle(Vc1)));
Vc2_=sprintf('%.2f < %.1f V',abs(Vc2),rad2deg(angle(Vc2)));
%setting the outputs to the rigth directions
set(handles.text8,'String',Va0_);
set(handles.text9,'String',Va1_);
set(handles.text10,'String',Va2_);
set(handles.text11,'String',Vb0_);
set(handles.text12,'String',Vb1_);
set(handles.text13,'String',Vb2_);
set(handles.text14,'String',Vc0_);
set(handles.text15,'String',Vc1_);
set(handles.text16,'String',Vc2_);
