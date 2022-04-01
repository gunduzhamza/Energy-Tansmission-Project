function varargout = Project02q5(varargin)
% PROJECT02Q5 MATLAB code for Project02q5.fig
%      PROJECT02Q5, by itself, creates a new PROJECT02Q5 or raises the existing
%      singleton*.
%
%      H = PROJECT02Q5 returns the handle to a new PROJECT02Q5 or the handle to
%      the existing singleton*.
%
%      PROJECT02Q5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT02Q5.M with the given input arguments.
%
%      PROJECT02Q5('Property','Value',...) creates a new PROJECT02Q5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project02q5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project02q5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project02q5

% Last Modified by GUIDE v2.5 02-Jan-2022 18:37:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project02q5_OpeningFcn, ...
                   'gui_OutputFcn',  @Project02q5_OutputFcn, ...
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


% --- Executes just before Project02q5 is made visible.
function Project02q5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project02q5 (see VARARGIN)

% Choose default command line output for Project02q5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project02q5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project02q5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editV1_Callback(hObject, eventdata, handles)
% hObject    handle to editV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1 as text
%        str2double(get(hObject,'String')) returns contents of editV1 as a double


% --- Executes during object creation, after setting all properties.
function editV1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2_Callback(hObject, eventdata, handles)
% hObject    handle to editV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2 as text
%        str2double(get(hObject,'String')) returns contents of editV2 as a double


% --- Executes during object creation, after setting all properties.
function editV2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3_Callback(hObject, eventdata, handles)
% hObject    handle to editV3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3 as text
%        str2double(get(hObject,'String')) returns contents of editV3 as a double


% --- Executes during object creation, after setting all properties.
function editV3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI1j_Callback(hObject, eventdata, handles)
% hObject    handle to editI1j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI1j as text
%        str2double(get(hObject,'String')) returns contents of editI1j as a double


% --- Executes during object creation, after setting all properties.
function editI1j_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI1j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI2j_Callback(hObject, eventdata, handles)
% hObject    handle to editI2j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI2j as text
%        str2double(get(hObject,'String')) returns contents of editI2j as a double


% --- Executes during object creation, after setting all properties.
function editI2j_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI2j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI3j_Callback(hObject, eventdata, handles)
% hObject    handle to editI3j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI3j as text
%        str2double(get(hObject,'String')) returns contents of editI3j as a double


% --- Executes during object creation, after setting all properties.
function editI3j_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI3j (see GCBO)
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
%Converting inputs from string to integers
V1r=str2double(get(handles.editV1r,'String'));
V2r=str2double(get(handles.editV2r,'String'));
V3r=str2double(get(handles.editV3r,'String'));
V1i=str2double(get(handles.editV1i,'String'));
V2i=str2double(get(handles.editV2i,'String'));
V3i=str2double(get(handles.editV3i,'String'));

I1r=str2double(get(handles.editI1r,'String'));
I2r=str2double(get(handles.editI2r,'String'));
I3r=str2double(get(handles.editI3r,'String'));
I1j=str2double(get(handles.editI1j,'String'));
I2j=str2double(get(handles.editI2j,'String'));
I3j=str2double(get(handles.editI3j,'String'));

%Putting the numbers in complex form...
V1=complex(V1r,V1i);
V2=complex(V2r,V2i);
V3=complex(V3r,V3i);
I1=complex(I1r,I1j);
I2=complex(I2r,I2j);
I3=complex(I3r,I3j);

%Taking their matrices
Vabc=[V1;V2;V3];
Iabc=[I1;I2;I3];
%The calculation of number a
a=complex(1*cos(deg2rad(120)),1*sin(deg2rad(120)));
A=[1 1 1;1 a^2 a;1 a a^2];%a into the matrix form

S=transpose(Vabc)*conj(Iabc); %calculation Three phese complex power
V012=inv(A)*Vabc; %Calculation of sequence voltage matrix
I012=inv(A)*Iabc; %Calculation of sequence current matrix

%Seperating them into 3 parts
...both current and voltage
Vfirst=V012(1,1);
Vsecond=V012(2,1);
Vthird=V012(3,1);
Ifirst=I012(1,1);
Isecond=I012(2,1);
Ithird=I012(3,1);
%calculation Three phese complex power of V012 andI012
S012=3*transpose(V012)*conj(I012);
%The print of results...
S3p=sprintf('%.4f < %.f VA',abs(S),rad2deg(angle(S)));
S012_=sprintf('%.4f < %.f VA',abs(S012),rad2deg(angle(S012)));
...V012_=sprintf('%.4f < %.f\n',abs(V012),rad2deg(angle(V012)));

Vfirst_=sprintf('%.1f < %.f',abs(Vfirst),rad2deg(angle(Vfirst)));
Vsecond_=sprintf('%.4f < %.f',abs(Vsecond),rad2deg(angle(Vsecond)));
Vthird_=sprintf('%.4f < %.f',abs(Vthird),rad2deg(angle(Vthird)));
Ifirst_=sprintf('%.4f < %.1f',abs(Ifirst),rad2deg(angle(Ifirst)));
Isecond_=sprintf('%.4f < %.f',abs(Isecond),rad2deg(angle(Isecond)));
Ithird_=sprintf('%.4f < %.f',abs(Ithird),rad2deg(angle(Ithird)));

%Sending them into the boxes that we used at gui
set(handles.edit17,'String',S3p);
set(handles.edit18,'String',Vfirst_);
set(handles.edit19,'String',Vsecond_);
set(handles.edit20,'String',Vthird_);
set(handles.edit21,'String',Ifirst_);
set(handles.edit22,'String',Isecond_);
set(handles.edit23,'String',Ithird_);
set(handles.edit24,'String',S012_);

function editI3r_Callback(hObject, eventdata, handles)
% hObject    handle to editI3r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI3r as text
%        str2double(get(hObject,'String')) returns contents of editI3r as a double


% --- Executes during object creation, after setting all properties.
function editI3r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI3r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI2r_Callback(hObject, eventdata, handles)
% hObject    handle to editI2r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI2r as text
%        str2double(get(hObject,'String')) returns contents of editI2r as a double


% --- Executes during object creation, after setting all properties.
function editI2r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI2r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI1r_Callback(hObject, eventdata, handles)
% hObject    handle to editI1r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI1r as text
%        str2double(get(hObject,'String')) returns contents of editI1r as a double


% --- Executes during object creation, after setting all properties.
function editI1r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI1r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3i_Callback(hObject, eventdata, handles)
% hObject    handle to editV3i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3i as text
%        str2double(get(hObject,'String')) returns contents of editV3i as a double


% --- Executes during object creation, after setting all properties.
function editV3i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2i_Callback(hObject, eventdata, handles)
% hObject    handle to editV2i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2i as text
%        str2double(get(hObject,'String')) returns contents of editV2i as a double


% --- Executes during object creation, after setting all properties.
function editV2i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV1i_Callback(hObject, eventdata, handles)
% hObject    handle to editV1i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1i as text
%        str2double(get(hObject,'String')) returns contents of editV1i as a double


% --- Executes during object creation, after setting all properties.
function editV1i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3r_Callback(hObject, eventdata, handles)
% hObject    handle to editV3r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3r as text
%        str2double(get(hObject,'String')) returns contents of editV3r as a double


% --- Executes during object creation, after setting all properties.
function editV3r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2r_Callback(hObject, eventdata, handles)
% hObject    handle to editV2r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2r as text
%        str2double(get(hObject,'String')) returns contents of editV2r as a double


% --- Executes during object creation, after setting all properties.
function editV2r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV1r_Callback(hObject, eventdata, handles)
% hObject    handle to editV1r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1r as text
%        str2double(get(hObject,'String')) returns contents of editV1r as a double


% --- Executes during object creation, after setting all properties.
function editV1r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
