.class Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;
.super Lcom/samsung/accessory/api/ISAMexCallback$Stub;
.source "SAMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MexCallback"
.end annotation


# instance fields
.field private mMessageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/accessory/SAMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAMexCallback$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;->mMessageRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;->mMessageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMessageReceived(): SAMessage referecnce is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->postAsynch(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;->mMessageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMessageReceived(): SAMessage referecnce is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$400(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    return-void
.end method
