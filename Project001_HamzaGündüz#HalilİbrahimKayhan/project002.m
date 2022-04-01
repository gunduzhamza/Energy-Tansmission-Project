function varargout = project002(varargin)
% PROJECT002 MATLAB code for project002.fig
%      PROJECT002, by itself, creates a new PROJECT002 or raises the existing
%      singleton*.
%
%      H = PROJECT002 returns the handle to a new PROJECT002 or the handle to
%      the existing singleton*.
%
%      PROJECT002('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT002.M with the given input arguments.
%
%      PROJECT002('Property','Value',...) creates a new PROJECT002 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project002_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project002_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project002

% Last Modified by GUIDE v2.5 13-Dec-2021 14:32:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project002_OpeningFcn, ...
                   'gui_OutputFcn',  @project002_OutputFcn, ...
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


% --- Executes just before project002 is made visible.
function project002_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project002 (see VARARGIN)

% Choose default command line output for project002
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project002 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project002_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=str2double(get(handles.editR,'String'));
L=str2double(get(handles.editmH,'String'));
V=str2double(get(handles.editVolt,'String'));
long=str2double(get(handles.editL,'String'));
Frq=str2double(get(handles.editFrq,'String'));
pF=str2double(get(handles.editpF,'String'));
MVA=str2double(get(handles.editMVA,'String'));
angl=acosd(pF);
J=(2*pi*Frq*L*10^-3);
Z=complex(r*long,J*long);
VR=V*exp(deg2rad(0)*1i)/sqrt(3);
SR=MVA*exp(deg2rad(angl)*1i);
IR=conj(SR)*10^3/(3*conj(VR));

switch get(eventdata.NewValue,'Tag')
    case 'Lagg'
        VS=VR+Z*IR*(10^-3); %calculation of sending voltage end
        VSl2l=sqrt(3)*abs(VS); %calculation of sending end line-to-line voltage magnitude 
        SS=3*VS*conj(IR)*10^-3; %calculation of sending end power
        VR_percent=((VSl2l-V)/V)*100;%calculation of Voltage regulation
        n=(real(SR)/real(SS))*100;%calculation of transmission line efficiency
        A1=sprintf('%.2f<%.2f kV\n',abs(VS),rad2deg(angle(VS)));
        A2=sprintf('%.2f<%.2f kV\n',abs(SS),rad2deg(angle(SS)));

        set(handles.textVS,'String',A1);
        set(handles.textSS,'String',A2);
        set(handles.edit10,'String',VR_percent);
        set(handles.edit11,'String',n);

        set(handles.textVS, 'Visible', 'On');
        set(handles.textSS, 'Visible', 'On');
        set(handles.edit10, 'Visible', 'On');
        set(handles.edit11, 'Visible', 'On');

    case 'Lead'
        IR=conj(IR);
        VS=VR+Z*IR*(10^-3); %calculation of sending voltage end
        VSl2l=sqrt(3)*abs(VS); %calculation of sending end line-to-line voltage magnitude 
        SS=3*VS*conj(IR)*10^-3; %calculation of sending end power
        VR_percent=((VSl2l-V)/V)*100;%calculation of Voltage regulation
        n=(real(SR)/real(SS))*100;%calculation of transmission line efficiency
        A1=sprintf('%.2f<%.2f kV\n',abs(VS),rad2deg(angle(VS)));
        A2=sprintf('%.2f<%.2f kV\n',abs(SS),rad2deg(angle(SS)));

        set(handles.textVS,'String',A1);
        set(handles.textSS,'String',A2);
        set(handles.edit10,'String',VR_percent);
        set(handles.edit11,'String',n);
        
        set(handles.textVS, 'Visible', 'On');
        set(handles.textSS, 'Visible', 'On');
        set(handles.edit10, 'Visible', 'On');
        set(handles.edit11, 'Visible', 'On');

end



function editR_Callback(hObject, eventdata, handles)
% hObject    handle to editR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editR as text
%        str2double(get(hObject,'String')) returns contents of editR as a double


% --- Executes during object creation, after setting all properties.
function editR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editmH_Callback(hObject, eventdata, handles)
% hObject    handle to editmH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editmH as text
%        str2double(get(hObject,'String')) returns contents of editmH as a double


% --- Executes during object creation, after setting all properties.
function editmH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editmH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVolt_Callback(hObject, eventdata, handles)
% hObject    handle to editVolt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVolt as text
%        str2double(get(hObject,'String')) returns contents of editVolt as a double


% --- Executes during object creation, after setting all properties.
function editVolt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVolt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editL_Callback(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editL as text
%        str2double(get(hObject,'String')) returns contents of editL as a double


% --- Executes during object creation, after setting all properties.
function editL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFrq_Callback(hObject, eventdata, handles)
% hObject    handle to editFrq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFrq as text
%        str2double(get(hObject,'String')) returns contents of editFrq as a double


% --- Executes during object creation, after setting all properties.
function editFrq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editpF_Callback(hObject, eventdata, handles)
% hObject    handle to editpF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editpF as text
%        str2double(get(hObject,'String')) returns contents of editpF as a double


% --- Executes during object creation, after setting all properties.
function editpF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editpF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMVA_Callback(hObject, eventdata, handles)
% hObject    handle to editMVA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMVA as text
%        str2double(get(hObject,'String')) returns contents of editMVA as a double


% --- Executes during object creation, after setting all properties.
function editMVA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMVA (see GCBO)
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
