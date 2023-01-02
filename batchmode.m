function varargout = batchmode(varargin)
% BATCHMODE MATLAB code for batchmode.fig
%      BATCHMODE, by itself, creates a new BATCHMODE or raises the existing
%      singleton*.
%
%      H = BATCHMODE returns the handle to a new BATCHMODE or the handle to
%      the existing singleton*.
%
%      BATCHMODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BATCHMODE.M with the given input arguments.
%
%      BATCHMODE('Property','Value',...) creates a new BATCHMODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before batchmode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to batchmode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help batchmode

% Last Modified by GUIDE v2.5 12-Oct-2018 15:34:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @batchmode_OpeningFcn, ...
                   'gui_OutputFcn',  @batchmode_OutputFcn, ...
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


% --- Executes just before batchmode is made visible.
function batchmode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to batchmode (see VARARGIN)

% Choose default command line output for batchmode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes batchmode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = batchmode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subgpa1 subgpa2 subgpa3 subgpa4 subgpa5 subgpa6 subgpa7 subgpa8 subgpa9 subgpa10 subgpa11 subgpa12
global subcredit1 subcredit2 subcredit3 subcredit4 subcredit5 subcredit6 subcredit7 subcredit8 subcredit9 subcredit10 subcredit11 subcredit12

allgpa=subgpa1+subgpa2+subgpa3+subgpa4+subgpa5+subgpa6+subgpa7+subgpa8+subgpa9+subgpa10+subgpa11+subgpa12;
allcredit=subcredit1+subcredit2+subcredit3+subcredit4+subcredit5+subcredit6+subcredit7+subcredit8+subcredit9+subcredit10+subcredit11+subcredit12;


for i=1:50
    cgpa(i,1)=(allgpa(i,1)/allcredit);
end
assignin('base','cgpa',cgpa)

global idlist
output=[idlist cgpa];

xlswrite('EEE4thsemesterGGPA.xlsx',output,'sheet1')
msgbox('Result Generation Successful')

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
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



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit7
initial=str2double(get(handles.edit7, 'string'));
subcredit7=initial(1,1);
assignin('base','subcredit7',subcredit7)
upload7=uigetfile('.xlsx');
subxl7=xlsread(upload7);

subtotal7=subxl7(:,6);
for i=1:50
    if subtotal7(i,1)>=(subcredit7*80)
        subgrade7(i,1)=4.00;
    elseif subtotal7(i,1)<(subcredit7*80) && subtotal7(i,1)>=(subcredit7*75)
        subgrade7(i,1)=3.75; %A+
    elseif subtotal7(i,1)<(subcredit7*75) && subtotal7(i,1)>=(subcredit7*70)
        subgrade7(i,1)=3.5; %A
    elseif subtotal7(i,1)<(subcredit7*70) && subtotal7(i,1)>=(subcredit7*65)
        subgrade7(i,1)=3.25; %A-
    elseif subtotal7(i,1)<(subcredit7*65) && subtotal7(i,1)>=(subcredit7*60)
        subgrade7(i,1)=3.00; %B+
    elseif subtotal7(i,1)<(subcredit7*60) && subtotal7(i,1)>=(subcredit7*55)
        subgrade7(i,1)=2.50; %B
    elseif subtotal7(i,1)<(subcredit7*55) && subtotal7(i,1)>=(subcredit7*50)
        subgrade7(i,1)=2.00; %C
    elseif subtotal7(i,1)<(subcredit7*50) && subtotal7(i,1)>=(subcredit7*45)
        subgrade7(i,1)=1.50; %D
    else
        subgrade7(i,1)=0.00;
    end
end

global subgpa7
subgpa7=subgrade7*subcredit7;
assignin('base','subgpa7',subgpa7)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit8
initial=str2double(get(handles.edit8, 'string'));
subcredit8=initial(1,1);
assignin('base','subcredit8',subcredit8)
upload8=uigetfile('.xlsx');
subxl8=xlsread(upload8);

subtotal8=subxl8(:,6);
for i=1:50
    if subtotal8(i,1)>=(subcredit8*80)
        subgrade8(i,1)=4.00;
    elseif subtotal8(i,1)<(subcredit8*80) && subtotal8(i,1)>=(subcredit8*75)
        subgrade8(i,1)=3.75; %A+
    elseif subtotal8(i,1)<(subcredit8*75) && subtotal8(i,1)>=(subcredit8*70)
        subgrade8(i,1)=3.5; %A
    elseif subtotal8(i,1)<(subcredit8*70) && subtotal8(i,1)>=(subcredit8*65)
        subgrade8(i,1)=3.25; %A-
    elseif subtotal8(i,1)<(subcredit8*65) && subtotal8(i,1)>=(subcredit8*60)
        subgrade8(i,1)=3.00; %B+
    elseif subtotal8(i,1)<(subcredit8*60) && subtotal8(i,1)>=(subcredit8*55)
        subgrade8(i,1)=2.50; %B
    elseif subtotal8(i,1)<(subcredit8*55) && subtotal8(i,1)>=(subcredit8*50)
        subgrade8(i,1)=2.00; %C
    elseif subtotal8(i,1)<(subcredit8*50) && subtotal8(i,1)>=(subcredit8*45)
        subgrade8(i,1)=1.50; %D
    else
        subgrade8(i,1)=0.00;
    end
end

global subgpa8
subgpa8=subgrade8*subcredit8;
assignin('base','subgpa8',subgpa8)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit9
initial=str2double(get(handles.edit9, 'string'));
subcredit9=initial(1,1);
assignin('base','subcredit9',subcredit9)
upload9=uigetfile('.xlsx');
subxl9=xlsread(upload9);

subtotal9=subxl9(:,6);
for i=1:50
    if subtotal9(i,1)>=(subcredit9*80)
        subgrade9(i,1)=4.00;
    elseif subtotal9(i,1)<(subcredit9*80) && subtotal9(i,1)>=(subcredit9*75)
        subgrade9(i,1)=3.75; %A+
    elseif subtotal9(i,1)<(subcredit9*75) && subtotal9(i,1)>=(subcredit9*70)
        subgrade9(i,1)=3.5; %A
    elseif subtotal9(i,1)<(subcredit9*70) && subtotal9(i,1)>=(subcredit9*65)
        subgrade9(i,1)=3.25; %A-
    elseif subtotal9(i,1)<(subcredit9*65) && subtotal9(i,1)>=(subcredit9*60)
        subgrade9(i,1)=3.00; %B+
    elseif subtotal9(i,1)<(subcredit9*60) && subtotal9(i,1)>=(subcredit9*55)
        subgrade9(i,1)=2.50; %B
    elseif subtotal9(i,1)<(subcredit9*55) && subtotal9(i,1)>=(subcredit9*50)
        subgrade9(i,1)=2.00; %C
    elseif subtotal9(i,1)<(subcredit9*50) && subtotal9(i,1)>=(subcredit9*45)
        subgrade9(i,1)=1.50; %D
    else
        subgrade9(i,1)=0.00;
    end
end

global subgpa9
subgpa9=subgrade9*subcredit9;
assignin('base','subgpa9',subgpa9)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit10
initial=str2double(get(handles.edit10, 'string'));
subcredit10=initial(1,1);
assignin('base','subcredit10',subcredit10)
upload10=uigetfile('.xlsx');
subxl10=xlsread(upload10);

subtotal10=subxl10(:,6);
for i=1:50
    if subtotal10(i,1)>=(subcredit10*80)
        subgrade10(i,1)=4.00;
    elseif subtotal10(i,1)<(subcredit10*80) && subtotal10(i,1)>=(subcredit10*75)
        subgrade10(i,1)=3.75; %A+
    elseif subtotal10(i,1)<(subcredit10*75) && subtotal10(i,1)>=(subcredit10*70)
        subgrade10(i,1)=3.5; %A
    elseif subtotal10(i,1)<(subcredit10*70) && subtotal10(i,1)>=(subcredit10*65)
        subgrade10(i,1)=3.25; %A-
    elseif subtotal10(i,1)<(subcredit10*65) && subtotal10(i,1)>=(subcredit10*60)
        subgrade10(i,1)=3.00; %B+
    elseif subtotal10(i,1)<(subcredit10*60) && subtotal10(i,1)>=(subcredit10*55)
        subgrade10(i,1)=2.50; %B
    elseif subtotal10(i,1)<(subcredit10*55) && subtotal10(i,1)>=(subcredit10*50)
        subgrade10(i,1)=2.00; %C
    elseif subtotal10(i,1)<(subcredit10*50) && subtotal10(i,1)>=(subcredit10*45)
        subgrade10(i,1)=1.50; %D
    else
        subgrade10(i,1)=0.00;
    end
end

global subgpa10
subgpa10=subgrade10*subcredit10;
assignin('base','subgpa10',subgpa10)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit11
initial=str2double(get(handles.edit11, 'string'));
subcredit11=initial(1,1);
assignin('base','subcredit11',subcredit11)
upload11=uigetfile('.xlsx');
subxl11=xlsread(upload11);

subtotal11=subxl11(:,6);
for i=1:50
    if subtotal11(i,1)>=(subcredit11*80)
        subgrade11(i,1)=4.00;
    elseif subtotal11(i,1)<(subcredit11*80) && subtotal11(i,1)>=(subcredit11*75)
        subgrade11(i,1)=3.75; %A+
    elseif subtotal11(i,1)<(subcredit11*75) && subtotal11(i,1)>=(subcredit11*70)
        subgrade11(i,1)=3.5; %A
    elseif subtotal11(i,1)<(subcredit11*70) && subtotal11(i,1)>=(subcredit11*65)
        subgrade11(i,1)=3.25; %A-
    elseif subtotal11(i,1)<(subcredit11*65) && subtotal11(i,1)>=(subcredit11*60)
        subgrade11(i,1)=3.00; %B+
    elseif subtotal11(i,1)<(subcredit11*60) && subtotal11(i,1)>=(subcredit11*55)
        subgrade11(i,1)=2.50; %B
    elseif subtotal11(i,1)<(subcredit11*55) && subtotal11(i,1)>=(subcredit11*50)
        subgrade11(i,1)=2.00; %C
    elseif subtotal11(i,1)<(subcredit11*50) && subtotal11(i,1)>=(subcredit11*45)
        subgrade11(i,1)=1.50; %D
    else
        subgrade11(i,1)=0.00;
    end
end

global subgpa11
subgpa11=subgrade11*subcredit11;
assignin('base','subgpa11',subgpa11)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit12
initial=str2double(get(handles.edit12, 'string'));
subcredit12=initial(1,1);
assignin('base','subcredit12',subcredit12)
upload12=uigetfile('.xlsx');
subxl12=xlsread(upload12);

subtotal12=subxl12(:,6);
for i=1:50
    if subtotal12(i,1)>=(subcredit12*80)
        subgrade12(i,1)=4.00;
    elseif subtotal12(i,1)<(subcredit12*80) && subtotal12(i,1)>=(subcredit12*75)
        subgrade12(i,1)=3.75; %A+
    elseif subtotal12(i,1)<(subcredit12*75) && subtotal12(i,1)>=(subcredit12*70)
        subgrade12(i,1)=3.5; %A
    elseif subtotal12(i,1)<(subcredit12*70) && subtotal12(i,1)>=(subcredit12*65)
        subgrade12(i,1)=3.25; %A-
    elseif subtotal12(i,1)<(subcredit12*65) && subtotal12(i,1)>=(subcredit12*60)
        subgrade12(i,1)=3.00; %B+
    elseif subtotal12(i,1)<(subcredit12*60) && subtotal12(i,1)>=(subcredit12*55)
        subgrade12(i,1)=2.50; %B
    elseif subtotal12(i,1)<(subcredit12*55) && subtotal12(i,1)>=(subcredit12*50)
        subgrade12(i,1)=2.00; %C
    elseif subtotal12(i,1)<(subcredit12*50) && subtotal12(i,1)>=(subcredit12*45)
        subgrade12(i,1)=1.50; %D
    else
        subgrade12(i,1)=0.00;
    end
end

global subgpa12
subgpa12=subgrade12*subcredit12;
assignin('base','subgpa12',subgpa12)
msgbox('Upload Complete')


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
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
global subcredit1
initial=str2double(get(handles.edit1,'string'));
subcredit1=initial(2,1);
assignin('base','subcredit1',subcredit1)
upload1=uigetfile('.xlsx');
subxl1=xlsread(upload1);

global idlist
idlist=subxl1(:,1);
subtotal1=subxl1(:,6);
for i=1:50
    if subtotal1(i,1)>=(subcredit1*80)
        subgrade1(i,1)=4.00;
    elseif subtotal1(i,1)<(subcredit1*80) && subtotal1(i,1)>=(subcredit1*75)
        subgrade1(i,1)=3.75; %A+
    elseif subtotal1(i,1)<(subcredit1*75) && subtotal1(i,1)>=(subcredit1*70)
        subgrade1(i,1)=3.5; %A
    elseif subtotal1(i,1)<(subcredit1*70) && subtotal1(i,1)>=(subcredit1*65)
        subgrade1(i,1)=3.25; %A-
    elseif subtotal1(i,1)<(subcredit1*65) && subtotal1(i,1)>=(subcredit1*60)
        subgrade1(i,1)=3.00; %B+
    elseif subtotal1(i,1)<(subcredit1*60) && subtotal1(i,1)>=(subcredit1*55)
        subgrade1(i,1)=2.50; %B
    elseif subtotal1(i,1)<(subcredit1*55) && subtotal1(i,1)>=(subcredit1*50)
        subgrade1(i,1)=2.00; %C
    elseif subtotal1(i,1)<(subcredit1*50) && subtotal1(i,1)>=(subcredit1*45)
        subgrade1(i,1)=1.50; %D
    else
        subgrade1(i,1)=0.00;
    end
end

global subgpa1
subgpa1=subgrade1*subcredit1;
assignin('base','subgpa1',subgpa1)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit2
initial=str2double(get(handles.edit2, 'string'));
subcredit2=initial(2,1);
assignin('base','subcredit2',subcredit2)
upload2=uigetfile('.xlsx');
subxl2=xlsread(upload2);

subtotal2=subxl2(:,6);
for i=1:50
    if subtotal2(i,1)>=(subcredit2*80)
        subgrade2(i,1)=4.00;
    elseif subtotal2(i,1)<(subcredit2*80) && subtotal2(i,1)>=(subcredit2*75)
        subgrade2(i,1)=3.75; %A+
    elseif subtotal2(i,1)<(subcredit2*75) && subtotal2(i,1)>=(subcredit2*70)
        subgrade2(i,1)=3.5; %A
    elseif subtotal2(i,1)<(subcredit2*70) && subtotal2(i,1)>=(subcredit2*65)
        subgrade2(i,1)=3.25; %A-
    elseif subtotal2(i,1)<(subcredit2*65) && subtotal2(i,1)>=(subcredit2*60)
        subgrade2(i,1)=3.00; %B+
    elseif subtotal2(i,1)<(subcredit2*60) && subtotal2(i,1)>=(subcredit2*55)
        subgrade2(i,1)=2.50; %B
    elseif subtotal2(i,1)<(subcredit2*55) && subtotal2(i,1)>=(subcredit2*50)
        subgrade2(i,1)=2.00; %C
    elseif subtotal2(i,1)<(subcredit2*50) && subtotal2(i,1)>=(subcredit2*45)
        subgrade2(i,1)=1.50; %D
    else
        subgrade2(i,1)=0.00;
    end
end

global subgpa2
subgpa2=subgrade2*subcredit2;
assignin('base','subgpa2',subgpa2)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit3
initial=str2double(get(handles.edit3, 'string'));
subcredit3=initial(2,1);
assignin('base','subcredit3',subcredit3)
upload3=uigetfile('.xlsx');
subxl3=xlsread(upload3);

subtotal3=subxl3(:,6);
for i=1:50
    if subtotal3(i,1)>=(subcredit3*80)
        subgrade3(i,1)=4.00;
    elseif subtotal3(i,1)<(subcredit3*80) && subtotal3(i,1)>=(subcredit3*75)
        subgrade3(i,1)=3.75; %A+
    elseif subtotal3(i,1)<(subcredit3*75) && subtotal3(i,1)>=(subcredit3*70)
        subgrade3(i,1)=3.5; %A
    elseif subtotal3(i,1)<(subcredit3*70) && subtotal3(i,1)>=(subcredit3*65)
        subgrade3(i,1)=3.25; %A-
    elseif subtotal3(i,1)<(subcredit3*65) && subtotal3(i,1)>=(subcredit3*60)
        subgrade3(i,1)=3.00; %B+
    elseif subtotal3(i,1)<(subcredit3*60) && subtotal3(i,1)>=(subcredit3*55)
        subgrade3(i,1)=2.50; %B
    elseif subtotal3(i,1)<(subcredit3*55) && subtotal3(i,1)>=(subcredit3*50)
        subgrade3(i,1)=2.00; %C
    elseif subtotal3(i,1)<(subcredit3*50) && subtotal3(i,1)>=(subcredit3*45)
        subgrade3(i,1)=1.50; %D
    else
        subgrade3(i,1)=0.00;
    end
end

global subgpa3
subgpa3=subgrade3*subcredit3;
assignin('base','subgpa3',subgpa3)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit4
initial=str2double(get(handles.edit4, 'string'));
subcredit4=initial(2,1);
assignin('base','subcredit4',subcredit4)
upload4=uigetfile('.xlsx');
subxl4=xlsread(upload4);

subtotal4=subxl4(:,6);
for i=1:50
    if subtotal4(i,1)>=(subcredit4*80)
        subgrade4(i,1)=4.00;
    elseif subtotal4(i,1)<(subcredit4*80) && subtotal4(i,1)>=(subcredit4*75)
        subgrade4(i,1)=3.75; %A+
    elseif subtotal4(i,1)<(subcredit4*75) && subtotal4(i,1)>=(subcredit4*70)
        subgrade4(i,1)=3.5; %A
    elseif subtotal4(i,1)<(subcredit4*70) && subtotal4(i,1)>=(subcredit4*65)
        subgrade4(i,1)=3.25; %A-
    elseif subtotal4(i,1)<(subcredit4*65) && subtotal4(i,1)>=(subcredit4*60)
        subgrade4(i,1)=3.00; %B+
    elseif subtotal4(i,1)<(subcredit4*60) && subtotal4(i,1)>=(subcredit4*55)
        subgrade4(i,1)=2.50; %B
    elseif subtotal4(i,1)<(subcredit4*55) && subtotal4(i,1)>=(subcredit4*50)
        subgrade4(i,1)=2.00; %C
    elseif subtotal4(i,1)<(subcredit4*50) && subtotal4(i,1)>=(subcredit4*45)
        subgrade4(i,1)=1.50; %D
    else
        subgrade4(i,1)=0.00;
    end
end

global subgpa4
subgpa4=subgrade4*subcredit4;
assignin('base','subgpa4',subgpa4)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit5
initial=str2double(get(handles.edit5, 'string'));
subcredit5=initial(2,1);
assignin('base','subcredit5',subcredit5)
upload5=uigetfile('.xlsx');
subxl5=xlsread(upload5);

subtotal5=subxl5(:,6);
for i=1:50
    if subtotal5(i,1)>=(subcredit5*80)
        subgrade5(i,1)=4.00;
    elseif subtotal5(i,1)<(subcredit5*80) && subtotal5(i,1)>=(subcredit5*75)
        subgrade5(i,1)=3.75; %A+
    elseif subtotal5(i,1)<(subcredit5*75) && subtotal5(i,1)>=(subcredit5*70)
        subgrade5(i,1)=3.5; %A
    elseif subtotal5(i,1)<(subcredit5*70) && subtotal5(i,1)>=(subcredit5*65)
        subgrade5(i,1)=3.25; %A-
    elseif subtotal5(i,1)<(subcredit5*65) && subtotal5(i,1)>=(subcredit5*60)
        subgrade5(i,1)=3.00; %B+
    elseif subtotal5(i,1)<(subcredit5*60) && subtotal5(i,1)>=(subcredit5*55)
        subgrade5(i,1)=2.50; %B
    elseif subtotal5(i,1)<(subcredit5*55) && subtotal5(i,1)>=(subcredit5*50)
        subgrade5(i,1)=2.00; %C
    elseif subtotal5(i,1)<(subcredit5*50) && subtotal5(i,1)>=(subcredit5*45)
        subgrade5(i,1)=1.50; %D
    else
        subgrade5(i,1)=0.00;
    end
end

global subgpa5
subgpa5=subgrade5*subcredit5;
% assignin('base','subgpa5',subgpa5)
msgbox('Upload Complete')

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global subcredit6
initial=str2double(get(handles.edit6, 'string'));
subcredit6=initial(2,1);
assignin('base','subcredit6',subcredit6)
upload6=uigetfile('.xlsx');
subxl6=xlsread(upload6);

subtotal6=subxl6(:,6);
for i=1:50
    if subtotal6(i,1)>=(subcredit6*80)
        subgrade6(i,1)=4.00;
    elseif subtotal6(i,1)<(subcredit6*80) && subtotal6(i,1)>=(subcredit6*75)
        subgrade6(i,1)=3.75; %A+
    elseif subtotal6(i,1)<(subcredit6*75) && subtotal6(i,1)>=(subcredit6*70)
        subgrade6(i,1)=3.5; %A
    elseif subtotal6(i,1)<(subcredit6*70) && subtotal6(i,1)>=(subcredit6*65)
        subgrade6(i,1)=3.25; %A-
    elseif subtotal6(i,1)<(subcredit6*65) && subtotal6(i,1)>=(subcredit6*60)
        subgrade6(i,1)=3.00; %B+
    elseif subtotal6(i,1)<(subcredit6*60) && subtotal6(i,1)>=(subcredit6*55)
        subgrade6(i,1)=2.50; %B
    elseif subtotal6(i,1)<(subcredit6*55) && subtotal6(i,1)>=(subcredit6*50)
        subgrade6(i,1)=2.00; %C
    elseif subtotal6(i,1)<(subcredit6*50) && subtotal6(i,1)>=(subcredit6*45)
        subgrade6(i,1)=1.50; %D
    else
        subgrade6(i,1)=0.00;
    end
end

global subgpa6
subgpa6=subgrade6*subcredit6;
assignin('base','subgpa6',subgpa6)
msgbox('Upload Complete')