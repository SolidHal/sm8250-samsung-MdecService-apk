.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$ServerRequest$Subscription;
.super Ljava/lang/Object;
.source "SyncEventBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscription"
.end annotation


# static fields
.field public static final DELETE_REQUEST:Ljava/lang/String; = "DeleteSubRequest"

.field public static final SUBSCRIBE_REQUEST:Ljava/lang/String; = "SubscribeRequest"

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "SubscribeUpdateRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
