.class public Lcom/samsung/android/mdecservice/nms/event/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;
    }
.end annotation


# instance fields
.field public mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

.field public mCorrelationId:Ljava/lang/String;

.field public mCorrelationTag:Ljava/lang/String;

.field public final mErrorCode:I

.field public final mFailureReason:I

.field public mReqBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADDandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const/16 v0, 0x2bc

    .line 4
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v0, 0x12c

    .line 5
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 16
    invoke-virtual {p2}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mReqBundle:Landroid/os/Bundle;

    .line 17
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 p1, 0x12c

    .line 18
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const/16 v0, 0xc8

    .line 9
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    const-string v0, "correlation_id"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationId:Ljava/lang/String;

    const-string v0, "correlation_tag"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 21
    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mReqBundle:Landroid/os/Bundle;

    const/16 p1, 0x2bd

    .line 22
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    .line 23
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;II)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 26
    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mReqBundle:Landroid/os/Bundle;

    .line 27
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    .line 28
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 32
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    .line 33
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    .line 34
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationTag:Ljava/lang/String;

    return-void
.end method
