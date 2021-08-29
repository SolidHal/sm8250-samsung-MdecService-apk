.class public interface abstract Lcom/samsung/accessory/api/ISAPeerAgentCallback;
.super Ljava/lang/Object;
.source "ISAPeerAgentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPeerAgentUpdated(Landroid/os/Bundle;)V
.end method

.method public abstract onPeerAgentsFound(Landroid/os/Bundle;)V
.end method
