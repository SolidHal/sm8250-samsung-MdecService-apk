.class public Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;
.super Ljava/lang/Object;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NmsServer"
.end annotation


# static fields
.field public static NMS_LOG_SERVER_URL_POSTFIX_V1:Ljava/lang/String; = ":443/nms/v1/logstore/"

.field public static NMS_LOG_SERVER_URL_POSTFIX_V2:Ljava/lang/String; = ":443/nms/v2/logstore/"

.field public static NMS_MSG_SERVER_URL_POSTFIX_V1:Ljava/lang/String; = ":443/nms/v1/msgstore/"

.field public static NMS_MSG_SERVER_URL_POSTFIX_V2:Ljava/lang/String; = ":443/nms/v2/msgstore/"

.field public static final NMS_SERVER_PORT:Ljava/lang/String; = "443"

.field public static final NMS_SERVER_USERID_PREFIX:Ljava/lang/String; = "box:"

.field public static NMS_SSE_MSG_POSTFIX:Ljava/lang/String; = ":443/nms/v1/ssemsg/"

.field public static NMS_SSE_POSTFIX:Ljava/lang/String; = "/sse"

.field public static final PUSH_TYPE:Ljava/lang/String; = "GCM"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
