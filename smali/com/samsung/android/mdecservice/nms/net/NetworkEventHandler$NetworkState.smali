.class public Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;
.super Ljava/lang/Object;
.source "NetworkEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkState"
.end annotation


# instance fields
.field private mDataNetworkType:I

.field private mDataRegState:I

.field private mSimSlot:I

.field private mSubId:I

.field private mVoiceRegState:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSimSlot:I

    .line 3
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSubId:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataNetworkType:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataRegState:I

    .line 6
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mVoiceRegState:I

    return-void
.end method


# virtual methods
.method public getDataNetworkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataNetworkType:I

    return v0
.end method

.method public getDataRegState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataRegState:I

    return v0
.end method

.method public getSimSlot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSimSlot:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSubId:I

    return v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mVoiceRegState:I

    return v0
.end method

.method public setDataNetworkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataNetworkType:I

    return-void
.end method

.method public setDataRegState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mDataRegState:I

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSimSlot:I

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mSubId:I

    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->mVoiceRegState:I

    return-void
.end method
