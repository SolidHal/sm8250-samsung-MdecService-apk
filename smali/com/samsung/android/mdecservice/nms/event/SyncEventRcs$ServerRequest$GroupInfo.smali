.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$ServerRequest$GroupInfo;
.super Ljava/lang/Object;
.source "SyncEventRcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupInfo"
.end annotation


# static fields
.field public static final BULK_POST_REQUEST:Ljava/lang/String; = "BulkPostGroupInfoRequest"

.field public static final BULK_UPDATE_REQUEST:Ljava/lang/String; = "BulkUpdateGroupInfoRequest"

.field public static final POST_REQUEST:Ljava/lang/String; = "PostGroupInfoRequest"

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "UpdateGroupInfoRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
