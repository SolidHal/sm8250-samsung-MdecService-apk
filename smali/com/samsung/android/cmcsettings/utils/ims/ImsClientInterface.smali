.class public interface abstract Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface;
.super Ljava/lang/Object;
.source "ImsClientInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;
    }
.end annotation


# virtual methods
.method public abstract getMSISDN()Ljava/lang/String;
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract setImsClientListener(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;)V
.end method
