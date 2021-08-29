.class public Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.super Ljava/lang/Object;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$KEY;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CallLogConstant;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$ContactStatus;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RCS_COLUMNS;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$PayloadStatus;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Status;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Property;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Settings;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$msgUpdateType;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$DB;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIMSLOT_COUNT:I = 0x2

.field public static final MAX_BROADCAST_TO_MSGAPP_RETRY_COUNT:I = 0x3

.field public static final MAX_BULK_POST_MMS_COUNT:I = 0x14

.field public static final MAX_BULK_POST_RCS_COUNT:I = 0x14

.field public static final MAX_BULK_POST_SMS_COUNT:I = 0x64

.field public static final MAX_WAKELOCK_TIMEOUT_MMSONRELAY:I = 0x4e20

.field public static final MAX_WAKELOCK_TIMEOUT_SMSONRELAY:I = 0x2710

.field public static final SEM_MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field public static final isQosAndLess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
