.class public Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$DB;
.super Ljava/lang/Object;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB"
.end annotation


# static fields
.field public static final CALLLOG_READ_STATUS:Ljava/lang/String; = "0"

.field public static final CALLLOG_UNREAD_STATUS:Ljava/lang/String; = "1"

.field public static final MDC_APP_ID:Ljava/lang/String; = "9655"

.field public static final MESSAGE_BOX_TYPE_FAIL:I = 0x65

.field public static final MESSAGE_BOX_TYPE_INBOX:I = 0x64

.field public static final MESSAGE_BOX_TYPE_SENT:I = 0x66

.field public static final MESSAGE_BOX_TYPE_UNKNOW:I = -0x1

.field public static final MESSAGE_TYPE_MMS:I = 0xc

.field public static final MESSAGE_TYPE_SMS:I = 0xa

.field public static final MSG_PROVIDER_RELAY_CREATOR_O:Ljava/lang/String; = "com.samsung.android.gearoplugin"

.field public static final MSG_RPOVIDER_RELAY_CREATOR_G:Ljava/lang/String; = "com.samsung.android.geargplugin"

.field public static final READ_STATUS:Ljava/lang/String; = "1"

.field public static final REQUEST_APP_ID_ANDROID:I = 0x25b2

.field public static final REQUEST_APP_ID_WATCH:I = 0x25b7

.field public static final TYPE_RECEIVED:Ljava/lang/String; = "1"

.field public static final TYPE_SEND:Ljava/lang/String; = "2"

.field public static final UNREAD_STATUS:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
