function varargout = Project02q2(varargin)
% PROJECT02Q2 MATLAB code for Project02q2.fig
%      PROJECT02Q2, by itself, creates a new PROJECT02Q2 or raises the existing
%      singleton*.
%
%      H = PROJECT02Q2 returns the handle to a new PROJECT02Q2 or the handle to
%      the existing singleton*.
%
%      PROJECT02Q2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT02Q2.M with the given input arguments.
%
%      PROJECT02Q2('Property','Value',...) creates a new PROJECT02Q2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project02q2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project02q2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project02q2

% Last Modified by GUIDE v2.5 26-Dec-2021 23:28:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project02q2_OpeningFcn, ...
                   'gui_OutputFcn',  @Project02q2_OutputFcn, ...
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


% --- Executes just before Project02q2 is made visible.
function Project02q2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project02q2 (see VARARGIN)

% Choose default command line output for Project02q2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project02q2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project02q2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function editMV_Callback(hObject, eventdata, handles)
% hObject    handle to editMV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMV as text
%        str2double(get(hObject,'String')) returns contents of editMV as a double


% --- Executes during object creation, after setting all properties.
function editMV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editCd_Callback(hObject, eventdata, handles)
% hObject    handle to editCd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCd as text
%        str2double(get(hObject,'String')) returns contents of editCd as a double


% --- Executes during object creation, after setting all properties.
function editCd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSF_Callback(hObject, eventdata, handles)
% hObject    handle to editSF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSF as text
%        str2double(get(hObject,'String')) returns contents of editSF as a double


% --- Executes during object creation, after setting all properties.
function editSF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editDC_Callback(hObject, eventdata, handles)
% hObject    handle to editDC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDC as text
%        str2double(get(hObject,'String')) returns contents of editDC as a double


% --- Executes during object creation, after setting all properties.
function editDC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editIT_Callback(hObject, eventdata, handles)
% hObject    handle to editIT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editIT as text
%        str2double(get(hObject,'String')) returns contents of editIT as a double


% --- Executes during object creation, after setting all properties.
function editIT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editIT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editC0_Callback(hObject, eventdata, handles)
% hObject    handle to editC0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editC0 as text
%        str2double(get(hObject,'String')) returns contents of editC0 as a double


% --- Executes during object creation, after setting all properties.
function editC0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editC0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editC1_Callback(hObject, eventdata, handles)
% hObject    handle to editC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editC1 as text
%        str2double(get(hObject,'String')) returns contents of editC1 as a double


% --- Executes during object creation, after setting all properties.
function editC1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editC2_Callback(hObject, eventdata, handles)
% hObject    handle to editC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editC2 as text
%        str2double(get(hObject,'String')) returns contents of editC2 as a double


% --- Executes during object creation, after setting all properties.
function editC2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editC2 (see GCBO)
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





% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Taking inputs from the user interface and converting them into integers
F=str2double(get(handles.editFrq,'String'));
V=str2double(get(handles.editMV,'String'));
d=str2double(get(handles.editCd,'String'));
Sf=str2double(get(handles.editSF,'String'));
K=str2double(get(handles.editDC,'String'));
T=str2double(get(handles.editIT,'String'));
%The calculations from the formulas
T=T/1000;
D=d+(2*T);
G=2.303*log10(D/d);
G1=G*Sf;


%we used radio button and the answers of 2. and 3. are in the same panel
... so when we press shield tag we take the results of 2. question and when
...we press unshield tag we take the results of 3. question
switch get(eventdata.NewValue,'Tag')
    case 'shield'
        C0=(0.0892*K)/(G1);
        I0=(0.323*F*K*V)/(1000*G1*sqrt(3));
        X0=(1.79*G1)/(F*K);
       %The calculations of 2. question
       
        C=sprintf('%.2f µF/mi/phase',C0);
        X=sprintf('%.2f kΩ/mi/phase',X0*10^3);
        I=sprintf('%.3f A/mi/phase',I0);

        set(handles.editC0,'String',C);
        set(handles.editC1,'String',C);
        set(handles.editC2,'String',C);
        set(handles.editX0,'String',X);
        set(handles.editX1,'String',X);
        set(handles.editX2,'String',X);
        set(handles.editI0,'String',I);
        set(handles.editI1,'String',I);
        set(handles.editI2,'String',I);

    case 'unshield'
        %The calculations of 3. question
        C0=(0.0892*K)/(G1);
        I0=(0.323*F*K*V)/(1000*G1*sqrt(3));
        X0=(1.79*G)/(G1);
        
        C1=(0.267*K)/(G1);
        X1=(0.597*G1)/(F*K);
        I1=(0.97*F*K*V)/(1000*G1*sqrt(3));

        C2=C1;
        X2=X1;
        I2=I1;
        
        C0_=sprintf('%.2f µF/mi/phase',C0);
        C12=sprintf('%.2f µF/mi/phase',C1);
        X0_=sprintf('%.2f MΩ/mi/phase',X0);
        X12=sprintf('%.2f kΩ/mi/phase',X1*10^3);
        I0_=sprintf('%.3f A/mi/phase',I0);
        I12=sprintf('%.3f A/mi/phase',I1);
        %The outputs
        set(handles.editC0,'String',C0_);
        set(handles.editC1,'String',C12);
        set(handles.editC2,'String',C12);
        set(handles.editX0,'String',X0_);
        set(handles.editX1,'String',X12);
        set(handles.editX2,'String',X12);
        set(handles.editI0,'String',I0_);
        set(handles.editI1,'String',I12);
        set(handles.editI2,'String',I12);
        




end



function editX0_Callback(hObject, eventdata, handles)
% hObject    handle to editX0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX0 as text
%        str2double(get(hObject,'String')) returns contents of editX0 as a double


% --- Executes during object creation, after setting all properties.
function editX0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editX1_Callback(hObject, eventdata, handles)
% hObject    handle to editX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX1 as text
%        str2double(get(hObject,'String')) returns contents of editX1 as a double


% --- Executes during object creation, after setting all properties.
function editX1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editX2_Callback(hObject, eventdata, handles)
% hObject    handle to editX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX2 as text
%        str2double(get(hObject,'String')) returns contents of editX2 as a double


% --- Executes during object creation, after setting all properties.
function editX2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI0_Callback(hObject, eventdata, handles)
% hObject    handle to editI0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI0 as text
%        str2double(get(hObject,'String')) returns contents of editI0 as a double


% --- Executes during object creation, after setting all properties.
function editI0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI1_Callback(hObject, eventdata, handles)
% hObject    handle to editI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI1 as text
%        str2double(get(hObject,'String')) returns contents of editI1 as a double


% --- Executes during object creation, after setting all properties.
function editI1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editI2_Callback(hObject, eventdata, handles)
% hObject    handle to editI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editI2 as text
%        str2double(get(hObject,'String')) returns contents of editI2 as a double


% --- Executes during object creation, after setting all properties.
function editI2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
