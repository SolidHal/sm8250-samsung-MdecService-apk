.class public interface abstract Lcom/samsung/accessory/api/ISAMexCallback;
.super Ljava/lang/Object;
.source "ISAMexCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAMexCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onSent(Landroid/os/Bundle;)V
.end method
