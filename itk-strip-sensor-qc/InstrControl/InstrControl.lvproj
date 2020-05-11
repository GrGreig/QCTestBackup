<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="InstrControl.lvclass" Type="LVClass" URL="../InstrControl.lvclass"/>
		<Item Name="ArduinoControl.lvclass" Type="LVClass" URL="../ArduinoControl/ArduinoControl.lvclass"/>
		<Item Name="LCRControl.lvclass" Type="LVClass" URL="../LCRControl/LCRControl.lvclass"/>
		<Item Name="WK6425.lvclass" Type="LVClass" URL="../LCRControl/WK6425/WK6425.lvclass"/>
		<Item Name="WK6440B.lvclass" Type="LVClass" URL="../LCRControl/WK6440B/WK6440B.lvclass"/>
		<Item Name="MultimeterControl.lvclass" Type="LVClass" URL="../MultimeterControl/MultimeterControl.lvclass"/>
		<Item Name="KE2000.lvclass" Type="LVClass" URL="../MultimeterControl/Keithley 2000/KE2000.lvclass"/>
		<Item Name="ProbeStationControl.lvclass" Type="LVClass" URL="../ProbeStationControl/ProbeStationControl.lvclass"/>
		<Item Name="SupplyControl.lvclass" Type="LVClass" URL="../SupplyControl/SupplyControl.lvclass"/>
		<Item Name="KE236.lvclass" Type="LVClass" URL="../SupplyControl/Keithley 236 &amp; 237/KE236.lvclass"/>
		<Item Name="KE2410.lvclass" Type="LVClass" URL="../SupplyControl/Keithley 2410/KE2410.lvclass"/>
		<Item Name="KE487.lvclass" Type="LVClass" URL="../SupplyControl/Keithley 487/KE487.lvclass"/>
		<Item Name="KE2657A.lvclass" Type="LVClass" URL="../SupplyControl/Keithley 2657A/KE2657A.lvclass"/>
		<Item Name="KE6517.lvclass" Type="LVClass" URL="../SupplyControl/Keithley 6517/KE6517.lvclass"/>
		<Item Name="Switching.lvclass" Type="LVClass" URL="../Switching/Switching.lvclass"/>
		<Item Name="GPIBSwitching.lvclass" Type="LVClass" URL="../Switching/GPIBSwitching/GPIBSwitching.lvclass"/>
		<Item Name="LXIPXISwitching.lvclass" Type="LVClass" URL="../Switching/LXIPXISwitching/LXIPXISwitching.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="DDE Execute.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dde.llb/DDE Execute.vi"/>
				<Item Name="DDE Master Control.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dde.llb/DDE Master Control.vi"/>
				<Item Name="DDE Open Conversation.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dde.llb/DDE Open Conversation.vi"/>
				<Item Name="DDE Request.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dde.llb/DDE Request.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="IVI Error Message Builder.vi" Type="VI" URL="/&lt;vilib&gt;/errclust.llb/IVI Error Message Builder.vi"/>
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="pi40iv IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv IVI Error Converter.vi"/>
				<Item Name="pi40iv Initialize With Options.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Initialize With Options.vi"/>
				<Item Name="pi40iv Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Connect Channels.vi"/>
				<Item Name="pi40iv Disconnect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Disconnect Channels.vi"/>
				<Item Name="pi40iv Close.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Close.vi"/>
				<Item Name="pi40iv Reset.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Reset.vi"/>
				<Item Name="pi40iv Set Output Bit.vi" Type="VI" URL="/&lt;instrlib&gt;/pi40iv/pi40iv.llb/pi40iv Set Output Bit.vi"/>
			</Item>
			<Item Name="pi40iv32.dll" Type="Document" URL="pi40iv32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="QC_MeasurementSetup.vi" Type="VI" URL="../../QCtests/general_VIs/globals/QC_MeasurementSetup.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
