.class public Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;
.super Ljava/lang/Object;
.source "EntitlementContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DeviceInformation;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$RollbackActiveServices;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;,
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mdecservice.entitlementprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATE_DEFAULT_ACS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS defaultAcs(_id INTEGER PRIMARY KEY AUTOINCREMENT,DEFAULT_ACS TEXT);"

.field public static final CREATE_DEVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,AUTH_UID TEXT,LINE_ID TEXT,DEVICE_ID TEXT,ACCOUNT_TYPE TEXT,MODEL_NUMBER TEXT,DEVICE_NAME TEXT,DEVICE_ACTIVE INTEGER,DEVICE_APPLICATION_DATA TEXT,DEVICE_DEVICE_DATA TEXT,DEVICE_PUSH_TYPE TEXT,DEVICE_PUSH_TOKEN TEXT,DEVICE_TYPE TEXT,ACTIVE_SERVICES TEXT,LINE_OWNER_DEVICE_ID TEXT,DEVICE_PD_MSISDN TEXT,CMC_VERSION TEXT,IS_LINE_OWNER INTEGER)"

.field public static final CREATE_DEVICE_INFORMATION:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS deviceInformation(_id INTEGER PRIMARY KEY AUTOINCREMENT,WIFI_MAC TEXT);"

.field public static final CREATE_FCM_PUSH_TOKEN:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS fcm(_id INTEGER PRIMARY KEY AUTOINCREMENT,FCM_PUSH_TOKEN TEXT);"

.field public static final CREATE_GLOBAL_SETTINGS_DATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS globalSettingsData(_id INTEGER PRIMARY KEY AUTOINCREMENT,CMC_DEVICE_ID TEXT,CMC_OOBE_HISTORY TEXT,CMC_LINES TEXT,CMC_DEVICES TEXT);"

.field public static final CREATE_LINES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS lines(_id INTEGER PRIMARY KEY AUTOINCREMENT,IMPU TEXT,LINE_ID TEXT,LINE_NAME TEXT,OWNER_DEVICE_ID TEXT,OWNER_USER_ID TEXT,LINE_ACTIVE INTEGER,MSISDN TEXT,MODIFIED_AT TEXT)"

.field public static final CREATE_PROVISIONED_DEVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS provisioned_devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,AUTH_UID TEXT,LINE_ID TEXT,DEVICE_ID TEXT,ACCOUNT_TYPE TEXT,MODEL_NUMBER TEXT,DEVICE_NAME TEXT,DEVICE_ACTIVE INTEGER,DEVICE_APPLICATION_DATA TEXT,DEVICE_DEVICE_DATA TEXT,DEVICE_PUSH_TYPE TEXT,DEVICE_PUSH_TOKEN TEXT,DEVICE_TYPE TEXT,DEVICE_ACTIVE_SERVICES TEXT,LINE_OWNER_DEVICE_ID TEXT,DEVICE_PD_MSISDN TEXT,CMC_VERSION TEXT,IS_LINE_OWNER INTEGER)"

.field public static final CREATE_ROLLBACK_ACTIVE_SERVICES:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS rollbackActiveServices(_id INTEGER PRIMARY KEY AUTOINCREMENT,DEVICE_ID TEXT,ACTIVE_SERVICES TEXT);"

.field public static final CREATE_SA_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sainfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,USER_ID TEXT,ACCESS_TOKEN TEXT,API_SERVER_URL TEXT,MCC TEXT,REGION_MCC TEXT);"

.field public static final CREATE_SERVICE_MULTI_SERVERS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS multiservers(_id INTEGER PRIMARY KEY AUTOINCREMENT,LINE_ID TEXT,NMS_URI TEXT,PCSCF_URI TEXT);"

.field public static final CREATE_SERVICE_SINGLE_SERVERS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS singleservers(_id INTEGER PRIMARY KEY AUTOINCREMENT,LOCAL_ACS_URI TEXT,ES_URI TEXT);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "samsung_mdec_service.db"

.field public static final DATABASE_VERSION:I = 0x1f

.field public static final DEFAULTACS:I = 0x6

.field public static final DEVICEINFORMATION:I = 0x8

.field public static final DEVICES:I = 0x1

.field public static final FCMS:I = 0x4

.field public static final GLOBALSETTINGSDATA:I = 0x9

.field public static final LINES:I = 0x0

.field public static final MULTISERVERS:I = 0x3

.field public static final PROVISIONED_DEVICES:I = 0xa

.field public static final ROLLBACKACTIVESERVICES:I = 0x7

.field public static final SAINFO:I = 0x5

.field public static final SINGLESERVERS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mdecservice.entitlementprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
