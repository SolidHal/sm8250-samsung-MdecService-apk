.class Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;
.super Ljava/lang/Object;
.source "SAMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageCallbackRunnable"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mIsMessage:Z

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
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mMessageRef:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mBundle:Landroid/os/Bundle;

    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mIsMessage:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mMessageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run(): SAMessage referecnce is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mIsMessage:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mBundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$200(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;->mBundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$300(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
