function varargout = project003(varargin)
% PROJECT003 MATLAB code for project003.fig
%      PROJECT003, by itself, creates a new PROJECT003 or raises the existing
%      singleton*.
%
%      H = PROJECT003 returns the handle to a new PROJECT003 or the handle to
%      the existing singleton*.
%
%      PROJECT003('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT003.M with the given input arguments.
%
%      PROJECT003('Property','Value',...) creates a new PROJECT003 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project003_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project003_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project003

% Last Modified by GUIDE v2.5 15-Dec-2021 00:37:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project003_OpeningFcn, ...
                   'gui_OutputFcn',  @project003_OutputFcn, ...
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


% --- Executes just before project003 is made visible.
function project003_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project003 (see VARARGIN)

% Choose default command line output for project003
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project003 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project003_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnCalculate.
function btnCalculate_Callback(hObject, eventdata, handles)
% hObject    handle to btnCalculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S=str2double(get(handles.editAP,'String'));
V=str2double(get(handles.editV,'String'));
f=str2double(get(handles.editF,'String'));
pF=str2double(get(handles.editpF,'String'));
l=str2double(get(handles.editL,'String'));
r=str2double(get(handles.editR,'String'));
x=str2double(get(handles.editX,'String'));
y=str2double(get(handles.editY,'String'));

if (l<80)
    Length=sprintf('\n\n\nShort');
elseif (l>80 && l<250)
    Length=sprintf('\n\n\nMedium');

else
    Length=sprintf('\n\n\nLong');
end

Z=complex(r,x)*100; %Calculating impedance
Y_shunt=1i*y*l; %calculating shunt admittance
A=((Z*Y_shunt)/2)+1;    
D=((Z*Y_shunt)/2)+1;   ....Calculations of ABCD...
B=Z;
C=Y_shunt*(((Z*Y_shunt)/4)+1);
Z1=sprintf('%.1f+i%.1f Ω',real(Z),imag(Z));
Y_shunt1=sprintf('i%.1f*(10^-4) S',imag(Y_shunt*10^4));
A1=sprintf('%.3f<%.3f',abs(A),rad2deg(angle(A)));
B1=sprintf('%.3f<%.2f',abs(B),rad2deg(angle(B)));
C1=sprintf('%.3f*10^(-4)<%.2f',abs(C)*10^4,rad2deg(angle(C)));
D1=sprintf('%.3f<%.3f',abs(D),rad2deg(angle(D)));

theta=acosd(pF); %giving power factor theta variable
VR=V/sqrt(3); %calculation of the supplying rated voltage
SR=200*exp(deg2rad(theta)*1i); %Converting apperant power to compex form
IR=SR/(3*VR); %for the conjugate of current we used IR 
IR=conj(IR); %taking conjugate of IR to find the normal... 
             ...value of rated current
K=[A B ;C D]*[VR ;IR]; %matris calculation of IS VS
VS=K(1,1); %Giving the first value of matris to the sending end voltage
IS=K(2,1); %Giving the second value of matris to the sending end current
VR_reg=(abs(VS)-abs(VR))/abs(VR)*100; %calculation of voltage regulation

VS1=sprintf('%.2f<%.2f V',abs(VS),rad2deg(angle(VS)));
VR_reg1=sprintf('%.2f',VR_reg);

SS=3*VS*conj(IS);
Ps=real(SS);
Pr=real(SR);
n=(Pr/Ps)*100;
n1=sprintf('%.2f',n);

set(handles.textLsize,'String',Length);
set(handles.textZ,'String',Z1);
set(handles.textS,'String',Y_shunt1);
set(handles.textA,'String',A1);
set(handles.textB,'String',B1);
set(handles.textC,'String',C1);
set(handles.textD,'String',D1);
set(handles.textSE,'String',VS1);
set(handles.textVR,'String',VR_reg1);
set(handles.textN,'String',n1);

 set(handles.textZ, 'Visible', 'On');
 set(handles.textS, 'Visible', 'On');
 set(handles.textA, 'Visible', 'On');
 set(handles.textB, 'Visible', 'On');
 set(handles.textC, 'Visible', 'On');
 set(handles.textD, 'Visible', 'On');
 set(handles.textSE, 'Visible', 'On');
 set(handles.textVR, 'Visible', 'On');
 set(handles.textN, 'Visible', 'On');
 set(handles.textLsize, 'Visible', 'On');

 
function editAP_Callback(hObject, eventdata, handles)
% hObject    handle to editAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAP as text
%        str2double(get(hObject,'String')) returns contents of editAP as a double


% --- Executes during object creation, after setting all properties.
function editAP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV_Callback(hObject, eventdata, handles)
% hObject    handle to editV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV as text
%        str2double(get(hObject,'String')) returns contents of editV as a double


% --- Executes during object creation, after setting all properties.
function editV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editF_Callback(hObject, eventdata, handles)
% hObject    handle to editF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editF as text
%        str2double(get(hObject,'String')) returns contents of editF as a double


% --- Executes during object creation, after setting all properties.
function editF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editF (see GCBO)
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



function editX_Callback(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX as text
%        str2double(get(hObject,'String')) returns contents of editX as a double


% --- Executes during object creation, after setting all properties.
function editX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function editY_Callback(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editY as text
%        str2double(get(hObject,'String')) returns contents of editY as a double


% --- Executes during object creation, after setting all properties.
function editY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
