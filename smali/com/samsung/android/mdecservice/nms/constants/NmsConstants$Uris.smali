.class public Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;
.super Ljava/lang/Object;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uris"
.end annotation


# static fields
.field public static final AIRPLANE_MODE_ON:Landroid/net/Uri;

.field public static final CALLLOG_URI:Landroid/net/Uri;

.field public static final CALL_URI:Landroid/net/Uri;

.field public static final CMAS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static final CMC_NETWORK_TYPE:Landroid/net/Uri;

.field public static final CONTACT_URI:Landroid/net/Uri;

.field public static final CONVERSATION_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static final FT_URI:Landroid/net/Uri;

.field public static final GROUPS_URI:Landroid/net/Uri;

.field public static final IM_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

.field public static final IM_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

.field public static final IM_URI:Landroid/net/Uri;

.field public static final MMS_ADDR_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static final MMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

.field public static final MMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

.field public static final MMS_SMS_URI:Landroid/net/Uri;

.field public static final MMS_URI:Landroid/net/Uri;

.field public static final MSG_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static final MSG_PROCESSING_RESTORE:Landroid/net/Uri;

.field public static final PARTS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static final RCS_COMMON_MESSAGE_URI:Ljava/lang/String; = "content://rcs/messages"

.field public static final RCS_FT_URI:Ljava/lang/String; = "content://im/ft"

.field public static final RCS_GROUPS_URI:Ljava/lang/String; = "content://rcs/groups"

.field public static final RCS_IM_URI:Ljava/lang/String; = "content://im/chat"

.field public static final RCS_MESSAGES_URI:Landroid/net/Uri;

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

.field public static final SMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

.field public static final SMS_STATUS_URI:Landroid/net/Uri;

.field public static final SMS_URI:Landroid/net/Uri;

.field public static final WAP_MESSAGE_URI:Landroid/net/Uri;

.field public static final WPM_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field public static messageProviderMMSURI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static messageProviderSMSURI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://sms"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_SMS_URI:Landroid/net/Uri;

    const-string v0, "content://mms"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_URI:Landroid/net/Uri;

    const-string v0, "content://call_log"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALL_URI:Landroid/net/Uri;

    const-string v0, "content://im/chat"

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->IM_URI:Landroid/net/Uri;

    const-string v0, "content://im/ft"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->FT_URI:Landroid/net/Uri;

    const-string v0, "content://rcs/groups"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->GROUPS_URI:Landroid/net/Uri;

    const-string v0, "content://rcs/messages"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->RCS_MESSAGES_URI:Landroid/net/Uri;

    const-string v0, "content://logs/call"

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/processing-restoremsg"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MSG_PROCESSING_RESTORE:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearO/sms"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearO/mms"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearO/im"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->IM_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearG/sms"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearG/mms"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

    const-string v0, "content://messageProvider.GearG/im"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->IM_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

    const-string v0, "content://sms/status"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_STATUS_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/wap-push-messages"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->WAP_MESSAGE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/net/Uri;

    .line 20
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->SMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->messageProviderSMSURI:Ljava/util/List;

    new-array v0, v0, [Landroid/net/Uri;

    .line 21
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_MESSAGE_PROVIDER_GEARO_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_MESSAGE_PROVIDER_GEARG_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->messageProviderMMSURI:Ljava/util/List;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/messages"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MSG_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/wpm"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->WPM_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/cmas"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CMAS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/parts"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->PARTS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/mms_addr"

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_ADDR_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.messaging.service.provider.MessageContentProvider/conversations"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONVERSATION_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://settings/global/cmc_network_type"

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CMC_NETWORK_TYPE:Landroid/net/Uri;

    const-string v0, "content://settings/global/airplane_mode_on"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->AIRPLANE_MODE_ON:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
