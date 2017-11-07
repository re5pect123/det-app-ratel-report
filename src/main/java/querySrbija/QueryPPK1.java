package querySrbija;

public class QueryPPK1 {
// A)  Ukupan broj svih poziva sa errorom iz klase 500 bez onnet poziva = 81964

    public static String A
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT origSiteId, termSiteId, duration, disconnectReason FROM billing_record.billing_records_teles_2016_01\n"
            /*            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where (origSiteId like 'ikom.detel.rs' or termSiteId like 'ikom.detel.rs') and termSiteId<>origSiteId and duration=0 and disconnectReason >= 500;";

//B)  Ukupan broj onnet poziva sa errorom iz klase 500 = 80973
    public static String B
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT termSiteId,origSiteId, disconnectReason, duration ,direction FROM billing_record.billing_records_teles_2016_01\n"
            /*    + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_02\n"
           + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT * FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where termSiteId=origSiteId='ikom.detel.rs' and duration=0 and disconnectReason >= 500 and direction='E';";

    //C)  Ukupan broj svih poziva bez onnet poziva = 9465260
    public static String C
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_01\n"
            /* + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where (origSiteId ='ikom.detel.rs' or termSiteId ='ikom.detel.rs') and termSiteId<>origSiteId;";

    //D)  Ukupan broj svih onnet poziva = 4567896
    public static String D
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_01\n"
            /*    + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId, termSiteId, direction FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where  termSiteId=origSiteId='ikom.detel.rs' and direction='E';";
//E)  Ukupan broj poziva prema mobilnoj mrezi = 1121820

    public static String E
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_01\n"
            /* + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis like '3816%';";

    //F)  Ukupan broj poziva prema mobilnim mrezama sa errorom iz klase 500 = 11911
    public static String F
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_01\n"
            /*   + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, duration FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis like '3816%' and duration=0 and disconnectReason >= 500;";
    //G)  Ukupan broj poziva prema fiknim mrezama = 3860054
    public static String G = "select COUNT(*) broj from(\n"
            + "SELECT origSiteId,dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_01\n"
            /*   + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT origSiteId, dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT origSiteId,dnis, direction, termSiteId FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis like '381%' and dnis not like '3816%' and direction ='E' and termSiteId <>'ikom.detel.rs';";
//H)  Ukupan broj poziva prema fisknim mrezama sa errorom iz klase 500 = 74800
    public static String H
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_01\n"
            /*  + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT termSiteId, disconnectReason, origSiteId,dnis, duration, direction FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis like '381%' and dnis not like '3816%' and duration=0 and disconnectReason >= 500 and direction='E' and termSiteId <>'ikom.detel.rs';";
    //I)  Ukupan broj ino poziva = 111218
    public static String I
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_01\n"
            /*    + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis not like '381%' and direction='E' and dnis rlike '[0-9].*';";

    //J)  Ukupan broj ino poziva sa errorom iz klase 500 = 2096
    public static String J
            = "select COUNT(disconnectReason) broj from(\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_01\n"
            /*  + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_02\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_03\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_04\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_05\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_06\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_07\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_08\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_09\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_10\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_11\n"
            + "union all\n"
            + "SELECT disconnectReason, origSiteId,dnis, direction, duration FROM billing_record.billing_records_teles_2016_12\n"*/
            + ")as foo\n"
            + "where origSiteId ='ikom.detel.rs' and dnis not like '381%' and duration=0 and disconnectReason >= 500 and direction='E' and dnis rlike '[0-9].*';";
}
