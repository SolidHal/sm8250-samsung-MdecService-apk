.class public interface abstract Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
.super Ljava/lang/Object;
.source "ISAFTManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z
.end method

.method public abstract sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract sendCommandV2(Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/os/Bundle;
.end method
