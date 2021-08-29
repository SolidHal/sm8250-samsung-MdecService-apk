.class public final Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;
.super Ljava/lang/Object;
.source "NmsProviderConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$JsonData;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$ImBufferDbCommonModifiable;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBCif;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBContact;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBRCS;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBCallLog;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBMMSpart;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBMMSaddr;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBMMSpdu;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBSMS;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$BufferDBExtensionBase;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$DataTypes;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$JsonParamTags;,
        Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$ApplicationTypes;
    }
.end annotation


# static fields
.field public static final ALL_MESSAGES:I = 0xb

.field public static final ALL_MMSPDU:I = 0x20

.field public static final ALL_MMS_SMS:I = 0x21

.field public static final ALL_RCS:I = 0x2d

.field public static final ALL_SMS:I = 0x1f

.field public static final CALL_LOG:I = 0x3

.field public static final CHAT_BOT_INFO:I = 0x31

.field public static final CONTENTPRDR_ALL_MESSAGES:Ljava/lang/String; = "allmessages"

.field public static final CONTENTPRDR_ALL_MMSPDUMESSAGE:Ljava/lang/String; = "allmmspdumessage"

.field public static final CONTENTPRDR_ALL_RCSMESSAGE:Ljava/lang/String; = "allrcsmessage"

.field public static final CONTENTPRDR_ALL_SMSMESSAGES:Ljava/lang/String; = "allsmsmessages"

.field public static final CONTENTPRDR_CALLLOG:Ljava/lang/String; = "calllog"

.field public static final CONTENTPRDR_CHAT_BOT_INFO:Ljava/lang/String; = "chatbotinfo"

.field public static final CONTENTPRDR_LATESTMESSAGE:Ljava/lang/String; = "latestmessage"

.field public static final CONTENTPRDR_MMS_MESSAGE:Ljava/lang/String; = "mmsmessage"

.field public static final CONTENTPRDR_MMS_PARTS_FILE:Ljava/lang/String; = "mmspartfile"

.field public static final CONTENTPRDR_MMS_PARTS_MESSAGE:Ljava/lang/String; = "mmspartmessage"

.field public static final CONTENTPRDR_RCS_CONTACT:Ljava/lang/String; = "rcscontact"

.field public static final CONTENTPRDR_RCS_FILE:Ljava/lang/String; = "rcsfile"

.field public static final CONTENTPRDR_RCS_GROUPS:Ljava/lang/String; = "rcsgroups"

.field public static final CONTENTPRDR_RCS_MESSAGE:Ljava/lang/String; = "rcsmessage"

.field public static final CONTENTPRDR_RCS_MESSAGES_COMMON:Ljava/lang/String; = "rcscommon"

.field public static final CONTENTPRDR_RCS_MESSAGES_CONVERSATIONS:Ljava/lang/String; = "rcsmessages-conversations"

.field public static final CONTENTPRDR_SMSMESSAGES:Ljava/lang/String; = "smsmessages"

.field public static final CONTENTPRDR_SMSMESSAGES_CONVERSATIONS:Ljava/lang/String; = "smsmessages-conversations"

.field public static final CONTENTPRDR_SMS_MMS_WPM_MESSAGES:Ljava/lang/String; = "smsmmswpmmessages"

.field public static final CONTENTPRDR_WAP_MESSAGES:Ljava/lang/String; = "wapmessages"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTETNPRDR_ALL_MMS_SMS:Ljava/lang/String; = "allmmssms"

.field public static final CONTETNPRDR_MMS_MESSAGE_CONVERSATIONS:Ljava/lang/String; = "mmsmessages-conversations"

.field public static final LATEST_MESSAGE:I = 0x22

.field public static final MMS_MESSAGES:I = 0x4

.field public static final MMS_MESSAGES_CONVERSATIONS:I = 0x5

.field public static final MMS_MESSAGES_ID:I = 0x9

.field public static final MMS_PARTS_FILE:I = 0xe

.field public static final MMS_PARTS_FILE_ID:I = 0xf

.field public static final MMS_PARTS_MESSAGE:I = 0xc

.field public static final MMS_PARTS_MESSAGE_ID:I = 0xd

.field public static final NONE:I = -0x1

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice.nms.NmsProvider"

.field public static final RCS_ADDR_MESSAGES:I = 0x2a

.field public static final RCS_CONTACT:I = 0x2f

.field public static final RCS_FILES:I = 0x2c

.field public static final RCS_GROUPS:I = 0x30

.field public static final RCS_MESSAGES:I = 0x28

.field public static final RCS_MESSAGES_COMMON:I = 0x2e

.field public static final RCS_MESSAGES_CONVERSATIONS:I = 0x29

.field public static final RCS_PART_MESSAGES:I = 0x2b

.field public static final SMS_MESSAGES:I = 0x1

.field public static final SMS_MESSAGES_CONVERSATIONS:I = 0x2

.field public static final SMS_MESSAGES_ID:I = 0x8

.field public static final SMS_MMS_WPM_MESSAGES:I = 0x7

.field public static final WAP_MESSAGES:I = 0x6

.field public static final WAP_MESSAGES_ID:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mdecservice.nms.NmsProvider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
