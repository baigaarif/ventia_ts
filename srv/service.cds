using  {
    ventia_ts.db as mytime,
    
} from '../db/schema';

service getWorkingTime @(path : '/odata/TimeData') {

 
entity Attachments as projection on mytime.Attachments;


entity WorkingTime as projection on mytime.WorkingTime {
   *, AttachmentItems : redirected TO Attachments
};

    

}