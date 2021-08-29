.class public interface abstract Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
.super Ljava/lang/Object;
.source "ISAFrameworkManagerV2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;
    }
.end annotation


# virtual methods
.method public abstract acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;
.end method

.method public abstract authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
.end method

.method public abstract cleanupAgent(JLjava/lang/String;)V
.end method

.method public abstract closeServiceConnection(JLjava/lang/String;)I
.end method

.method public abstract findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
.end method

.method public abstract getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getClientCallback(J)Landroid/os/ResultReceiver;
.end method

.method public abstract getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getNetworkConnectionType()I
.end method

.method public abstract isSocketConnected(JLjava/lang/String;)Z
.end method

.method public abstract makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;
.end method

.method public abstract registerComponent(J[B)V
.end method

.method public abstract registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
.end method

.method public abstract rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
.end method

.method public abstract requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
.end method

.method public abstract send(JLjava/lang/String;J[BZIII)I
.end method

.method public abstract sendCompressed(JLjava/lang/String;J[BZIII)I
.end method

.method public abstract sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIIII)I
.end method

.method public abstract sendMessageDeliveryStatus(JJII)V
.end method

.method public abstract sendUncompressed(JLjava/lang/String;J[BZIII)I
.end method

.method public abstract setNetworkConnectionType(JILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I
.end method

.method public abstract tearFrameworkConnection(J)I
.end method

.method public abstract unregisterMexCallback(JLjava/lang/String;)V
.end method
