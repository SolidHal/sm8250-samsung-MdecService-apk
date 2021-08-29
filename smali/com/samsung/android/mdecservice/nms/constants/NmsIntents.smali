.class public Lcom/samsung/android/mdecservice/nms/constants/NmsIntents;
.super Ljava/lang/Object;
.source "NmsIntents.java"


# static fields
.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final INTENT_CMC_MSG_SETTING_RECEIVED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_MSG_SETTING_RECEIVED"

.field public static final INTENT_CMC_PAYLOAD_PROGRESS:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_PAYLOAD_PROGRESS"

.field public static final INTENT_CMC_PUSH_RECEIVED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_PUSH_RECEIVED"

.field public static final INTENT_CMC_SEND_RCS:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_SEND_RCS"

.field public static final INTENT_NMS_SMS_SENT:Ljava/lang/String; = "com.samsung.android.mdecservice.SMS_SENT"

.field public static final PERMISSION_SEM_CMC_PUSH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.mdecservice.nms.CMC_PUSH_PERMISSION"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.mdecservice.nms.SEM_CMC_PUSH"

    :goto_0
    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsIntents;->PERMISSION_SEM_CMC_PUSH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
