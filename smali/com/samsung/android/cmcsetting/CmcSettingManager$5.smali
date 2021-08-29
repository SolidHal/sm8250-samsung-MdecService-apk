.class Lcom/samsung/android/cmcsetting/CmcSettingManager$5;
.super Landroid/database/ContentObserver;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkModeDbChangeObserver : selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Lcom/samsung/android/cmcsetting/CmcSettingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Lcom/samsung/android/cmcsetting/CmcSettingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/cmcsetting/CmcSettingListener;->onChangedNetworkMode()V

    :cond_0
    return-void
.end method
