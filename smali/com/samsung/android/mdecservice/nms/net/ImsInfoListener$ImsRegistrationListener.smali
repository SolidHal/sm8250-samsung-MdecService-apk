.class public interface abstract Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;
.super Ljava/lang/Object;
.source "ImsInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImsRegistrationListener"
.end annotation


# virtual methods
.method public abstract onDeregistered(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract onRegistered(Lcom/sec/ims/ImsRegistration;)V
.end method
