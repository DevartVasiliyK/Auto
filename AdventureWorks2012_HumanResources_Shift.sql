CREATE TABLE AdventureWorks2012.HumanResources.Shift (
  ShiftID TINYINT IDENTITY,
  Name dbo.Name NOT NULL,
  StartTime TIME NOT NULL,
  EndTime TIME NOT NULL,
  ModifiedDate DATETIME NOT NULL CONSTRAINT DF_Shift_ModifiedDate DEFAULT (GETDATE()),
  CONSTRAINT PK_Shift_ShiftID PRIMARY KEY CLUSTERED (ShiftID)
) ON [PRIMARY]
GO

CREATE UNIQUE INDEX AK_Shift_Name
ON AdventureWorks2012.HumanResources.Shift (Name)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX AK_Shift_StartTime_EndTime
ON AdventureWorks2012.HumanResources.Shift (StartTime, EndTime)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Work shift lookup table.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Primary key for Shift records.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'COLUMN',
                                N'ShiftID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Shift description.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'COLUMN',
                                N'Name'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Shift start time.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'COLUMN',
                                N'StartTime'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Shift end time.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'COLUMN',
                                N'EndTime'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Date and time the record was last updated.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'COLUMN',
                                N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Unique nonclustered index.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'INDEX',
                                N'AK_Shift_Name'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Unique nonclustered index.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'INDEX',
                                N'AK_Shift_StartTime_EndTime'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Clustered index created by a primary key constraint.',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'INDEX',
                                N'PK_Shift_ShiftID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Primary key (clustered) constraint',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'CONSTRAINT',
                                N'PK_Shift_ShiftID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Default constraint value of GETDATE()',
                                'SCHEMA',
                                N'HumanResources',
                                'TABLE',
                                N'Shift',
                                'CONSTRAINT',
                                N'DF_Shift_ModifiedDate'
GO