namespace ventia_ts.db;

using {managed} from '@sap/cds/common';

entity WorkingTime : managed {
    key PERNR          : Integer;
    key BEGDA          : Date;
    key ENDDA          : Date;
    key ATTENDANCETYPE : String(50);
    key WORKASSIGNMENT : String(100);
     TimeIn         : Time;
     TimeOut        : Time;
        Status         : String(10);
        HoursWorked    : Integer;
        HasAllowance   : Boolean;
        HasAttachment  : Boolean;
        HasComment     : Boolean;
        AttachmentItems : Association to many Attachments on AttachmentItems.ID = $self;
        HasAllowanceItems : Integer;

}


entity Attachments {
key ID : Association to WorkingTime;
key NUMBER : Integer;
DocType : String;
}

entity Allowance { 
 key ID : Association to WorkingTime;   
 key CODE :Integer;
 Desc : String(100);
 CostObject: String (50);
 IsBillable: Boolean;
 IsHDA : Boolean;
 Quantity : Integer;
 Unit : String(10);

}


