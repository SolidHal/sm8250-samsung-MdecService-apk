.class public interface abstract Lcom/samsung/accessory/api/ISAServiceConnectionCallback;
.super Ljava/lang/Object;
.source "ISAServiceConnectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionLost(Landroid/os/Bundle;)V
.end method

.method public abstract onConnectionResponse(Landroid/os/Bundle;)V
.end method
