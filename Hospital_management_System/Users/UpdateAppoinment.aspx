<%@ Page Title="UpdateAppoinment" Language="C#" AutoEventWireup="true" MasterPageFile="~/Users/usermaster.Master" CodeBehind="UpdateAppoinment.aspx.cs" Inherits="Hospital_management_System.Users.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        
		
	<div class="about">
	<div class="abt-layer">
		<div class="container">
			<div class="about-main">
				<div class="about-right">
					<h3 class="subheading-w3-agile">Update an Appointment</h3>

					<!-- stats -->
					<div class="stats">
						<div class="stats_inner">
							<form action="#" method="post">
								<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp&nbsp&nbsp<asp:Label ID="lbl_Appontment_no" runat="server" Text="Label"></asp:Label>
								<asp:DropDownList ID="DropDownList_Section" class="form-control mb-3" runat="server">
									<asp:ListItem Value="2">Neurology</asp:ListItem>
									<asp:ListItem Value="3">Dentistry</asp:ListItem>
									<asp:ListItem Value="4">Cardiology</asp:ListItem>
									<asp:ListItem Value="5">Pediatrics</asp:ListItem>
									<asp:ListItem Value="6">Pulmonolog</asp:ListItem>
									<asp:ListItem Value="7"> Ophthalmolog</asp:ListItem>
									<asp:ListItem Value="8">Diagnostics</asp:ListItem>
								</asp:DropDownList>


								<asp:TextBox ID="txt_Appoint_name" placeholder="Name" class="form-control mb-3" runat="server"></asp:TextBox>
								

								<asp:DropDownList ID="DropDownList_gender" class="form-control mb-3" runat="server">
									<asp:ListItem Value="2">Gender</asp:ListItem>
									<asp:ListItem Value="3">Male</asp:ListItem>
									<asp:ListItem Value="4">Female</asp:ListItem>
								</asp:DropDownList>

								<asp:TextBox ID="txt_Apoint_Mobile" class="form-control mb-3" placeholder="Phone"  runat="server"></asp:TextBox>
								
								<asp:TextBox ID="txt_Apoint_Email" class="form-control mb-3" placeholder="Email"  runat="server"></asp:TextBox>
								
								<asp:TextBox ID="datepicke" class="form-control date mb-3"  placeholder="Select Date"  runat="server"></asp:TextBox>

								
							</form>
						</div>
					</div>
					<!-- //stats -->

				</div>
			</div>
			
		</div>
		</div>

  <div class="abt-layer" style="background-position:center">
			<div class="about-main1">
					<h3 class="subheading-w3-agile1">Appointment List
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="AID" EnableModelValidation="True" Height="10%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                               <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" OnClick="lnkDelete_Click" />
            </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" OnClick="btn_Appointmnet_Update_Submit_Click" />
            </ItemTemplate>
        </asp:TemplateField>
                        </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle  BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        </asp:GridView>
                    </h3>

			
	
		</div>
		</div>
	</div>

    </div>

</asp:Content>

