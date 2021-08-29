.class Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$1;
.super Landroid/database/ContentObserver;
.source "MdecEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceNameObserver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method
