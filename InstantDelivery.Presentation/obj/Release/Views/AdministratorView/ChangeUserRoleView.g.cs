﻿#pragma checksum "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "FB782F460807C1A81B5888A3245537470B03E73D522ABD9BDCA8F97AA77840C4"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using InstantDelivery.Common.Enums;
using InstantDelivery.Helpers;
using MahApps.Metro.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace InstantDelivery.Views {
    
    
    /// <summary>
    /// ChangeUserRoleView
    /// </summary>
    public partial class ChangeUserRoleView : MahApps.Metro.Controls.MetroWindow, System.Windows.Markup.IComponentConnector {
        
        
        #line 29 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox User_UserName;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox User_FirstName;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox User_LastName;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox User_Role;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Cancel;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Save;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/InstantDelivery;component/views/administratorview/changeuserroleview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Views\AdministratorView\ChangeUserRoleView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.User_UserName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.User_FirstName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.User_LastName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.User_Role = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.Cancel = ((System.Windows.Controls.Button)(target));
            return;
            case 6:
            this.Save = ((System.Windows.Controls.Button)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
