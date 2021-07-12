classdef HyLoop101_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure               matlab.ui.Figure
        AboutMenu              matlab.ui.container.Menu
        Panel_2                matlab.ui.container.Panel
        ComputeButton          matlab.ui.control.Button
        AllRelEditField        matlab.ui.control.NumericEditField
        AllRelEditFieldLabel   matlab.ui.control.Label
        NegRelEditField        matlab.ui.control.NumericEditField
        NegRelEditFieldLabel   matlab.ui.control.Label
        PosRelEditField        matlab.ui.control.NumericEditField
        PosRelEditFieldLabel   matlab.ui.control.Label
        NegMinEditField        matlab.ui.control.NumericEditField
        NegMinEditFieldLabel   matlab.ui.control.Label
        PosMinEditField        matlab.ui.control.NumericEditField
        PosMinEditFieldLabel   matlab.ui.control.Label
        NegMaxEditField        matlab.ui.control.NumericEditField
        NegMaxEditFieldLabel   matlab.ui.control.Label
        PosMaxEditField        matlab.ui.control.NumericEditField
        PosMaxEditFieldLabel   matlab.ui.control.Label
        SplitIntoCyclesButton  matlab.ui.control.Button
        UITable                matlab.ui.control.Table
        Panel                  matlab.ui.container.Panel
        MAButton               matlab.ui.control.StateButton
        EFLabel                matlab.ui.control.Label
        BSLabel                matlab.ui.control.Label
        AnimationSlider        matlab.ui.control.Slider
        AnimationCherkBox      matlab.ui.control.CheckBox
        ButtonAnimation        matlab.ui.container.ButtonGroup
        AnimationSubButton     matlab.ui.control.RadioButton
        AnimationMainButton    matlab.ui.control.RadioButton
        AnimationLabel         matlab.ui.control.Label
        PlotLabel              matlab.ui.control.Label
        ButtonPlot             matlab.ui.container.ButtonGroup
        OneCycleOnlyButton     matlab.ui.control.RadioButton
        MainCurvesOnlyButton   matlab.ui.control.RadioButton
        WithCyclesButton       matlab.ui.control.RadioButton
        CyclesListBox_2        matlab.ui.control.ListBox
        CyclesListBox_2Label   matlab.ui.control.Label
        CycleDepListBox        matlab.ui.control.ListBox
        CycleDepListBoxLabel   matlab.ui.control.Label
        DepListBox             matlab.ui.control.ListBox
        DepListBoxLabel        matlab.ui.control.Label
        IndepListBox           matlab.ui.control.ListBox
        IndepListBoxLabel      matlab.ui.control.Label
        SheetsListBox          matlab.ui.control.ListBox
        SheetsListBoxLabel     matlab.ui.control.Label
        OpenExcelFileButton    matlab.ui.control.Button
        UIAxes                 matlab.ui.control.UIAxes
    end

    %%%% TODO
    % START ROW
    
    
    %%%% LOP
    % 2021-07-12    v1.01
    
    
    
    
    properties (Access = private)
        file % name of opened file
        filename % excel file to open
        sheetNames % sheetNames read from excel file
        sheetData % data imported
        rowData %
        x %
        y %
        xLoopStruct %
        yLoopStruct %
        loopRecord % array record start/end row of sheetData
        xLoop %
        yLoop %
        rowLoop %
        aniManuChangingValue % slider value in manu
        loopPointPlot % tempPlot
        aniDataX % animation data
        aniDataY % animation data
    end
    
    methods (Access = private)
        
        
        function proc_uiEnableAfterRead(app)
            app.SplitIntoCyclesButton.Enable = false;
            app.SheetsListBox.Enable = true;
            app.IndepListBox.Enable = false;
            app.DepListBox.Enable = false;
            app.CycleDepListBox.Enable = false;
            app.CyclesListBox_2.Enable = false;
            app.PosMaxEditField.Enable = false;
            app.PosMinEditField.Enable = false;
            app.PosRelEditField.Enable = false;
            app.NegMaxEditField.Enable = false;
            app.NegMinEditField.Enable = false;
            app.NegRelEditField.Enable = false;
            app.AllRelEditField.Enable = false;
            app.ComputeButton.Enable = false;
            app.OneCycleOnlyButton.Enable = false;
            app.MainCurvesOnlyButton.Enable = false;
            app.WithCyclesButton.Enable = false;
            app.AnimationCherkBox.Enable = 'off';
        end
        

        % main data
        function proc_mainData(app)
            app.x = table2array(app.sheetData(:,{app.IndepListBox.Value}));
            app.y = table2array(app.sheetData(:,{app.DepListBox.Value}));
        end

        % plot curves 
        function proc_mainPlot(app)
            hold(app.UIAxes,'off');
            plot(app.UIAxes,app.x,app.y,"Color",[0 0.4470 0.7410]);
            app.UIAxes.Title.String = sprintf('%s-%s Curves', app.IndepListBox.Value, app.DepListBox.Value);
            app.UIAxes.XLabel.String = app.IndepListBox.Value;
            app.UIAxes.YLabel.String = app.DepListBox.Value;
        end
        
        % make list
        function proc_cycleSplit(app)  
            app.rowData = size(app.sheetData,1);
            k = 1;
            i = 1;
            while i <= app.rowData
                if i == 1
                    app.loopRecord(k,1) = i; % start_row
                else
                    app.loopRecord(k,1) = i - 1; % start_row
                end
                
                while app.x(i+1) > app.x(i)
                    i = i + 1;
                end
                app.loopRecord(k,2) = i; % max_row
                
                while app.x(i+1) < app.x(i)
                    i = i + 1;
                end
                app.loopRecord(k,3) = i; % min_row
                
                while (app.x(i) < 0) && (i < app.rowData)
                    i = i + 1;
                end
                
                if i == app.rowData
                    app.loopRecord(k,4) = i; % end_row
                    break;
                else
                    app.loopRecord(k,4) = i - 1; % end_row
                end
                
                i = i + 1;
                k = k + 1;
            end
            
            loopMax = size(app.loopRecord,1); % create looplist
            loopList = strings(1);
            for l = 1:loopMax
                loopList(l) = sprintf("Cycle_%d",l);
            end
            
            app.CyclesListBox_2.Items = loopList; % listBox
            app.CyclesListBox_2.Value = loopList(1);
        end
        
        % cycle updata
        function proc_cycleUpdate(app)
            loopMax = size(app.loopRecord,1);
            for l = 1:loopMax
                app.xLoopStruct.(sprintf("Cycle_%d",l)) = app.x(app.loopRecord(l,1):app.loopRecord(l,4));
                app.yLoopStruct.(sprintf("Cycle_%d",l)) = app.y(app.loopRecord(l,1):app.loopRecord(l,4));
            end
        end
        
        % cycle choose
        function choose_cycle(app)
            app.xLoop = app.xLoopStruct.(app.CyclesListBox_2.Value);
            app.yLoop = app.yLoopStruct.(app.CyclesListBox_2.Value);
        end   
        
        
        % plot cycle
        function proc_cyclePlot(app)
            choose_cycle(app);
            plot(app.UIAxes,app.xLoop,app.yLoop,"Color",[0.8500 0.3250 0.0980],"LineWidth",2.0,"Marker","*","MarkerSize",4);
            proc_comData(app);
%             app.AnimationCherkBox.Enable = 'off'; % close animation function
        end
        
        % cycle choose botton
        function proc_plotChoose(app)
            if app.WithCyclesButton.Value == true
                app.CyclesListBox_2.Enable = 'on';
                proc_mainPlot(app);
                hold(app.UIAxes,'on');
                proc_cyclePlot(app);
            elseif app.MainCurvesOnlyButton.Value == true
                proc_mainPlot(app);
                app.CyclesListBox_2.Enable = 'off';
            else
                app.CyclesListBox_2.Enable = 'on';
                hold(app.UIAxes,'off');
                proc_cyclePlot(app);
            end
        end
        
        % enable animation button
        function if_aniAllorSingle(app)
            if app.AnimationCherkBox.Value == true
                if app.WithCyclesButton.Value == true
                    app.AnimationMainButton.Enable = true;
                    app.AnimationSubButton.Enable = true;
                elseif app.MainCurvesOnlyButton.Value == true
                    app.AnimationMainButton.Enable = true;
                    app.AnimationMainButton.Value = true;
                    app.AnimationSubButton.Enable = false;
                else
                    app.AnimationMainButton.Enable = false;
                    app.AnimationSubButton.Enable = true;
                    app.AnimationSubButton.Value = true;
                end
            end
        end
        
        % updata after cycle change
        function proc_animationStart(app)
            if app.AnimationCherkBox.Value == true
                proc_animationSet(app);
                hold(app.UIAxes,"on"); % one point only
                plot_aniPoint(app) % use only once
            end
            
            if app.MAButton.Value == false
            end
        end
        
        function proc_animationSet(app)
            get_aniData(app);
            
            if app.MAButton.Value == false
                app.BSLabel.Text = "B"; % Beginning / Ending
                app.EFLabel.Text = "E";
                app.rowLoop = size(app.aniDataX,1);
                app.AnimationSlider.Limits = [1 app.rowLoop];
            else
                app.BSLabel.Text = "S"; % Slower / Faster
                app.EFLabel.Text = "F";
                % todo time
                app.AnimationSlider.Limits = [2 20];
                plot_aniAuto(app);
            end
        end
        
        % point plot / use only once!!
        function plot_aniPoint(app)
            app.loopPointPlot = plot(app.UIAxes,app.xLoop(1),app.yLoop(1),"Color",[0.4940 0.1840 0.5560],"Marker",".","MarkerSize",30); % plot once, but change later
        end
        
        % get animation data
        function get_aniData(app)
            if app.AnimationMainButton.Value == true
                % get data from main table
                app.aniDataX = app.x;
                app.aniDataY = app.y;
            else
                % get data from specific cycle
                app.aniDataX = app.xLoop;
                app.aniDataY = app.yLoop;
            end
        end
        
        function plot_aniManu(app)
            if app.MAButton.Value == false
                pointX = app.aniDataX(app.aniManuChangingValue);
                pointY = app.aniDataY(app.aniManuChangingValue);
                set (app.loopPointPlot, 'XData', pointX, 'YData', pointY)
            end
        end
        
        function plot_aniAuto(app)
            for k = 1:length(app.aniDataX)
                set (app.loopPointPlot, 'XData', app.aniDataX(k), 'YData', app.aniDataY(k));
                if app.MAButton.Value == false
                    break;
                end
                pause(1/app.AnimationSlider.Value);
            end
        end
        
        % split data by cycle
        function proc_dataSplit(app)
            loopMax = size(app.loopRecord,1);
            
            % get origin filename without extension
            dotLocations = find(app.file == '.');
            if isempty(dotLocations)
                originFileName = app.file;
            else
                originFileName = app.file(1:dotLocations(1)-1);
            end
            
            saveFilename = sprintf("%s_%s_Split",originFileName,app.SheetsListBox.Value);
            [saveNameTemp,path] = uiputfile('*.csv','Save Data To Excel File',saveFilename);
            
            % get save name without extension
            dotLocations = find(saveNameTemp == '.');
            saveNameTemp = saveNameTemp(1:dotLocations(1)-1);
            
            for l = 1:loopMax
                saveName = sprintf("%s_Cycle_%d.csv",saveNameTemp,l);
                dataToSave = app.sheetData(app.loopRecord(l,1):app.loopRecord(l,4),:);
                fname = fullfile(path,saveName);
                writetable(dataToSave,fname);
            end
        end
        
        
        % compute data
        function proc_comData(app)
            i = 1;
            while app.xLoop(i) > 0
                i = i + 1;
            end
            rowAtZero = i - 1;
            PYLoop = app.yLoop(1:rowAtZero);
            NYLoop = app.yLoop(rowAtZero+1:end);
            max(PYLoop)
            app.PosMaxEditField.Value = max(PYLoop);
            app.PosMinEditField.Value = min(PYLoop);
            app.PosRelEditField.Value = app.PosMaxEditField.Value - app.PosMinEditField.Value;
            app.NegMaxEditField.Value = max(NYLoop);
            app.NegMinEditField.Value = min(NYLoop);
            app.NegRelEditField.Value = app.NegMaxEditField.Value - app.NegMinEditField.Value;
            app.AllRelEditField.Value = max(app.yLoop) - min(app.yLoop);
        end
        
%                 % delete existing data
        function proc_deleteExisting(app)
            clear;
        end

    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.SplitIntoCyclesButton.Enable = false;
            app.SheetsListBox.Enable = false;
            app.IndepListBox.Enable = false;
            app.DepListBox.Enable = false;
            app.CycleDepListBox.Enable = false;
            app.CyclesListBox_2.Enable = false;
            app.PosMaxEditField.Enable = false;
            app.PosMinEditField.Enable = false;
            app.PosRelEditField.Enable = false;
            app.NegMaxEditField.Enable = false;
            app.NegMinEditField.Enable = false;
            app.NegRelEditField.Enable = false;
            app.AllRelEditField.Enable = false;
            app.ComputeButton.Enable = false;
            app.OneCycleOnlyButton.Enable = false;
            app.MainCurvesOnlyButton.Enable = false;
            app.WithCyclesButton.Enable = false;
            app.AnimationCherkBox.Enable = 'off';
            app.AnimationMainButton.Enable = false;
            app.AnimationSubButton.Enable = false;
            app.AnimationSlider.Enable = 'off';
            app.MAButton.Enable = 'off';
        end

        % Button pushed function: OpenExcelFileButton
        function OpenExcelFileButtonPushed(app, event)
            app.MAButton.Value = false; % stop animation;
            [app.file,path] = uigetfile('*.xlsx','*.xls');
            if ne(app.file,0)
                proc_deleteExisting(app);
                proc_uiEnableAfterRead(app);
                app.filename = [path app.file];
                
                % read sheetname
                app.sheetNames = sheetnames(app.filename);
                app.SheetsListBox.Items = app.sheetNames;
                
                % animation check box
                app.AnimationCherkBox.Enable = 'on';
                
%                 
%                 proc_animationStart(app) % update animation as well
            end
            
        end

        % Selection changed function: ButtonPlot
        function ButtonPlotSelectionChanged(app, event)
            app.MAButton.Value = false; % stop animation;
            proc_plotChoose(app);
            if_aniAllorSingle(app);
            proc_animationStart(app) % update animation as well
        end

        % Value changed function: AnimationCherkBox
        function AnimationCherkBoxValueChanged(app, event)
            app.MAButton.Value = false; % stop animation;
            value = app.AnimationCherkBox.Value;
            if value == true
                if_aniAllorSingle(app);
                app.AnimationSlider.Enable = 'on';
                app.MAButton.Enable = 'on';
                proc_animationStart(app)
            else
                app.AnimationMainButton.Enable = false;
                app.AnimationSubButton.Enable = false;
                app.AnimationSlider.Enable = 'off';
                app.MAButton.Enable = 'off';
                proc_plotChoose(app);
            end
        end

        % Value changed function: MAButton
        function MAButtonValueChanged(app, event)
            proc_animationSet(app);
        end

        % Value changing function: AnimationSlider
        function AnimationSliderValueChanging(app, event)
            app.aniManuChangingValue = round(event.Value);
            plot_aniManu(app);
        end

        % Selection changed function: ButtonAnimation
        function ButtonAnimationSelectionChanged(app, event)
            app.MAButton.Value = false; % stop animation;
%             selectedButton = app.ButtonAnimation.SelectedObject;
            proc_animationSet(app);
        end

        % Button pushed function: SplitIntoCyclesButton
        function SplitIntoCyclesButtonPushed(app, event)
            proc_dataSplit(app);
        end

        % Menu selected function: AboutMenu
        function AboutMenuSelected(app, event)
            fig = app.UIFigure;
            message = sprintf('HyLoop v1.01\n\nDeveloped by Chuandong Xie \nwww.chuandongxie.com\nchuandongxie@xauat.edu.cn');
            uialert(fig,message,'About',"Icon","none");
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            YN = uiconfirm(app.UIFigure,'Do you want to close the app?', 'Close request');
            if strcmpi(YN,'OK')
                delete(app);
            end
        end

        % Value changed function: SheetsListBox
        function SheetsListBoxValueChanged(app, event)
            % true for compoment
            app.IndepListBox.Enable = true;
            app.DepListBox.Enable = true;
            app.CycleDepListBox.Enable = true;
            
            % read sheetdata
            app.sheetData = readtable(app.filename,"Sheet",app.SheetsListBox.Value);
            
            % data to table
            app.UITable.Data = app.sheetData;
            
            % indep col list
            ColList = app.sheetData.Properties.VariableNames;
            app.IndepListBox.Items = ColList;
            app.IndepListBox.Value = ColList(1);
            
            % dep col list
            app.DepListBox.Items = ColList;
            app.DepListBox.Value = ColList(2);
            
            % cycle col list to choose
            app.CycleDepListBox.Items = ColList;
            app.CycleDepListBox.Value = ColList(1);
            
            % plot main curves
            proc_mainData(app);
            proc_mainPlot(app);
            
            
            % data to table
            app.UITable.Data = app.sheetData;
            app.UITable.ColumnName = ColList;
        end

        % Value changed function: IndepListBox
        function IndepListBoxValueChanged(app, event)
            proc_mainData(app);
            proc_mainPlot(app);
            proc_cycleUpdate(app);
        end

        % Value changed function: DepListBox
        function DepListBoxValueChanged(app, event)
            proc_mainData(app);
            proc_mainPlot(app);
            proc_cycleUpdate(app);
        end

        % Value changed function: CycleDepListBox
        function CycleDepListBoxValueChanged(app, event)
            proc_cycleSplit(app);
            proc_cycleUpdate(app);
            app.CyclesListBox_2.Enable = true;
        end

        % Value changed function: CyclesListBox_2
        function CyclesListBox_2ValueChanged(app, event)
            choose_cycle(app);
            app.OneCycleOnlyButton.Enable = true;
            app.MainCurvesOnlyButton.Enable = true;
            app.WithCyclesButton.Enable = true;
            app.PosMaxEditField.Enable = true;
            app.PosMinEditField.Enable = true;
            app.PosRelEditField.Enable = true;
            app.NegMaxEditField.Enable = true;
            app.NegMinEditField.Enable = true;
            app.NegRelEditField.Enable = true;
            app.AllRelEditField.Enable = true;
            proc_plotChoose(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1209 696];
            app.UIFigure.Name = 'HyLoop';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create AboutMenu
            app.AboutMenu = uimenu(app.UIFigure);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Curves')
            xlabel(app.UIAxes, 'Variable1')
            ylabel(app.UIAxes, 'Variable2')
            app.UIAxes.FontName = 'times';
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [342 179 858 499];

            % Create OpenExcelFileButton
            app.OpenExcelFileButton = uibutton(app.UIFigure, 'push');
            app.OpenExcelFileButton.ButtonPushedFcn = createCallbackFcn(app, @OpenExcelFileButtonPushed, true);
            app.OpenExcelFileButton.Position = [21 654 300 24];
            app.OpenExcelFileButton.Text = 'Open Excel File';

            % Create Panel
            app.Panel = uipanel(app.UIFigure);
            app.Panel.Position = [21 147 300 467];

            % Create SheetsListBoxLabel
            app.SheetsListBoxLabel = uilabel(app.Panel);
            app.SheetsListBoxLabel.Position = [14 432 43 22];
            app.SheetsListBoxLabel.Text = 'Sheets';

            % Create SheetsListBox
            app.SheetsListBox = uilistbox(app.Panel);
            app.SheetsListBox.Items = {};
            app.SheetsListBox.ValueChangedFcn = createCallbackFcn(app, @SheetsListBoxValueChanged, true);
            app.SheetsListBox.Position = [82 419 204 37];
            app.SheetsListBox.Value = {};

            % Create IndepListBoxLabel
            app.IndepListBoxLabel = uilabel(app.Panel);
            app.IndepListBoxLabel.Position = [14 387 36 22];
            app.IndepListBoxLabel.Text = 'Indep';

            % Create IndepListBox
            app.IndepListBox = uilistbox(app.Panel);
            app.IndepListBox.Items = {};
            app.IndepListBox.ValueChangedFcn = createCallbackFcn(app, @IndepListBoxValueChanged, true);
            app.IndepListBox.Position = [82 374 204 37];
            app.IndepListBox.Value = {};

            % Create DepListBoxLabel
            app.DepListBoxLabel = uilabel(app.Panel);
            app.DepListBoxLabel.Position = [14 343 28 22];
            app.DepListBoxLabel.Text = 'Dep';

            % Create DepListBox
            app.DepListBox = uilistbox(app.Panel);
            app.DepListBox.Items = {};
            app.DepListBox.ValueChangedFcn = createCallbackFcn(app, @DepListBoxValueChanged, true);
            app.DepListBox.Position = [82 330 204 37];
            app.DepListBox.Value = {};

            % Create CycleDepListBoxLabel
            app.CycleDepListBoxLabel = uilabel(app.Panel);
            app.CycleDepListBoxLabel.Position = [14 299 61 22];
            app.CycleDepListBoxLabel.Text = 'Cycle Dep';

            % Create CycleDepListBox
            app.CycleDepListBox = uilistbox(app.Panel);
            app.CycleDepListBox.Items = {};
            app.CycleDepListBox.ValueChangedFcn = createCallbackFcn(app, @CycleDepListBoxValueChanged, true);
            app.CycleDepListBox.Position = [82 286 204 37];
            app.CycleDepListBox.Value = {};

            % Create CyclesListBox_2Label
            app.CyclesListBox_2Label = uilabel(app.Panel);
            app.CyclesListBox_2Label.Position = [14 255 42 22];
            app.CyclesListBox_2Label.Text = 'Cycles';

            % Create CyclesListBox_2
            app.CyclesListBox_2 = uilistbox(app.Panel);
            app.CyclesListBox_2.Items = {};
            app.CyclesListBox_2.ValueChangedFcn = createCallbackFcn(app, @CyclesListBox_2ValueChanged, true);
            app.CyclesListBox_2.Position = [82 199 204 80];
            app.CyclesListBox_2.Value = {};

            % Create ButtonPlot
            app.ButtonPlot = uibuttongroup(app.Panel);
            app.ButtonPlot.SelectionChangedFcn = createCallbackFcn(app, @ButtonPlotSelectionChanged, true);
            app.ButtonPlot.BorderType = 'none';
            app.ButtonPlot.Position = [128 111 162 79];

            % Create WithCyclesButton
            app.WithCyclesButton = uiradiobutton(app.ButtonPlot);
            app.WithCyclesButton.Text = 'With Cycles';
            app.WithCyclesButton.Position = [1 54 85 22];
            app.WithCyclesButton.Value = true;

            % Create MainCurvesOnlyButton
            app.MainCurvesOnlyButton = uiradiobutton(app.ButtonPlot);
            app.MainCurvesOnlyButton.Text = 'Main Curves Only';
            app.MainCurvesOnlyButton.Position = [1 27 117 22];

            % Create OneCycleOnlyButton
            app.OneCycleOnlyButton = uiradiobutton(app.ButtonPlot);
            app.OneCycleOnlyButton.Text = 'One Cycle Only';
            app.OneCycleOnlyButton.Position = [1 1 106 22];

            % Create PlotLabel
            app.PlotLabel = uilabel(app.Panel);
            app.PlotLabel.Position = [14 164 26 22];
            app.PlotLabel.Text = 'Plot';

            % Create AnimationLabel
            app.AnimationLabel = uilabel(app.Panel);
            app.AnimationLabel.Position = [14 80 59 22];
            app.AnimationLabel.Text = 'Animation';

            % Create ButtonAnimation
            app.ButtonAnimation = uibuttongroup(app.Panel);
            app.ButtonAnimation.SelectionChangedFcn = createCallbackFcn(app, @ButtonAnimationSelectionChanged, true);
            app.ButtonAnimation.BorderType = 'none';
            app.ButtonAnimation.Position = [128 26 123 50];

            % Create AnimationMainButton
            app.AnimationMainButton = uiradiobutton(app.ButtonAnimation);
            app.AnimationMainButton.Text = 'Main Curves';
            app.AnimationMainButton.Position = [1 27 89 22];
            app.AnimationMainButton.Value = true;

            % Create AnimationSubButton
            app.AnimationSubButton = uiradiobutton(app.ButtonAnimation);
            app.AnimationSubButton.Text = 'Cycle Only';
            app.AnimationSubButton.Position = [1 5 80 22];

            % Create AnimationCherkBox
            app.AnimationCherkBox = uicheckbox(app.Panel);
            app.AnimationCherkBox.ValueChangedFcn = createCallbackFcn(app, @AnimationCherkBoxValueChanged, true);
            app.AnimationCherkBox.Text = '';
            app.AnimationCherkBox.Position = [128 80 25 22];

            % Create AnimationSlider
            app.AnimationSlider = uislider(app.Panel);
            app.AnimationSlider.Limits = [0 1];
            app.AnimationSlider.MajorTicks = [];
            app.AnimationSlider.MajorTickLabels = {''};
            app.AnimationSlider.ValueChangingFcn = createCallbackFcn(app, @AnimationSliderValueChanging, true);
            app.AnimationSlider.MinorTicks = [];
            app.AnimationSlider.Position = [159 13 105 3];

            % Create BSLabel
            app.BSLabel = uilabel(app.Panel);
            app.BSLabel.HorizontalAlignment = 'center';
            app.BSLabel.Position = [128 4 25 22];
            app.BSLabel.Text = 'B/S';

            % Create EFLabel
            app.EFLabel = uilabel(app.Panel);
            app.EFLabel.HorizontalAlignment = 'center';
            app.EFLabel.Position = [269 4 25 22];
            app.EFLabel.Text = 'E/F';

            % Create MAButton
            app.MAButton = uibutton(app.Panel, 'state');
            app.MAButton.ValueChangedFcn = createCallbackFcn(app, @MAButtonValueChanged, true);
            app.MAButton.Text = 'M/A';
            app.MAButton.Position = [257 80 37 22];

            % Create UITable
            app.UITable = uitable(app.UIFigure);
            app.UITable.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable.RowName = {};
            app.UITable.Position = [381 17 811 150];

            % Create SplitIntoCyclesButton
            app.SplitIntoCyclesButton = uibutton(app.UIFigure, 'push');
            app.SplitIntoCyclesButton.ButtonPushedFcn = createCallbackFcn(app, @SplitIntoCyclesButtonPushed, true);
            app.SplitIntoCyclesButton.Position = [21 623 300 22];
            app.SplitIntoCyclesButton.Text = 'Split Into Cycles';

            % Create Panel_2
            app.Panel_2 = uipanel(app.UIFigure);
            app.Panel_2.Position = [21 17 300 124];

            % Create PosMaxEditFieldLabel
            app.PosMaxEditFieldLabel = uilabel(app.Panel_2);
            app.PosMaxEditFieldLabel.Position = [9 92 52 22];
            app.PosMaxEditFieldLabel.Text = 'Pos Max';

            % Create PosMaxEditField
            app.PosMaxEditField = uieditfield(app.Panel_2, 'numeric');
            app.PosMaxEditField.ValueDisplayFormat = '%.2f';
            app.PosMaxEditField.Position = [65 92 68 22];

            % Create NegMaxEditFieldLabel
            app.NegMaxEditFieldLabel = uilabel(app.Panel_2);
            app.NegMaxEditFieldLabel.Position = [159 92 54 22];
            app.NegMaxEditFieldLabel.Text = 'Neg Max';

            % Create NegMaxEditField
            app.NegMaxEditField = uieditfield(app.Panel_2, 'numeric');
            app.NegMaxEditField.ValueDisplayFormat = '%.2f';
            app.NegMaxEditField.Position = [218 92 68 22];

            % Create PosMinEditFieldLabel
            app.PosMinEditFieldLabel = uilabel(app.Panel_2);
            app.PosMinEditFieldLabel.Position = [9 64 49 22];
            app.PosMinEditFieldLabel.Text = 'Pos Min';

            % Create PosMinEditField
            app.PosMinEditField = uieditfield(app.Panel_2, 'numeric');
            app.PosMinEditField.ValueDisplayFormat = '%.2f';
            app.PosMinEditField.Position = [65 64 68 22];

            % Create NegMinEditFieldLabel
            app.NegMinEditFieldLabel = uilabel(app.Panel_2);
            app.NegMinEditFieldLabel.Position = [159 64 50 22];
            app.NegMinEditFieldLabel.Text = 'Neg Min';

            % Create NegMinEditField
            app.NegMinEditField = uieditfield(app.Panel_2, 'numeric');
            app.NegMinEditField.ValueDisplayFormat = '%.2f';
            app.NegMinEditField.Position = [218 64 68 22];

            % Create PosRelEditFieldLabel
            app.PosRelEditFieldLabel = uilabel(app.Panel_2);
            app.PosRelEditFieldLabel.Position = [9 36 48 22];
            app.PosRelEditFieldLabel.Text = 'Pos Rel';

            % Create PosRelEditField
            app.PosRelEditField = uieditfield(app.Panel_2, 'numeric');
            app.PosRelEditField.ValueDisplayFormat = '%.2f';
            app.PosRelEditField.Position = [65 36 68 22];

            % Create NegRelEditFieldLabel
            app.NegRelEditFieldLabel = uilabel(app.Panel_2);
            app.NegRelEditFieldLabel.Position = [159 36 49 22];
            app.NegRelEditFieldLabel.Text = 'Neg Rel';

            % Create NegRelEditField
            app.NegRelEditField = uieditfield(app.Panel_2, 'numeric');
            app.NegRelEditField.ValueDisplayFormat = '%.2f';
            app.NegRelEditField.Position = [218 36 68 22];

            % Create AllRelEditFieldLabel
            app.AllRelEditFieldLabel = uilabel(app.Panel_2);
            app.AllRelEditFieldLabel.Position = [9 7 40 22];
            app.AllRelEditFieldLabel.Text = 'All Rel';

            % Create AllRelEditField
            app.AllRelEditField = uieditfield(app.Panel_2, 'numeric');
            app.AllRelEditField.ValueDisplayFormat = '%.2f';
            app.AllRelEditField.Position = [65 7 68 22];

            % Create ComputeButton
            app.ComputeButton = uibutton(app.Panel_2, 'push');
            app.ComputeButton.Position = [159 7 127 22];
            app.ComputeButton.Text = 'Compute';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = HyLoop101_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end