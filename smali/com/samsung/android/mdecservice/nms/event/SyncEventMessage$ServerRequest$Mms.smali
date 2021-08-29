.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$ServerRequest$Mms;
.super Ljava/lang/Object;
.source "SyncEventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mms"
.end annotation


# static fields
.field public static final BULK_POST_REQUEST:Ljava/lang/String; = "BulkPostMmsRequest"

.field public static final DELETE_REQUEST:Ljava/lang/String; = "DeleteMmsRequest"

.field public static final GET_PAYLOAD_REQUEST:Ljava/lang/String; = "GetMmsPayloadRequest"

.field public static final POST_NOTI_REQUEST:Ljava/lang/String; = "PostMmsNotiRequest"

.field public static final POST_REQUEST:Ljava/lang/String; = "PostMmsRequest"

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "UpdateMmsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
