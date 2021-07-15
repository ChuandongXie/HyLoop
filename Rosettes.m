classdef Rosettes_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                    matlab.ui.Figure
        Panel                       matlab.ui.container.Panel
        IncButton                   matlab.ui.control.Button
        DecButton                   matlab.ui.control.Button
        CurrentLabel                matlab.ui.control.Label
        PlotLabel                   matlab.ui.control.Label
        ButtonGroupPlot             matlab.ui.container.ButtonGroup
        CycleonlyButton             matlab.ui.control.RadioButton
        WithCycleButton             matlab.ui.control.RadioButton
        SelectLabel                 matlab.ui.control.Label
        ButtonGroupSelect           matlab.ui.container.ButtonGroup
        MaxShearStressButton        matlab.ui.control.RadioButton
        MinPrinStressButton         matlab.ui.control.RadioButton
        MaxPrinStressButton         matlab.ui.control.RadioButton
        MaxShearStrainButton        matlab.ui.control.RadioButton
        DirPrinStrainButton         matlab.ui.control.RadioButton
        MinPrinStrainButton         matlab.ui.control.RadioButton
        MaxPrinStrainButton         matlab.ui.control.RadioButton
        SliderRosette               matlab.ui.control.Slider
        CyclesListBox               matlab.ui.control.ListBox
        CyclesListBoxLabel          matlab.ui.control.Label
        Panel1_9                    matlab.ui.container.Panel
        MinValueEditField_10        matlab.ui.control.NumericEditField
        MinValueEditField_10Label   matlab.ui.control.Label
        MaxValueEditField_10        matlab.ui.control.NumericEditField
        MaxValueEditField_10Label   matlab.ui.control.Label
        RelValueEditField_10        matlab.ui.control.NumericEditField
        RelValueEditField_10Label   matlab.ui.control.Label
        CurValueEditField_10        matlab.ui.control.NumericEditField
        CurValueEditField_10Label   matlab.ui.control.Label
        UIAxes_10                   matlab.ui.control.UIAxes
        Panel1_8                    matlab.ui.container.Panel
        MinValueEditField_9         matlab.ui.control.NumericEditField
        MinValueEditField_9Label    matlab.ui.control.Label
        MaxValueEditField_9         matlab.ui.control.NumericEditField
        MaxValueEditField_9Label    matlab.ui.control.Label
        RelValueEditField_9         matlab.ui.control.NumericEditField
        RelValueEditField_9Label    matlab.ui.control.Label
        CurValueEditField_9         matlab.ui.control.NumericEditField
        CurValueEditField_9Label    matlab.ui.control.Label
        UIAxes_9                    matlab.ui.control.UIAxes
        Panel1_7                    matlab.ui.container.Panel
        MinValueEditField_8         matlab.ui.control.NumericEditField
        MinValueEditField_8Label    matlab.ui.control.Label
        MaxValueEditField_8         matlab.ui.control.NumericEditField
        MaxValueEditField_8Label    matlab.ui.control.Label
        RelValueEditField_8         matlab.ui.control.NumericEditField
        RelValueEditField_8Label    matlab.ui.control.Label
        CurValueEditField_8         matlab.ui.control.NumericEditField
        CurValueEditField_8Label    matlab.ui.control.Label
        UIAxes_8                    matlab.ui.control.UIAxes
        Panel1_6                    matlab.ui.container.Panel
        MinValueEditField_7         matlab.ui.control.NumericEditField
        MinValueEditField_7Label    matlab.ui.control.Label
        MaxValueEditField_7         matlab.ui.control.NumericEditField
        MaxValueEditField_7Label    matlab.ui.control.Label
        RelValueEditField_7         matlab.ui.control.NumericEditField
        RelValueEditField_7Label    matlab.ui.control.Label
        CurValueEditField_7         matlab.ui.control.NumericEditField
        CurValueEditField_7Label    matlab.ui.control.Label
        UIAxes_7                    matlab.ui.control.UIAxes
        Panel_2                     matlab.ui.container.Panel
        MinValueEditField_6         matlab.ui.control.NumericEditField
        MinValueEditField_6Label    matlab.ui.control.Label
        MaxValueEditField_6         matlab.ui.control.NumericEditField
        MaxValueEditField_6Label    matlab.ui.control.Label
        RelValueEditField_6         matlab.ui.control.NumericEditField
        RelValueEditField_6Label    matlab.ui.control.Label
        CurValueEditField_6         matlab.ui.control.NumericEditField
        CurValueEditField_6Label    matlab.ui.control.Label
        UIAxes_6                    matlab.ui.control.UIAxes
        Panel1_5                    matlab.ui.container.Panel
        MinValueEditField_5         matlab.ui.control.NumericEditField
        MinValueEditField_5Label    matlab.ui.control.Label
        MaxValueEditField_5         matlab.ui.control.NumericEditField
        MaxValueEditField_5Label    matlab.ui.control.Label
        RelValueEditField_5         matlab.ui.control.NumericEditField
        RelValueEditField_5Label    matlab.ui.control.Label
        CurValueEditField_5         matlab.ui.control.NumericEditField
        CurValueEditField_5Label    matlab.ui.control.Label
        UIAxes_5                    matlab.ui.control.UIAxes
        Panel1_4                    matlab.ui.container.Panel
        MinValueEditField_4         matlab.ui.control.NumericEditField
        MinValueEditField_4Label    matlab.ui.control.Label
        MaxValueEditField_4         matlab.ui.control.NumericEditField
        MaxValueEditField_4Label    matlab.ui.control.Label
        RelValueEditField_4         matlab.ui.control.NumericEditField
        RelValueEditField_4Label    matlab.ui.control.Label
        CurValueEditField_4         matlab.ui.control.NumericEditField
        CurValueEditField_4Label    matlab.ui.control.Label
        UIAxes_4                    matlab.ui.control.UIAxes
        Panel1_3                    matlab.ui.container.Panel
        MinValueEditField_3         matlab.ui.control.NumericEditField
        MinValueEditField_3Label    matlab.ui.control.Label
        MaxValueEditField_3         matlab.ui.control.NumericEditField
        MaxValueEditField_3Label    matlab.ui.control.Label
        RelValueEditField_3         matlab.ui.control.NumericEditField
        RelValueEditField_3Label    matlab.ui.control.Label
        CurValueEditField_3         matlab.ui.control.NumericEditField
        CurValueEditField_3Label    matlab.ui.control.Label
        UIAxes_3                    matlab.ui.control.UIAxes
        Panel1_2                    matlab.ui.container.Panel
        MinValueEditField_2         matlab.ui.control.NumericEditField
        MinValueEditField_2Label    matlab.ui.control.Label
        MaxValueEditField_2         matlab.ui.control.NumericEditField
        MaxValueEditField_2Label_2  matlab.ui.control.Label
        RelValueEditField_2         matlab.ui.control.NumericEditField
        RelValueEditField_2Label    matlab.ui.control.Label
        CurValueEditField_2         matlab.ui.control.NumericEditField
        CurValueEditField_2Label    matlab.ui.control.Label
        UIAxes_2                    matlab.ui.control.UIAxes
        CloseButton                 matlab.ui.control.Button
        Panel_1                     matlab.ui.container.Panel
        MinValueEditField_1         matlab.ui.control.NumericEditField
        MinValueEditFieldLabel      matlab.ui.control.Label
        MaxValueEditField_1         matlab.ui.control.NumericEditField
        MaxValueEditField_2Label    matlab.ui.control.Label
        RelValueEditField_1         matlab.ui.control.NumericEditField
        RelValueEditFieldLabel      matlab.ui.control.Label
        CurValueEditField_1         matlab.ui.control.NumericEditField
        CurValueEditFieldLabel      matlab.ui.control.Label
        UIAxes_1                    matlab.ui.control.UIAxes
    end

    %%%% Rosettes
    %%%% called by HyLoop102
    %%%% by Chuandong Xie
    %%%% Date: 2021-07-15
    %%%% Version: 1.0
    
    
    properties (Access = private)
        CallingApp % calling app
        sheetDataR
        colListR % col list
        indepColValueR
        yValue % y value to plot
        cycleRecordR % loopRecord
        x % x data
        y % y data
        xCycleStruct % cycle data
        yCycleStruct
        cyclePointPlot1 % point plot
        cyclePointPlot2
        cyclePointPlot3
        cyclePointPlot4
        cyclePointPlot5
        cyclePointPlot6
        cyclePointPlot7
        cyclePointPlot8
        cyclePointPlot9
        cyclePointPlot10
    end
    
    methods (Access = private)
        % obtain y value
        function proc_yValue(app)
            app.yValue = strings;
            if app.MaxPrinStrainButton.Value == true
                yToUse = "RosetteMaxPrinStrain";
            elseif app.MinPrinStrainButton.Value == true
                yToUse = "RosetteMinPrinStrain";
            elseif app.DirPrinStrainButton.Value == true
                yToUse = "RosetteDirPrinStrain";
            elseif app.MaxShearStrainButton.Value == true
                yToUse = "RosetteMaxShearStrain";
            elseif app.MaxPrinStressButton.Value == true
                yToUse = "RosetteMaxPrinStress";
            elseif app.MinPrinStressButton.Value == true
                yToUse = "RosetteMinPrinStress";
            elseif app.MaxShearStressButton.Value == true
                yToUse = "RosetteShearStress";
            else
                fig = uifigure;
                message = sprintf('No rosette data!');
                uialert(fig,message,'Warning',...
                'Icon','warning');
            end
            
            if yToUse ~= " "
                for i = 1:10
                    app.yValue(i) = sprintf("%s%d",yToUse,i);
                end
            end
        end
        
        % main plot data
        function mainPlotData(app)
            app.x = app.sheetDataR.(app.indepColValueR);
            app.y = table();
            for i = 1:10
                app.y.(app.yValue(i)) = app.sheetDataR.(app.yValue(i));
            end
        end
        
        function mainPlot(app)
            for i = 1:10
%                 hold(app.(sprintf("UIAxes_%d",i)),'off'); % function at the beginning
                plot(app.(sprintf("UIAxes_%d",i)),app.x,app.y.(app.yValue(i)),...
                    "Color",[0 0.4470 0.7410]);
            end
        end
        
        % x cycle data
        function xCycleStructData(app)
            cycleMax = size(app.cycleRecordR);
            for j=1:cycleMax
                app.xCycleStruct.(sprintf("Cycle_%d",j)) = app.x(app.cycleRecordR(j,1):app.cycleRecordR(j,4));
            end
        end
        
        % y cycle data
        function yCycleStructData(app)
            app.yCycleStruct = struct();
            cycleMax = size(app.cycleRecordR);
            for i = 1:10
                for j = 1:cycleMax
                    app.yCycleStruct.(sprintf("UIAxes_%d",i)).(sprintf("Cycle_%d",j)) = app.y.(app.yValue(i))(app.cycleRecordR(j,1):app.cycleRecordR(j,4));
                end  
            end
        end
        
        % cycle plot
        function cyclePlot(app)
            cycltToPLot = app.CyclesListBox.Value;
            for i = 1:10
                plot(app.(sprintf("UIAxes_%d",i)),app.xCycleStruct.(cycltToPLot),app.yCycleStruct.(sprintf("UIAxes_%d",i)).(cycltToPLot),...
                    "Color",[0.8500 0.3250 0.0980],"LineWidth",2.0,"Marker","*","MarkerSize",4);
                
                % Max & Min
                yMax = max(app.yCycleStruct.(sprintf("UIAxes_%d",i)).(cycltToPLot));
                yMin = min(app.yCycleStruct.(sprintf("UIAxes_%d",i)).(cycltToPLot));
                yRel = yMax - yMin;
                app.(sprintf("MaxValueEditField_%d",i)).Value = yMax;
                app.(sprintf("MinValueEditField_%d",i)).Value = yMin;
                app.(sprintf("RelValueEditField_%d",i)).Value = yRel;
                
                % slider
                app.SliderRosette.Enable = 'on';
                if round(app.SliderRosette.Value) == 1
                    app.DecButton.Enable = 'off';
                elseif round(app.SliderRosette.Value) == size(app.xCycleStruct.(app.CyclesListBox.Value),1)
                    app.IncButton.Enable = 'off';
                else
                    app.DecButton.Enable = 'on';
                    app.IncButton.Enable = 'on';
                end
                
                app.IncButton.Enable = 'on';
                app.SliderRosette.Limits = [1,size(app.xCycleStruct.(cycltToPLot),1)];
%                 app.MinLabel.Text = num2str(1);
%                 app.MaxLabel.Text = num2str(size(app.xCycleStruct.(cycltToPLot),1));
                app.SliderRosette.Value = 1;
                app.SliderRosette.MajorTicks = [1,size(app.xCycleStruct.(cycltToPLot),1)];
                app.SliderRosette.MajorTickLabels = {num2str(1),num2str(size(app.xCycleStruct.(cycltToPLot),1))};
                
                % point plot
                hold(app.(sprintf("UIAxes_%d",i)),'on');
                app.(sprintf("cyclePointPlot%d",i)) = plot(app.(sprintf("UIAxes_%d",i)),app.xCycleStruct.(cycltToPLot)(1),...
                    app.yCycleStruct.(sprintf("UIAxes_%d",i)).(cycltToPLot)(1),"Color",[1 0 0],...
                    "Marker",".","MarkerSize",30); % plot once, but change late
            end
        end
        
        % plot by choose
        function plotByChhose(app)
            if app.WithCycleButton.Value == true
                for i = 1:10
                    hold(app.(sprintf("UIAxes_%d",i)),'off');
                    mainPlot(app);
                    hold(app.(sprintf("UIAxes_%d",i)),'on');
                    cyclePlot(app);
                end
            elseif app.CycleonlyButton.Value == true
                for i = 1:10
                    hold(app.(sprintf("UIAxes_%d",i)),'off');
                    cyclePlot(app);
                end
            else
                fig = uifigure;
                message = sprintf('Something went wrong!\nPlease check the plot select.');
                uialert(fig,message,'Warning',...
                'Icon','warning');
            end
        end
        
        % sliderPlot
        function sliderPlot(app,currentStep)
            if round(app.SliderRosette.Value) == 1
                app.DecButton.Enable = 'off';
            elseif round(app.SliderRosette.Value) == size(app.xCycleStruct.(app.CyclesListBox.Value),1)
                app.IncButton.Enable = 'off';
            else
                app.DecButton.Enable = 'on';
                app.IncButton.Enable = 'on';
            end
            for i = 1:10
                app.CurrentLabel.Text = num2str(currentStep);
                sliderX = app.xCycleStruct.(app.CyclesListBox.Value)(currentStep);
                sliderY = app.yCycleStruct.(sprintf("UIAxes_%d",i)).(app.CyclesListBox.Value)(currentStep);
                set(app.(sprintf("cyclePointPlot%d",i)),'XData', sliderX, 'YData', sliderY);
                app.(sprintf("CurValueEditField_%d",i)).Value = sliderY;
            end
        end
        
        % handle for point
        function orDecInc(app,delta)
            newPoint = round(app.SliderRosette.Value) + delta;
            if newPoint == 1
                app.DecButton.Enable = 'off';
            elseif newPoint == size(app.xCycleStruct.(app.CyclesListBox.Value),1)
                app.IncButton.Enable = 'off';
            else
                app.DecButton.Enable = 'on';
                app.IncButton.Enable = 'on';
            end
            app.SliderRosette.Value = newPoint;
            sliderPlot(app,newPoint);
        end

    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, HyLoop102, sheetData, indepColValue, cycleList, cycleRecord)
            app.CallingApp = HyLoop102;
            app.CyclesListBox.Items = cycleList;
            app.CyclesListBox.Value = cycleList(1);
            app.DirPrinStrainButton.Value = true;
            app.WithCycleButton.Value = true;
            app.sheetDataR = sheetData;
            app.colListR = app.sheetDataR.Properties.VariableNames;
            app.indepColValueR = indepColValue;
            app.cycleRecordR = cycleRecord;
            proc_yValue(app);
            mainPlotData(app);
            mainPlot(app);
            xCycleStructData(app);
            yCycleStructData(app);
            app.SliderRosette.Enable = 'off';
            app.DecButton.Enable = 'off';
            app.IncButton.Enable = 'off';
            
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
%             app.CallingApp.RosttesButton.Enable = 'on';
            delete(app);
            app.CallingApp.RosttesButton.Enable = 'on';
            
        end

        % Button pushed function: CloseButton
        function CloseButtonPushed(app, event)
            app.CallingApp.RosttesButton.Enable = 'on';
            delete(app)
        end

        % Selection changed function: ButtonGroupSelect
        function ButtonGroupSelectSelectionChanged(app, event)
            selectedButton = app.ButtonGroupSelect.SelectedObject;
            proc_yValue(app);
            mainPlotData(app);
            yCycleStructData(app);
            plotByChhose(app);
        end

        % Value changed function: CyclesListBox
        function CyclesListBoxValueChanged(app, event)
            value = app.CyclesListBox.Value;
            plotByChhose(app);
        end

        % Selection changed function: ButtonGroupPlot
        function ButtonGroupPlotSelectionChanged(app, event)
            selectedButton = app.ButtonGroupPlot.SelectedObject;
            plotByChhose(app);
        end

        % Value changing function: SliderRosette
        function SliderRosetteValueChanging(app, event)
            sliderChangingValue = round(event.Value);
            sliderPlot(app,sliderChangingValue);
        end

        % Button pushed function: DecButton
        function DecButtonPushed(app, event)
            delta = -1;
            orDecInc(app,delta);
        end

        % Button pushed function: IncButton
        function IncButtonPushed(app, event)
            delta = 1;
            orDecInc(app,delta);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1620 859];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create Panel_1
            app.Panel_1 = uipanel(app.UIFigure);
            app.Panel_1.Position = [11 549 320 300];

            % Create UIAxes_1
            app.UIAxes_1 = uiaxes(app.Panel_1);
            title(app.UIAxes_1, 'Rosette 1')
            xlabel(app.UIAxes_1, 'Drift')
            ylabel(app.UIAxes_1, 'Y')
            zlabel(app.UIAxes_1, 'Z')
            app.UIAxes_1.Position = [10 60 300 229];

            % Create CurValueEditFieldLabel
            app.CurValueEditFieldLabel = uilabel(app.Panel_1);
            app.CurValueEditFieldLabel.Position = [27 33 64 22];
            app.CurValueEditFieldLabel.Text = 'Cur.Value';

            % Create CurValueEditField_1
            app.CurValueEditField_1 = uieditfield(app.Panel_1, 'numeric');
            app.CurValueEditField_1.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_1.Position = [91 31 59 22];

            % Create RelValueEditFieldLabel
            app.RelValueEditFieldLabel = uilabel(app.Panel_1);
            app.RelValueEditFieldLabel.Position = [27 9 64 22];
            app.RelValueEditFieldLabel.Text = 'Rel.Value';

            % Create RelValueEditField_1
            app.RelValueEditField_1 = uieditfield(app.Panel_1, 'numeric');
            app.RelValueEditField_1.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_1.Position = [91 7 59 22];

            % Create MaxValueEditField_2Label
            app.MaxValueEditField_2Label = uilabel(app.Panel_1);
            app.MaxValueEditField_2Label.Position = [178 34 64 22];
            app.MaxValueEditField_2Label.Text = 'Max.Value';

            % Create MaxValueEditField_1
            app.MaxValueEditField_1 = uieditfield(app.Panel_1, 'numeric');
            app.MaxValueEditField_1.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_1.Position = [242 33 59 22];

            % Create MinValueEditFieldLabel
            app.MinValueEditFieldLabel = uilabel(app.Panel_1);
            app.MinValueEditFieldLabel.Position = [178 9 64 22];
            app.MinValueEditFieldLabel.Text = 'Min.Value';

            % Create MinValueEditField_1
            app.MinValueEditField_1 = uieditfield(app.Panel_1, 'numeric');
            app.MinValueEditField_1.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_1.Position = [242 7 59 22];

            % Create CloseButton
            app.CloseButton = uibutton(app.UIFigure, 'push');
            app.CloseButton.ButtonPushedFcn = createCallbackFcn(app, @CloseButtonPushed, true);
            app.CloseButton.Position = [1378 120 152 22];
            app.CloseButton.Text = 'Close';

            % Create Panel1_2
            app.Panel1_2 = uipanel(app.UIFigure);
            app.Panel1_2.Position = [330 549 320 300];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.Panel1_2);
            title(app.UIAxes_2, 'Rosette 2')
            xlabel(app.UIAxes_2, 'Drift')
            ylabel(app.UIAxes_2, 'Y')
            zlabel(app.UIAxes_2, 'Z')
            app.UIAxes_2.Position = [10 60 300 229];

            % Create CurValueEditField_2Label
            app.CurValueEditField_2Label = uilabel(app.Panel1_2);
            app.CurValueEditField_2Label.Position = [27 33 64 22];
            app.CurValueEditField_2Label.Text = 'Cur.Value';

            % Create CurValueEditField_2
            app.CurValueEditField_2 = uieditfield(app.Panel1_2, 'numeric');
            app.CurValueEditField_2.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_2.Position = [91 31 59 22];

            % Create RelValueEditField_2Label
            app.RelValueEditField_2Label = uilabel(app.Panel1_2);
            app.RelValueEditField_2Label.Position = [27 9 64 22];
            app.RelValueEditField_2Label.Text = 'Rel.Value';

            % Create RelValueEditField_2
            app.RelValueEditField_2 = uieditfield(app.Panel1_2, 'numeric');
            app.RelValueEditField_2.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_2.Position = [91 7 59 22];

            % Create MaxValueEditField_2Label_2
            app.MaxValueEditField_2Label_2 = uilabel(app.Panel1_2);
            app.MaxValueEditField_2Label_2.Position = [178 34 64 22];
            app.MaxValueEditField_2Label_2.Text = 'Max.Value';

            % Create MaxValueEditField_2
            app.MaxValueEditField_2 = uieditfield(app.Panel1_2, 'numeric');
            app.MaxValueEditField_2.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_2.Position = [242 33 59 22];

            % Create MinValueEditField_2Label
            app.MinValueEditField_2Label = uilabel(app.Panel1_2);
            app.MinValueEditField_2Label.Position = [178 9 64 22];
            app.MinValueEditField_2Label.Text = 'Min.Value';

            % Create MinValueEditField_2
            app.MinValueEditField_2 = uieditfield(app.Panel1_2, 'numeric');
            app.MinValueEditField_2.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_2.Position = [242 7 59 22];

            % Create Panel1_3
            app.Panel1_3 = uipanel(app.UIFigure);
            app.Panel1_3.Position = [649 549 320 300];

            % Create UIAxes_3
            app.UIAxes_3 = uiaxes(app.Panel1_3);
            title(app.UIAxes_3, 'Rosette 3')
            xlabel(app.UIAxes_3, 'Drift')
            ylabel(app.UIAxes_3, 'Y')
            zlabel(app.UIAxes_3, 'Z')
            app.UIAxes_3.Position = [10 60 300 229];

            % Create CurValueEditField_3Label
            app.CurValueEditField_3Label = uilabel(app.Panel1_3);
            app.CurValueEditField_3Label.Position = [27 33 64 22];
            app.CurValueEditField_3Label.Text = 'Cur.Value';

            % Create CurValueEditField_3
            app.CurValueEditField_3 = uieditfield(app.Panel1_3, 'numeric');
            app.CurValueEditField_3.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_3.Position = [91 31 59 22];

            % Create RelValueEditField_3Label
            app.RelValueEditField_3Label = uilabel(app.Panel1_3);
            app.RelValueEditField_3Label.Position = [27 9 64 22];
            app.RelValueEditField_3Label.Text = 'Rel.Value';

            % Create RelValueEditField_3
            app.RelValueEditField_3 = uieditfield(app.Panel1_3, 'numeric');
            app.RelValueEditField_3.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_3.Position = [91 7 59 22];

            % Create MaxValueEditField_3Label
            app.MaxValueEditField_3Label = uilabel(app.Panel1_3);
            app.MaxValueEditField_3Label.Position = [178 34 64 22];
            app.MaxValueEditField_3Label.Text = 'Max.Value';

            % Create MaxValueEditField_3
            app.MaxValueEditField_3 = uieditfield(app.Panel1_3, 'numeric');
            app.MaxValueEditField_3.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_3.Position = [242 33 59 22];

            % Create MinValueEditField_3Label
            app.MinValueEditField_3Label = uilabel(app.Panel1_3);
            app.MinValueEditField_3Label.Position = [178 9 64 22];
            app.MinValueEditField_3Label.Text = 'Min.Value';

            % Create MinValueEditField_3
            app.MinValueEditField_3 = uieditfield(app.Panel1_3, 'numeric');
            app.MinValueEditField_3.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_3.Position = [242 7 59 22];

            % Create Panel1_4
            app.Panel1_4 = uipanel(app.UIFigure);
            app.Panel1_4.Position = [968 549 320 300];

            % Create UIAxes_4
            app.UIAxes_4 = uiaxes(app.Panel1_4);
            title(app.UIAxes_4, 'Rosette 4')
            xlabel(app.UIAxes_4, 'Drift')
            ylabel(app.UIAxes_4, 'Y')
            zlabel(app.UIAxes_4, 'Z')
            app.UIAxes_4.Position = [10 60 300 229];

            % Create CurValueEditField_4Label
            app.CurValueEditField_4Label = uilabel(app.Panel1_4);
            app.CurValueEditField_4Label.Position = [27 33 64 22];
            app.CurValueEditField_4Label.Text = 'Cur.Value';

            % Create CurValueEditField_4
            app.CurValueEditField_4 = uieditfield(app.Panel1_4, 'numeric');
            app.CurValueEditField_4.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_4.Position = [91 31 59 22];

            % Create RelValueEditField_4Label
            app.RelValueEditField_4Label = uilabel(app.Panel1_4);
            app.RelValueEditField_4Label.Position = [27 9 64 22];
            app.RelValueEditField_4Label.Text = 'Rel.Value';

            % Create RelValueEditField_4
            app.RelValueEditField_4 = uieditfield(app.Panel1_4, 'numeric');
            app.RelValueEditField_4.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_4.Position = [91 7 59 22];

            % Create MaxValueEditField_4Label
            app.MaxValueEditField_4Label = uilabel(app.Panel1_4);
            app.MaxValueEditField_4Label.Position = [178 34 64 22];
            app.MaxValueEditField_4Label.Text = 'Max.Value';

            % Create MaxValueEditField_4
            app.MaxValueEditField_4 = uieditfield(app.Panel1_4, 'numeric');
            app.MaxValueEditField_4.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_4.Position = [242 33 59 22];

            % Create MinValueEditField_4Label
            app.MinValueEditField_4Label = uilabel(app.Panel1_4);
            app.MinValueEditField_4Label.Position = [178 9 64 22];
            app.MinValueEditField_4Label.Text = 'Min.Value';

            % Create MinValueEditField_4
            app.MinValueEditField_4 = uieditfield(app.Panel1_4, 'numeric');
            app.MinValueEditField_4.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_4.Position = [242 7 59 22];

            % Create Panel1_5
            app.Panel1_5 = uipanel(app.UIFigure);
            app.Panel1_5.Position = [1287 549 320 300];

            % Create UIAxes_5
            app.UIAxes_5 = uiaxes(app.Panel1_5);
            title(app.UIAxes_5, 'Rosette 5')
            xlabel(app.UIAxes_5, 'Drift')
            ylabel(app.UIAxes_5, 'Y')
            zlabel(app.UIAxes_5, 'Z')
            app.UIAxes_5.Position = [10 60 300 229];

            % Create CurValueEditField_5Label
            app.CurValueEditField_5Label = uilabel(app.Panel1_5);
            app.CurValueEditField_5Label.Position = [27 33 64 22];
            app.CurValueEditField_5Label.Text = 'Cur.Value';

            % Create CurValueEditField_5
            app.CurValueEditField_5 = uieditfield(app.Panel1_5, 'numeric');
            app.CurValueEditField_5.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_5.Position = [91 31 59 22];

            % Create RelValueEditField_5Label
            app.RelValueEditField_5Label = uilabel(app.Panel1_5);
            app.RelValueEditField_5Label.Position = [27 9 64 22];
            app.RelValueEditField_5Label.Text = 'Rel.Value';

            % Create RelValueEditField_5
            app.RelValueEditField_5 = uieditfield(app.Panel1_5, 'numeric');
            app.RelValueEditField_5.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_5.Position = [91 7 59 22];

            % Create MaxValueEditField_5Label
            app.MaxValueEditField_5Label = uilabel(app.Panel1_5);
            app.MaxValueEditField_5Label.Position = [178 34 64 22];
            app.MaxValueEditField_5Label.Text = 'Max.Value';

            % Create MaxValueEditField_5
            app.MaxValueEditField_5 = uieditfield(app.Panel1_5, 'numeric');
            app.MaxValueEditField_5.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_5.Position = [242 33 59 22];

            % Create MinValueEditField_5Label
            app.MinValueEditField_5Label = uilabel(app.Panel1_5);
            app.MinValueEditField_5Label.Position = [178 9 64 22];
            app.MinValueEditField_5Label.Text = 'Min.Value';

            % Create MinValueEditField_5
            app.MinValueEditField_5 = uieditfield(app.Panel1_5, 'numeric');
            app.MinValueEditField_5.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_5.Position = [242 7 59 22];

            % Create Panel_2
            app.Panel_2 = uipanel(app.UIFigure);
            app.Panel_2.Position = [11 250 320 300];

            % Create UIAxes_6
            app.UIAxes_6 = uiaxes(app.Panel_2);
            title(app.UIAxes_6, 'Rosette 6')
            xlabel(app.UIAxes_6, 'Drift')
            ylabel(app.UIAxes_6, 'Y')
            zlabel(app.UIAxes_6, 'Z')
            app.UIAxes_6.Position = [10 60 300 229];

            % Create CurValueEditField_6Label
            app.CurValueEditField_6Label = uilabel(app.Panel_2);
            app.CurValueEditField_6Label.Position = [27 33 64 22];
            app.CurValueEditField_6Label.Text = 'Cur.Value';

            % Create CurValueEditField_6
            app.CurValueEditField_6 = uieditfield(app.Panel_2, 'numeric');
            app.CurValueEditField_6.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_6.Position = [91 31 59 22];

            % Create RelValueEditField_6Label
            app.RelValueEditField_6Label = uilabel(app.Panel_2);
            app.RelValueEditField_6Label.Position = [27 9 64 22];
            app.RelValueEditField_6Label.Text = 'Rel.Value';

            % Create RelValueEditField_6
            app.RelValueEditField_6 = uieditfield(app.Panel_2, 'numeric');
            app.RelValueEditField_6.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_6.Position = [91 7 59 22];

            % Create MaxValueEditField_6Label
            app.MaxValueEditField_6Label = uilabel(app.Panel_2);
            app.MaxValueEditField_6Label.Position = [178 34 64 22];
            app.MaxValueEditField_6Label.Text = 'Max.Value';

            % Create MaxValueEditField_6
            app.MaxValueEditField_6 = uieditfield(app.Panel_2, 'numeric');
            app.MaxValueEditField_6.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_6.Position = [242 33 59 22];

            % Create MinValueEditField_6Label
            app.MinValueEditField_6Label = uilabel(app.Panel_2);
            app.MinValueEditField_6Label.Position = [178 9 64 22];
            app.MinValueEditField_6Label.Text = 'Min.Value';

            % Create MinValueEditField_6
            app.MinValueEditField_6 = uieditfield(app.Panel_2, 'numeric');
            app.MinValueEditField_6.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_6.Position = [242 7 59 22];

            % Create Panel1_6
            app.Panel1_6 = uipanel(app.UIFigure);
            app.Panel1_6.Position = [330 250 320 300];

            % Create UIAxes_7
            app.UIAxes_7 = uiaxes(app.Panel1_6);
            title(app.UIAxes_7, 'Rosette 7')
            xlabel(app.UIAxes_7, 'Drift')
            ylabel(app.UIAxes_7, 'Y')
            zlabel(app.UIAxes_7, 'Z')
            app.UIAxes_7.Position = [10 60 300 229];

            % Create CurValueEditField_7Label
            app.CurValueEditField_7Label = uilabel(app.Panel1_6);
            app.CurValueEditField_7Label.Position = [27 33 64 22];
            app.CurValueEditField_7Label.Text = 'Cur.Value';

            % Create CurValueEditField_7
            app.CurValueEditField_7 = uieditfield(app.Panel1_6, 'numeric');
            app.CurValueEditField_7.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_7.Position = [91 31 59 22];

            % Create RelValueEditField_7Label
            app.RelValueEditField_7Label = uilabel(app.Panel1_6);
            app.RelValueEditField_7Label.Position = [27 9 64 22];
            app.RelValueEditField_7Label.Text = 'Rel.Value';

            % Create RelValueEditField_7
            app.RelValueEditField_7 = uieditfield(app.Panel1_6, 'numeric');
            app.RelValueEditField_7.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_7.Position = [91 7 59 22];

            % Create MaxValueEditField_7Label
            app.MaxValueEditField_7Label = uilabel(app.Panel1_6);
            app.MaxValueEditField_7Label.Position = [178 34 64 22];
            app.MaxValueEditField_7Label.Text = 'Max.Value';

            % Create MaxValueEditField_7
            app.MaxValueEditField_7 = uieditfield(app.Panel1_6, 'numeric');
            app.MaxValueEditField_7.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_7.Position = [242 33 59 22];

            % Create MinValueEditField_7Label
            app.MinValueEditField_7Label = uilabel(app.Panel1_6);
            app.MinValueEditField_7Label.Position = [178 9 64 22];
            app.MinValueEditField_7Label.Text = 'Min.Value';

            % Create MinValueEditField_7
            app.MinValueEditField_7 = uieditfield(app.Panel1_6, 'numeric');
            app.MinValueEditField_7.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_7.Position = [242 7 59 22];

            % Create Panel1_7
            app.Panel1_7 = uipanel(app.UIFigure);
            app.Panel1_7.Position = [649 250 320 300];

            % Create UIAxes_8
            app.UIAxes_8 = uiaxes(app.Panel1_7);
            title(app.UIAxes_8, 'Rosette 8')
            xlabel(app.UIAxes_8, 'Drift')
            ylabel(app.UIAxes_8, 'Y')
            zlabel(app.UIAxes_8, 'Z')
            app.UIAxes_8.Position = [10 60 300 229];

            % Create CurValueEditField_8Label
            app.CurValueEditField_8Label = uilabel(app.Panel1_7);
            app.CurValueEditField_8Label.Position = [27 33 64 22];
            app.CurValueEditField_8Label.Text = 'Cur.Value';

            % Create CurValueEditField_8
            app.CurValueEditField_8 = uieditfield(app.Panel1_7, 'numeric');
            app.CurValueEditField_8.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_8.Position = [91 31 59 22];

            % Create RelValueEditField_8Label
            app.RelValueEditField_8Label = uilabel(app.Panel1_7);
            app.RelValueEditField_8Label.Position = [27 9 64 22];
            app.RelValueEditField_8Label.Text = 'Rel.Value';

            % Create RelValueEditField_8
            app.RelValueEditField_8 = uieditfield(app.Panel1_7, 'numeric');
            app.RelValueEditField_8.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_8.Position = [91 7 59 22];

            % Create MaxValueEditField_8Label
            app.MaxValueEditField_8Label = uilabel(app.Panel1_7);
            app.MaxValueEditField_8Label.Position = [178 34 64 22];
            app.MaxValueEditField_8Label.Text = 'Max.Value';

            % Create MaxValueEditField_8
            app.MaxValueEditField_8 = uieditfield(app.Panel1_7, 'numeric');
            app.MaxValueEditField_8.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_8.Position = [242 33 59 22];

            % Create MinValueEditField_8Label
            app.MinValueEditField_8Label = uilabel(app.Panel1_7);
            app.MinValueEditField_8Label.Position = [178 9 64 22];
            app.MinValueEditField_8Label.Text = 'Min.Value';

            % Create MinValueEditField_8
            app.MinValueEditField_8 = uieditfield(app.Panel1_7, 'numeric');
            app.MinValueEditField_8.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_8.Position = [242 7 59 22];

            % Create Panel1_8
            app.Panel1_8 = uipanel(app.UIFigure);
            app.Panel1_8.Position = [968 250 320 300];

            % Create UIAxes_9
            app.UIAxes_9 = uiaxes(app.Panel1_8);
            title(app.UIAxes_9, 'Rosette 9')
            xlabel(app.UIAxes_9, 'Drift')
            ylabel(app.UIAxes_9, 'Y')
            zlabel(app.UIAxes_9, 'Z')
            app.UIAxes_9.Position = [10 60 300 229];

            % Create CurValueEditField_9Label
            app.CurValueEditField_9Label = uilabel(app.Panel1_8);
            app.CurValueEditField_9Label.Position = [27 33 64 22];
            app.CurValueEditField_9Label.Text = 'Cur.Value';

            % Create CurValueEditField_9
            app.CurValueEditField_9 = uieditfield(app.Panel1_8, 'numeric');
            app.CurValueEditField_9.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_9.Position = [91 31 59 22];

            % Create RelValueEditField_9Label
            app.RelValueEditField_9Label = uilabel(app.Panel1_8);
            app.RelValueEditField_9Label.Position = [27 9 64 22];
            app.RelValueEditField_9Label.Text = 'Rel.Value';

            % Create RelValueEditField_9
            app.RelValueEditField_9 = uieditfield(app.Panel1_8, 'numeric');
            app.RelValueEditField_9.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_9.Position = [91 7 59 22];

            % Create MaxValueEditField_9Label
            app.MaxValueEditField_9Label = uilabel(app.Panel1_8);
            app.MaxValueEditField_9Label.Position = [178 34 64 22];
            app.MaxValueEditField_9Label.Text = 'Max.Value';

            % Create MaxValueEditField_9
            app.MaxValueEditField_9 = uieditfield(app.Panel1_8, 'numeric');
            app.MaxValueEditField_9.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_9.Position = [242 33 59 22];

            % Create MinValueEditField_9Label
            app.MinValueEditField_9Label = uilabel(app.Panel1_8);
            app.MinValueEditField_9Label.Position = [178 9 64 22];
            app.MinValueEditField_9Label.Text = 'Min.Value';

            % Create MinValueEditField_9
            app.MinValueEditField_9 = uieditfield(app.Panel1_8, 'numeric');
            app.MinValueEditField_9.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_9.Position = [242 7 59 22];

            % Create Panel1_9
            app.Panel1_9 = uipanel(app.UIFigure);
            app.Panel1_9.Position = [1287 250 320 300];

            % Create UIAxes_10
            app.UIAxes_10 = uiaxes(app.Panel1_9);
            title(app.UIAxes_10, 'Rosette 10')
            xlabel(app.UIAxes_10, 'Drift')
            ylabel(app.UIAxes_10, 'Y')
            zlabel(app.UIAxes_10, 'Z')
            app.UIAxes_10.Position = [10 60 300 229];

            % Create CurValueEditField_10Label
            app.CurValueEditField_10Label = uilabel(app.Panel1_9);
            app.CurValueEditField_10Label.Position = [27 33 64 22];
            app.CurValueEditField_10Label.Text = 'Cur.Value';

            % Create CurValueEditField_10
            app.CurValueEditField_10 = uieditfield(app.Panel1_9, 'numeric');
            app.CurValueEditField_10.ValueDisplayFormat = '%.2f';
            app.CurValueEditField_10.Position = [91 31 59 22];

            % Create RelValueEditField_10Label
            app.RelValueEditField_10Label = uilabel(app.Panel1_9);
            app.RelValueEditField_10Label.Position = [27 9 64 22];
            app.RelValueEditField_10Label.Text = 'Rel.Value';

            % Create RelValueEditField_10
            app.RelValueEditField_10 = uieditfield(app.Panel1_9, 'numeric');
            app.RelValueEditField_10.ValueDisplayFormat = '%.2f';
            app.RelValueEditField_10.Position = [91 7 59 22];

            % Create MaxValueEditField_10Label
            app.MaxValueEditField_10Label = uilabel(app.Panel1_9);
            app.MaxValueEditField_10Label.Position = [178 34 64 22];
            app.MaxValueEditField_10Label.Text = 'Max.Value';

            % Create MaxValueEditField_10
            app.MaxValueEditField_10 = uieditfield(app.Panel1_9, 'numeric');
            app.MaxValueEditField_10.ValueDisplayFormat = '%.2f';
            app.MaxValueEditField_10.Position = [242 33 59 22];

            % Create MinValueEditField_10Label
            app.MinValueEditField_10Label = uilabel(app.Panel1_9);
            app.MinValueEditField_10Label.Position = [178 9 64 22];
            app.MinValueEditField_10Label.Text = 'Min.Value';

            % Create MinValueEditField_10
            app.MinValueEditField_10 = uieditfield(app.Panel1_9, 'numeric');
            app.MinValueEditField_10.ValueDisplayFormat = '%.2f';
            app.MinValueEditField_10.Position = [242 7 59 22];

            % Create Panel
            app.Panel = uipanel(app.UIFigure);
            app.Panel.Position = [11 11 1277 239];

            % Create CyclesListBoxLabel
            app.CyclesListBoxLabel = uilabel(app.Panel);
            app.CyclesListBoxLabel.Position = [180 211 42 22];
            app.CyclesListBoxLabel.Text = 'Cycles';

            % Create CyclesListBox
            app.CyclesListBox = uilistbox(app.Panel);
            app.CyclesListBox.Items = {};
            app.CyclesListBox.ValueChangedFcn = createCallbackFcn(app, @CyclesListBoxValueChanged, true);
            app.CyclesListBox.Position = [221 13 82 220];
            app.CyclesListBox.Value = {};

            % Create SliderRosette
            app.SliderRosette = uislider(app.Panel);
            app.SliderRosette.MajorTicks = [1 100];
            app.SliderRosette.ValueChangingFcn = createCallbackFcn(app, @SliderRosetteValueChanging, true);
            app.SliderRosette.MinorTicks = [];
            app.SliderRosette.Position = [410 127 790 3];

            % Create ButtonGroupSelect
            app.ButtonGroupSelect = uibuttongroup(app.Panel);
            app.ButtonGroupSelect.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectSelectionChanged, true);
            app.ButtonGroupSelect.BorderType = 'none';
            app.ButtonGroupSelect.Position = [64 70 114 163];

            % Create MaxPrinStrainButton
            app.MaxPrinStrainButton = uiradiobutton(app.ButtonGroupSelect);
            app.MaxPrinStrainButton.Text = 'MaxPrinStrain';
            app.MaxPrinStrainButton.Position = [7 142 97 22];
            app.MaxPrinStrainButton.Value = true;

            % Create MinPrinStrainButton
            app.MinPrinStrainButton = uiradiobutton(app.ButtonGroupSelect);
            app.MinPrinStrainButton.Text = 'MinPrinStrain';
            app.MinPrinStrainButton.Position = [7 118 94 22];

            % Create DirPrinStrainButton
            app.DirPrinStrainButton = uiradiobutton(app.ButtonGroupSelect);
            app.DirPrinStrainButton.Text = 'DirPrinStrain';
            app.DirPrinStrainButton.Position = [7 94 90 22];

            % Create MaxShearStrainButton
            app.MaxShearStrainButton = uiradiobutton(app.ButtonGroupSelect);
            app.MaxShearStrainButton.Text = 'MaxShearStrain';
            app.MaxShearStrainButton.Position = [7 71 108 22];

            % Create MaxPrinStressButton
            app.MaxPrinStressButton = uiradiobutton(app.ButtonGroupSelect);
            app.MaxPrinStressButton.Text = 'MaxPrinStress';
            app.MaxPrinStressButton.Position = [7 48 100 22];

            % Create MinPrinStressButton
            app.MinPrinStressButton = uiradiobutton(app.ButtonGroupSelect);
            app.MinPrinStressButton.Text = 'MinPrinStress';
            app.MinPrinStressButton.Position = [7 25 97 22];

            % Create MaxShearStressButton
            app.MaxShearStressButton = uiradiobutton(app.ButtonGroupSelect);
            app.MaxShearStressButton.Text = 'MaxShearStress';
            app.MaxShearStressButton.Position = [7 2 111 22];

            % Create SelectLabel
            app.SelectLabel = uilabel(app.Panel);
            app.SelectLabel.Position = [20 211 39 22];
            app.SelectLabel.Text = 'Select';

            % Create ButtonGroupPlot
            app.ButtonGroupPlot = uibuttongroup(app.Panel);
            app.ButtonGroupPlot.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupPlotSelectionChanged, true);
            app.ButtonGroupPlot.BorderType = 'none';
            app.ButtonGroupPlot.Position = [65 13 113 53];

            % Create WithCycleButton
            app.WithCycleButton = uiradiobutton(app.ButtonGroupPlot);
            app.WithCycleButton.Text = 'With Cycle';
            app.WithCycleButton.Position = [5 27 79 22];
            app.WithCycleButton.Value = true;

            % Create CycleonlyButton
            app.CycleonlyButton = uiradiobutton(app.ButtonGroupPlot);
            app.CycleonlyButton.Text = 'Cycle only';
            app.CycleonlyButton.Position = [5 5 77 22];

            % Create PlotLabel
            app.PlotLabel = uilabel(app.Panel);
            app.PlotLabel.Position = [20 39 26 22];
            app.PlotLabel.Text = 'Plot';

            % Create CurrentLabel
            app.CurrentLabel = uilabel(app.Panel);
            app.CurrentLabel.HorizontalAlignment = 'center';
            app.CurrentLabel.FontWeight = 'bold';
            app.CurrentLabel.Position = [346 211 49 22];
            app.CurrentLabel.Text = 'Current';

            % Create DecButton
            app.DecButton = uibutton(app.Panel, 'push');
            app.DecButton.ButtonPushedFcn = createCallbackFcn(app, @DecButtonPushed, true);
            app.DecButton.Position = [410 211 59 22];
            app.DecButton.Text = 'Dec';

            % Create IncButton
            app.IncButton = uibutton(app.Panel, 'push');
            app.IncButton.ButtonPushedFcn = createCallbackFcn(app, @IncButtonPushed, true);
            app.IncButton.Position = [478 211 59 22];
            app.IncButton.Text = 'Inc';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Rosettes_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

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