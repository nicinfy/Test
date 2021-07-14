Declare @tenantId as uniqueidentifier
Declare @tenantCountryId_MY as uniqueidentifier
Declare @tenantCountryId_UK as uniqueidentifier
Declare @tenantCountryId_TH as uniqueidentifier
Declare @tenantCountryId_IN as uniqueidentifier
Declare @tenantCountryId_PH as uniqueidentifier

SET @tenantId = (select top 1 tenantid from VehicleBuildUps with(nolock) where tenantid is not null);
SET @tenantCountryId_MY = (select top 1 MasterCountryId from MasterCountries with(nolock) where IsDeleted = 0 and IsActive = 1 and CountryCode = 'MY');
SET @tenantCountryId_UK = (select top 1 MasterCountryId from MasterCountries with(nolock) where IsDeleted = 0 and IsActive = 1 and CountryCode = 'UK');
SET @tenantCountryId_TH = (select top 1 MasterCountryId from MasterCountries with(nolock) where IsDeleted = 0 and IsActive = 1 and CountryCode = 'TH');
SET @tenantCountryId_IN = (select top 1 MasterCountryId from MasterCountries with(nolock) where IsDeleted = 0 and IsActive = 1 and CountryCode = 'IN');
SET @tenantCountryId_PH = (select top 1 MasterCountryId from MasterCountries with(nolock) where IsDeleted = 0 and IsActive = 1 and CountryCode = 'PH');

insert into [EmailTemplates] ([TenantId] ,[TenantCountryId] ,[TemplateName] ,[TemplateType] 
 ,[TemplateContent]
 ,[TemplateSubject] ,[Description] ,[IsDeleted] ,[CreatedBy] ,[CreatedAt] ,[UpdatedBy] ,[UpdatedAt]
 ,[SendTo] ,[Topic] ,[Trigger])
 Values( @tenantId, @tenantCountryId_MY, 'Carrier Compliance Notification', 'Email',
 '<div style="width: 620px;">
<p><img style="height: 50px; width: 251px;" src="https://assets.ezyhaul.com/images/logo.png" alt="" /></p>
<p><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></p>
<p>Dear Carrier,</p>
<p>Please note that 1 or more of your {{MandatoryDocumentType}} compliance documents expires on {{Date}}.</p>
<p>Please log into <a href="https://demo-carrier.ezyhaul.com/login">CAW</a> and update. Failure to do so before your existing documents expire may prevent you from accepting any further jobs after the expiry date.</p>
<p><strong>Questions? </strong><br/>
If you require any further assistance, please contact your Digihaul Carrier Manager via support@ezyhaul.com.</p>
<p>Best regards, <br />Carrier Management Team</p>
</div>
<div><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></div>',
 'Compliance Document Expiry','Send Compilance Email When Document Expire',0,'99999999-9999-9999-9999-999999999999',
 GETDATE(),'99999999-9999-9999-9999-999999999999',GETDATE(),
 '','Carrier Compliance Notification','Carrier Compliance Notification')

 insert into [EmailTemplates] ([TenantId] ,[TenantCountryId] ,[TemplateName] ,[TemplateType] 
 ,[TemplateContent]
 ,[TemplateSubject] ,[Description] ,[IsDeleted] ,[CreatedBy] ,[CreatedAt] ,[UpdatedBy] ,[UpdatedAt]
 ,[SendTo] ,[Topic] ,[Trigger])
 Values( @tenantId, @tenantCountryId_UK, 'Carrier Compliance Notification', 'Email',
 '<div style="width: 620px;">
<p><img style="height: 50px; width: 251px;" src="https://assets.digihaul.com/images/logo.png" alt="" /></p>
<p><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></p>
<p>Dear Carrier,</p>
<p>Please note that 1 or more of your {{MandatoryDocumentType}} compliance documents expires on {{Date}}.</p>
<p>Please log into <a href="https://demo-carrier.digihaul.com/login">CAW</a> and update. Failure to do so before your existing documents expire may prevent you from accepting any further jobs after the expiry date.</p>
<p><strong>Questions? </strong><br />If you require any further assistance, please contact your Digihaul Carrier Manager via Carrier.compliance@digihaul.com.</p>
<p>Best regards, <br />Carrier Management Team</p>
</div>
<div><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></div>',
 'Compliance Document Expiry','Send Compilance Email When Document Expire',0,'99999999-9999-9999-9999-999999999999',
 GETDATE(),'99999999-9999-9999-9999-999999999999',GETDATE(),
 '','Carrier Compliance Notification','Carrier Compliance Notification')
 


insert into [EmailTemplates] ([TenantId] ,[TenantCountryId] ,[TemplateName] ,[TemplateType] 
 ,[TemplateContent]
 ,[TemplateSubject] ,[Description] ,[IsDeleted] ,[CreatedBy] ,[CreatedAt] ,[UpdatedBy] ,[UpdatedAt]
 ,[SendTo] ,[Topic] ,[Trigger])
 Values( @tenantId, @tenantCountryId_TH, 'Carrier Compliance Notification', 'Email',
 '<div style="width: 620px;">
<p><img style="height: 50px; width: 251px;" src="https://assets.ezyhaul.com/images/logo.png" alt="" /></p>
<p><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></p>
<p>Dear Carrier,</p>
<p>Please note that 1 or more of your {{MandatoryDocumentType}} compliance documents expires on {{Date}}.</p>
<p>Please log into <a href="https://demo-carrier.ezyhaul.com/login">CAW</a> and update. Failure to do so before your existing documents expire may prevent you from accepting any further jobs after the expiry date.</p>
<p><strong>Questions? </strong><br/>
If you require any further assistance, please contact your Digihaul Carrier Manager via support@ezyhaul.com.</p>
<p>Best regards, <br />Carrier Management Team</p>
</div>
<div><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></div>',
 'Compliance Document Expiry','Send Compilance Email When Document Expire',0,'99999999-9999-9999-9999-999999999999',
 GETDATE(),'99999999-9999-9999-9999-999999999999',GETDATE(),
 '','Carrier Compliance Notification','Carrier Compliance Notification')

 insert into [EmailTemplates] ([TenantId] ,[TenantCountryId] ,[TemplateName] ,[TemplateType] 
 ,[TemplateContent]
 ,[TemplateSubject] ,[Description] ,[IsDeleted] ,[CreatedBy] ,[CreatedAt] ,[UpdatedBy] ,[UpdatedAt]
 ,[SendTo] ,[Topic] ,[Trigger])
 Values( @tenantId, @tenantCountryId_IN, 'Carrier Compliance Notification', 'Email',
 '<div style="width: 620px;">
<p><img style="height: 50px; width: 251px;" src="https://assets.ezyhaul.com/images/logo.png" alt="" /></p>
<p><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></p>
<p>Dear Carrier,</p>
<p>Please note that 1 or more of your {{MandatoryDocumentType}} compliance documents expires on {{Date}}.</p>
<p>Please log into <a href="https://demo-carrier.ezyhaul.com/login">CAW</a> and update. Failure to do so before your existing documents expire may prevent you from accepting any further jobs after the expiry date.</p>
<p><strong>Questions? </strong><br/>
If you require any further assistance, please contact your Digihaul Carrier Manager via support@ezyhaul.com.</p>
<p>Best regards, <br />Carrier Management Team</p>
</div>
<div><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></div>',
 'Compliance Document Expiry','Send Compilance Email When Document Expire',0,'99999999-9999-9999-9999-999999999999',
 GETDATE(),'99999999-9999-9999-9999-999999999999',GETDATE(),
 '','Carrier Compliance Notification','Carrier Compliance Notification')

 insert into [EmailTemplates] ([TenantId] ,[TenantCountryId] ,[TemplateName] ,[TemplateType] 
 ,[TemplateContent]
 ,[TemplateSubject] ,[Description] ,[IsDeleted] ,[CreatedBy] ,[CreatedAt] ,[UpdatedBy] ,[UpdatedAt]
 ,[SendTo] ,[Topic] ,[Trigger])
 Values( @tenantId, @tenantCountryId_PH, 'Carrier Compliance Notification', 'Email',
 '<div style="width: 620px;">
<p><img style="height: 50px; width: 251px;" src="https://assets.ezyhaul.com/images/logo.png" alt="" /></p>
<p><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></p>
<p>Dear Carrier,</p>
<p>Please note that 1 or more of your {{MandatoryDocumentType}} compliance documents expires on {{Date}}.</p>
<p>Please log into <a href="https://demo-carrier.ezyhaul.com/login">CAW</a> and update. Failure to do so before your existing documents expire may prevent you from accepting any further jobs after the expiry date.</p>
<p><strong>Questions? </strong><br/>
If you require any further assistance, please contact your Digihaul Carrier Manager via support@ezyhaul.com.</p>
<p>Best regards, <br />Carrier Management Team</p>
</div>
<div><img style="height: 4px; width: 576px;" src="https://assets.ezyhaul.com/images/line.png" alt="" /></div>',
 'Compliance Document Expiry','Send Compilance Email When Document Expire',0,'99999999-9999-9999-9999-999999999999',
 GETDATE(),'99999999-9999-9999-9999-999999999999',GETDATE(),
 '','Carrier Compliance Notification','Carrier Compliance Notification') 