function varargout = Project02q1(varargin)
% PROJECT02Q1 MATLAB code for Project02q1.fig
%      PROJECT02Q1, by itself, creates a new PROJECT02Q1 or raises the existing
%      singleton*.
%
%      H = PROJECT02Q1 returns the handle to a new PROJECT02Q1 or the handle to
%      the existing singleton*.
%
%      PROJECT02Q1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT02Q1.M with the given input arguments.
%
%      PROJECT02Q1('Property','Value',...) creates a new PROJECT02Q1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project02q1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project02q1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project02q1

% Last Modified by GUIDE v2.5 26-Dec-2021 13:20:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project02q1_OpeningFcn, ...
                   'gui_OutputFcn',  @Project02q1_OutputFcn, ...
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


% --- Executes just before Project02q1 is made visible.
function Project02q1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project02q1 (see VARARGIN)

% Choose default command line output for Project02q1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project02q1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project02q1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editd_Callback(hObject, eventdata, handles)
% hObject    handle to editd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editd as text
%        str2double(get(hObject,'String')) returns contents of editd as a double


% --- Executes during object creation, after setting all properties.
function editd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editT_Callback(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editT as text
%        str2double(get(hObject,'String')) returns contents of editT as a double


% --- Executes during object creation, after setting all properties.
function editT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMT_Callback(hObject, eventdata, handles)
% hObject    handle to editMT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMT as text
%        str2double(get(hObject,'String')) returns contents of editMT as a double


% --- Executes during object creation, after setting all properties.
function editMT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMT (see GCBO)
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



function editCR_Callback(hObject, eventdata, handles)
% hObject    handle to editCR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCR as text
%        str2double(get(hObject,'String')) returns contents of editCR as a double


% --- Executes during object creation, after setting all properties.
function editCR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCR (see GCBO)
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



function editXm_Callback(hObject, eventdata, handles)
% hObject    handle to editXm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editXm as text
%        str2double(get(hObject,'String')) returns contents of editXm as a double


% --- Executes during object creation, after setting all properties.
function editXm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editXm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editrs_Callback(hObject, eventdata, handles)
% hObject    handle to editrs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editrs as text
%        str2double(get(hObject,'String')) returns contents of editrs as a double


% --- Executes during object creation, after setting all properties.
function editrs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editrs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editDr_Callback(hObject, eventdata, handles)
% hObject    handle to editDr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDr as text
%        str2double(get(hObject,'String')) returns contents of editDr as a double


% --- Executes during object creation, after setting all properties.
function editDr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editra_Callback(hObject, eventdata, handles)
% hObject    handle to editra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editra as text
%        str2double(get(hObject,'String')) returns contents of editra as a double


% --- Executes during object creation, after setting all properties.
function editra_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSL_Callback(hObject, eventdata, handles)
% hObject    handle to editSL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSL as text
%        str2double(get(hObject,'String')) returns contents of editSL as a double


% --- Executes during object creation, after setting all properties.
function editSL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPs_Callback(hObject, eventdata, handles)
% hObject    handle to editPs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPs as text
%        str2double(get(hObject,'String')) returns contents of editPs as a double


% --- Executes during object creation, after setting all properties.
function editPs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPs (see GCBO)
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
d=str2double(get(handles.editd,'String'));
T=str2double(get(handles.editT,'String'));
MT=str2double(get(handles.editMT,'String'));
L=str2double(get(handles.editL,'String'));
rc=str2double(get(handles.editCR,'String'));
F=str2double(get(handles.editFrq,'String'));
%The calculations made by using formulas
ri=(d/2)+(T*10^-3);
r0=(ri)+(MT*10^-3);
S=r0*2;
Xm=0.2794*(F/60)*log10(2*S/(r0+ri));

rs=0.2/((r0+ri)*(r0-ri));
Dr=rs*(Xm^2/(rs^2+Xm^2));
ra=rc+Dr;
Sheathloss=Dr/rc;
Ps=3*400^2*(Dr);

%The results output settings
Xm1=sprintf('%.4f Ω/phase',Xm*L);
rs1=sprintf('%.4f Ω/phase',rs*L);
Dr1=sprintf('%.4f Ω/phase',Dr*L);
ra1=sprintf('%.4f Ω/phase',ra*L);
Sheathloss1=sprintf('%.2f%%',Sheathloss*100);
Ps1=sprintf('%.0f W',Ps*L);
%Setting the answers into the user interface
set(handles.editXm,'String',Xm1);
set(handles.editrs,'String',rs1);
set(handles.editDr,'String',Dr1);
set(handles.editra,'String',ra1);
set(handles.editSL,'String',Sheathloss1);
set(handles.editPs,'String',Ps1);
%These are results panel are invisible but whenever the press the button 
...we make them visible
set(handles.editXm, 'Visible', 'On');
set(handles.editrs, 'Visible', 'On');
set(handles.editDr, 'Visible', 'On');
set(handles.editra, 'Visible', 'On');
set(handles.editSL, 'Visible', 'On');
set(handles.editPs, 'Visible', 'On');


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
