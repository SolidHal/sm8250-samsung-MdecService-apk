.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$DbRequest;
.super Ljava/lang/Object;
.source "SyncEventBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DbRequest"
.end annotation


# static fields
.field public static final DELETE_REQUEST:Ljava/lang/String; = "DeleteRequest"

.field public static final INSERT_REQUEST:Ljava/lang/String; = "InsertRequest"

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "UpdateRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
