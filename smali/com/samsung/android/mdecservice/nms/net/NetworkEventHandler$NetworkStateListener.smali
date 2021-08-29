.class public interface abstract Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;
.super Ljava/lang/Object;
.source "NetworkEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStateListener"
.end annotation


# virtual methods
.method public abstract onDataConnectionStateChanged(IZ)V
.end method

.method public abstract onWifiConnected()V
.end method

.method public abstract onWifiDisconnected()V
.end method
